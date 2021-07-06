%Averages the TRSS values OF ALL TWIN VARIANTS over the region near the 
%twin tip in the secondary grain. Values within the particle, if present, 
%are excluded.

function [TRSSmean,TRSStot,activeVariant] = calcTRSStipMTEX(simData, OmegaR)

%BTA 4/22/21 - adding a temporary toggle here to switch how this functions.
%If analyze_individual = true, then TRSSmean and TRSStot are instead returned
%as a 1x6 array of all 6 twin variants. This allows for later analysis on a
%by-variant basis. If off, this returns the values associated with the
%active variant for that voxel.
analyze_individual = true;

%Check if the simulation data has stress data
if isempty(simData.stress)
    TRSSmean = NaN;
    return
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
TRSSn = 0; %Number of TRSS values taken
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
            TRSSn = TRSSn + 1;
        end
    end
end

% %Define the variables
% TRSStot = []; %Running total of TRSS values
% TRSSn = 0; %Number of TRSS values taken
% xcenter = 226; %X coordinate of center of Omega (twin tip)
% ycenter = 226; %Y coordinate of center of Omega (twin tip)
% 
% 
% %Pull the values from every point in Omega if they're in the secondary
% %grain
% for i = 1:length(simData.grain_id)
%     for j = 1:length(simData.grain_id)
%         if sqrt((i-xcenter)^2 + (j-ycenter)^2) <= OmegaR
%             if(simData.grain_id(i,j) == 1)
%                 TRSStot(TRSSn+1) = TRSSvalues(i,j);
%                 %TRSStot = TRSStot + simData.TRSS(i,j);
%                 TRSSn = TRSSn + 1;
%                 
%             end
%         end
%     end
% end
% 
% %Average the value
% TRSSmean = sum(TRSStot)/TRSSn;
TRSSmean = mean(TRSStot,1);

if isnan(TRSSmean)
    TRSSmean = NaN(1,6);
end

end
