% Let's actually get my plotting stuff for these additional figures into
% one script so I don't lose them again.

%% Plot all individual twin variant TRSS values for 1 case

simCase = cont1504330_full;

figure
yl = yline(20,'Color','#949494','LineWidth',1.5);
hold on
for i = 2:7
    p = plot(simCase(1,:),simCase(i,:));
end
ylabel('TRSS (MPa)')
xlabel('Omega Region Area')
xlim([0,3000])
ylim([0,55]) %May need to change this for visibility
title('High Mis Continuous 1x') %Change this depending on case
hold off


%% Calculate the active twin variants

CRSS = 20.0;
e000 = [0 0 0];
e3000 = [30 0 0];
e0300 = [0 30 0];
e504330 = [50 43 30];

case1 = simData000_loc50_2015;
case2 = simDataSX_lodl2;
case1_ang = e000;
case2_ang = e000;

[activeVars1, numVars1] = calcActiveVariants(case1, case1_ang, CRSS);
[activeVars2, numVars2] = calcActiveVariants(case2, case2_ang, CRSS); 

xcenter = 226; %X coordinate of center of Omega (twin tip)
ycenter = 226; %Y coordinate of center of Omega (twin tip)
OmegaR = 50; %Radius of the Omega region

omegaVars1 = NaN(length(activeVars1),length(activeVars1));
omegaVars2 = NaN(length(activeVars2),length(activeVars2));
omegaNums1 = NaN(length(numVars1),length(numVars1));
omegaNums2 = NaN(length(numVars2),length(numVars2));

for i = 1:length(activeVars1)
    for j = 1:length(activeVars1)
        if (sqrt((i-xcenter)^2 + (j-ycenter)^2) <= OmegaR && j <= xcenter)
            omegaVars1(i,j) = activeVars1(i,j);
            omegaVars2(i,j) = activeVars2(i,j);
            omegaNums1(i,j) = numVars1(i,j);
            omegaNums2(i,j) = numVars2(i,j);
        end
    end
end

%% Plot the active twin variant data

h_case1_Vars = histcounts(omegaVars1);
h_case2_Vars = histcounts(omegaVars2);
h_case1_Nums = histcounts(omegaNums1);
h_case2_Nums = histcounts(omegaNums2);

%Most active variant within Omega
figure
b1 = bar(1:6,[h_case1_Vars; h_case2_Vars]',1,'hist','LineWidth',2);
hold on
xlim([0.5 6.5])
ylim([0 1300])
%title('No Particle')
b1(1).FaceColor = '#FA4616';
b1(1).LineWidth = 1.5;
b1(2).FaceColor = '#0021A5';
b1(2).LineWidth = 1.5;
xlabel('Twin Variant')
ylabel('Counts')
%legend([h_nopar_000, h_nopar_3000],{'0-0-0', '30-0-0'})
hold off

%Number of active variants within Omega
figure
b1 = bar(1:7,[h_case1_Nums; h_case2_Nums]',1,'hist','LineWidth',2);
hold on
xlim([1.5 7.5])
ylim([0 1500])
%title('No Particle')
b1(1).FaceColor = '#FA4616';
b1(1).LineWidth = 1.5;
b1(2).FaceColor = '#0021A5';
b1(2).LineWidth = 1.5;
xlabel('# Potentially Active Twin Variants')
ylabel('Counts')
xticklabels({'0','1','2','3','4','5','6'})
%legend([h_nopar_000, h_nopar_3000],{'0-0-0', '30-0-0'})
hold off

%Normalized active variants within Omega
h_norm1 = h_case1_Nums/sum(h_case1_Nums);
h_norm2 = h_case2_Nums/sum(h_case2_Nums);

figure
b1 = bar(1:7,[h_norm1; h_norm2]',1,'hist','LineWidth',2);
hold on
xlim([0.5 7.5])
ylim([0 .55])
%title('No Particle')
b1(1).FaceColor = '#FA4616';
b1(1).LineWidth = 1.5;
b1(2).FaceColor = '#0021A5';
b1(2).LineWidth = 1.5;
xlabel('# Potentially Active Twin Variants')
ylabel('Fraction of \Omega Voxels')
xticklabels({'0','1','2','3','4','5','6'})
legend({'AA', 'AA - Large'})
hold off

%% Export to Paraview

%Make sure the filenames match the case and orientation!
createTwinVariantFile(case1, activeVars1, numVars1, 'TwinVariantsNums_SX_lodn7');
createTwinVariantFile(case2, activeVars2, numVars2, 'TwinVariantsNums_SX_lotb7');