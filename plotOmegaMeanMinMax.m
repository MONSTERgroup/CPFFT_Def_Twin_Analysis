%Takes the given CPFFTdata and plots a curve with shadow to show the mean,
%max, and min TRSS across the range of Omega region area

%% Load the simulation data

%Change this to the appropriate CPFFTdata object
simData = simData000_nopar_2015;
fname = 'SX_Nopar';

%% Preallocate the arrays for speed

simData_fullmean = NaN(7,50);
simData_fullmax = NaN(7,50);
simData_fullmin = NaN(7,50);

simData_mean = NaN(2,50);
simData_max = NaN(2,50);
simData_min = NaN(2,50);

%% Loop through radii and calculate values for all variants

step = 1;

for OmegaR = 1:50
    
   %Using the code from calcTRSStipMTEX
   
   analyze_individual = true;
   
   %Check if the simulation data has stress data
    if isempty(simData.stress)
        TRSSmean = NaN;
    end

    %define the magnesium crystal symmetry
     CS = crystalSymmetry.load('Mg-Magnesium');
     CS = CS.Laue; 

     %This is the orientation of grain 1
     o1 = orientation(0, 0, 0, 'Euler',CS);

     % I'm using a hard coded grain 2 orientation for now
     o2 = orientation(0*degree, 0*degree, 0*degree, 'Euler',CS);

     % Define the twinning system and symmetrise it
        % Note that the second number is a critical TRSS. You want to set it
        % high so that you don't actually get twinning predicted by MTEX. 
     sStwin = slipSystem.twinT1(CS,1000);
     sStwin = sStwin.symmetrise('antipodal');

     % Rotate the twin system into the correct grain orientation
     o2Twin = o2 * sStwin; 

    %Define the variables
    TRSStot = []; %Running total of TRSS values
    TRSStot_shell = [];
    TRSSn = 0; %Number of TRSS values taken
    TRSSn_s = 0;
    xcenter = 226; %X coordinate of center of Omega (twin tip)
    ycenter = 226; %Y coordinate of center of Omega (twin tip)

    % Turn the stress data into max TRSS values
    cauchy = zeros(3,3);
    TRSSvariants = zeros(1,6);
    TRSSvalues = NaN(length(simData.stress),length(simData.stress));
    activeVariant = NaN(length(simData.stress),length(simData.stress));

    for i = 1:length(simData.stress)
        for j = 1:length(simData.stress)
            if (sqrt((i-xcenter)^2 + (j-ycenter)^2) <= OmegaR) && ...
                (simData.grain_id(i,j) == 1)
                cauchy = simData.stress{i,j};
                TRSSvariants = RSS(o2Twin,stressTensor(cauchy));
                if analyze_individual
                    TRSStot(TRSSn+1,:) = max(TRSSvariants);
                    [~,activeVariant(i,j)] = max(max(TRSSvariants));
                else
                    [TRSSvalues(i,j),activeVariant(i,j)] = max(max(TRSSvariants));
    %               if TRSSvariants < 0
    %                 [TRSSvalues(i,j),activeVariant(i,j)] = min(min(TRSSvariants));
    %               end
                    TRSStot(TRSSn+1) = TRSSvalues(i,j);
                end
                if (sqrt((i-xcenter)^2 + (j-ycenter)^2) > OmegaR-1)
                    TRSStot_shell(TRSSn_s+1,:) = TRSStot(TRSSn+1,:);
                    TRSSn_s = TRSSn_s+1;
                end
                TRSSn = TRSSn + 1;
            end
        end
    end
    
    TRSSmean = mean(TRSStot,1);
    TRSSmax = max(TRSStot_shell,[],1);
    TRSSmin = min(TRSStot_shell,[],1);
    
    if ~isempty(TRSStot)
        step = numel(TRSStot)/6;
    end
    
    if isnan(TRSSmean)
        TRSSmean = NaN(1,6);
        TRSSmax = NaN(1,6);
        TRSSmin = NaN(1,6);
    end
    
    %Assign the individual values
    simData_fullmean(:,OmegaR) = [numel(TRSStot)/6; TRSSmean'];
    simData_fullmax(:,OmegaR) = [numel(TRSStot)/6; TRSSmax'];
    simData_fullmin(:,OmegaR) = [numel(TRSStot)/6; TRSSmin'];
    
  
end

%% Get the values for the most active variant

[~,active] = max(mean(simData_fullmean(2:7,:),2,'omitnan'));
simData_mean = [simData_fullmean(1,:); simData_fullmean(active+1,:)];
simData_max = [simData_fullmax(1,:); simData_fullmax(active+1,:)];
simData_min = [simData_fullmin(1,:); simData_fullmin(active+1,:)];

%% Plotting

figure
pmean = plot(simData_mean(1,:),simData_mean(2,:));
hold on
pmax = plot(simData_max(1,:),simData_max(2,:));
pmin = plot(simData_min(1,:),simData_min(2,:));
y1 = yline(20,'Color','#949494','LineWidth',1.5);
legend([pmean,pmax,pmin],{'Mean','Max','Min'})
ylabel('TRSS (MPa)')
xlabel('Omega Region Area')
xlim([0,3000])

v = [simData_min(1,:)' simData_min(2,:)'; fliplr(simData_max(1,:))' fliplr(simData_max(2,:))'];
f = 1:length(v);
figure
p1 = patch('Faces',f,'Vertices',v,'FaceColor','red','FaceAlpha',.3,'EdgeColor','none');
hold on
pmean = plot(simData_mean(1,:),simData_mean(2,:));
y1 = yline(20,'Color','#949494','LineWidth',1.5);
%legend([pmean,p1],{'Mean','Range'})
ylabel('TRSS (MPa)')
xlabel('Omega Region Area')
xlim([0,3000])
set(gcf, 'Color', 'w');
export_fig(['StressRange_' fname], '-m2', '-png')
