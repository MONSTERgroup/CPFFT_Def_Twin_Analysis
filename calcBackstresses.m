%Calculates the backstresses across all cases.

sigmaTRSS_15 = [];
sigmaTRSS_2015 = [];
sigmaStdDev_15 = [];
sigmaStdDev_2015 = [];
backstress = [];
deltaBackstress = [];

%% Step 15

%nopar
[sigmaTRSS_15(1,1), sigmaStdDev_15(1,1)] =  averageSigma(pullTwinROI(simData000_nopar_15),50);
[sigmaTRSS_15(2,1), sigmaStdDev_15(2,1)] =  averageSigma(pullTwinROI(simData3000_nopar_15),50);
[sigmaTRSS_15(3,1), sigmaStdDev_15(3,1)] =  averageSigma(pullTwinROI(simData0300_nopar_15),50);
[sigmaTRSS_15(4,1), sigmaStdDev_15(4,1)] =  averageSigma(pullTwinROI(simData504330_nopar_15),50);

%circl
[sigmaTRSS_15(1,2), sigmaStdDev_15(1,2)] =  averageSigma(pullTwinROI(simData000_circl_15),50);
[sigmaTRSS_15(2,2), sigmaStdDev_15(2,2)] =  averageSigma(pullTwinROI(simData3000_circl_15),50);
[sigmaTRSS_15(3,2), sigmaStdDev_15(3,2)] =  averageSigma(pullTwinROI(simData0300_circl_15),50);
[sigmaTRSS_15(4,2), sigmaStdDev_15(4,2)] =  averageSigma(pullTwinROI(simData504330_circl_15),50);

%smlpt
[sigmaTRSS_15(1,3), sigmaStdDev_15(1,3)] =  averageSigma(pullTwinROI(simData000_smlpt_15),50);
[sigmaTRSS_15(2,3), sigmaStdDev_15(2,3)] =  averageSigma(pullTwinROI(simData3000_smlpt_15),50);
[sigmaTRSS_15(3,3), sigmaStdDev_15(3,3)] =  averageSigma(pullTwinROI(simData0300_smlpt_15),50);
[sigmaTRSS_15(4,3), sigmaStdDev_15(4,3)] =  averageSigma(pullTwinROI(simData504330_smlpt_15),50);

%lrgpt
[sigmaTRSS_15(1,4), sigmaStdDev_15(1,4)] =  averageSigma(pullTwinROI(simData000_lrgpt_15),50);
[sigmaTRSS_15(2,4), sigmaStdDev_15(2,4)] =  averageSigma(pullTwinROI(simData3000_lrgpt_15),50);
[sigmaTRSS_15(3,4), sigmaStdDev_15(3,4)] =  averageSigma(pullTwinROI(simData0300_lrgpt_15),50);
[sigmaTRSS_15(4,4), sigmaStdDev_15(4,4)] =  averageSigma(pullTwinROI(simData504330_lrgpt_15),50);

%loc25
[sigmaTRSS_15(1,5), sigmaStdDev_15(1,5)] =  averageSigma(pullTwinROI(simData000_loc25_15),50);
[sigmaTRSS_15(2,5), sigmaStdDev_15(2,5)] =  averageSigma(pullTwinROI(simData3000_loc25_15),50);
[sigmaTRSS_15(3,5), sigmaStdDev_15(3,5)] =  averageSigma(pullTwinROI(simData0300_loc25_15),50);
[sigmaTRSS_15(4,5), sigmaStdDev_15(4,5)] =  averageSigma(pullTwinROI(simData504330_loc25_15),50);

%loc50
[sigmaTRSS_15(1,6), sigmaStdDev_15(1,6)] =  averageSigma(pullTwinROI(simData000_loc50_15),50);
[sigmaTRSS_15(2,6), sigmaStdDev_15(2,6)] =  averageSigma(pullTwinROI(simData3000_loc50_15),50);
[sigmaTRSS_15(3,6), sigmaStdDev_15(3,6)] =  averageSigma(pullTwinROI(simData0300_loc50_15),50);
[sigmaTRSS_15(4,6), sigmaStdDev_15(4,6)] =  averageSigma(pullTwinROI(simData504330_loc50_15),50);

%el10x
[sigmaTRSS_15(1,7), sigmaStdDev_15(1,7)] =  averageSigma(pullTwinROI(simData000_el10x_15),50);
[sigmaTRSS_15(2,7), sigmaStdDev_15(2,7)] =  averageSigma(pullTwinROI(simData3000_el10x_15),50);
[sigmaTRSS_15(3,7), sigmaStdDev_15(3,7)] =  averageSigma(pullTwinROI(simData0300_el10x_15),50);
[sigmaTRSS_15(4,7), sigmaStdDev_15(4,7)] =  averageSigma(pullTwinROI(simData504330_el10x_15),50);

%cont1
[sigmaTRSS_15(1,8), sigmaStdDev_15(1,8)] =  averageSigma(pullTwinROI(simData000_cont1_15),50);
[sigmaTRSS_15(2,8), sigmaStdDev_15(2,8)] =  averageSigma(pullTwinROI(simData3000_cont1_15),50);
[sigmaTRSS_15(3,8), sigmaStdDev_15(3,8)] =  averageSigma(pullTwinROI(simData0300_cont1_15),50);
[sigmaTRSS_15(4,8), sigmaStdDev_15(4,8)] =  averageSigma(pullTwinROI(simData504330_cont1_15),50);

%cont2
[sigmaTRSS_15(1,9), sigmaStdDev_15(1,9)] =  averageSigma(pullTwinROI(simData000_cont2_15),50);
[sigmaTRSS_15(2,9), sigmaStdDev_15(2,9)] =  averageSigma(pullTwinROI(simData3000_cont2_15),50);
[sigmaTRSS_15(3,9), sigmaStdDev_15(3,9)] =  averageSigma(pullTwinROI(simData0300_cont2_15),50);
[sigmaTRSS_15(4,9), sigmaStdDev_15(4,9)] =  averageSigma(pullTwinROI(simData504330_cont2_15),50);

%cont3
[sigmaTRSS_15(1,10), sigmaStdDev_15(1,10)] =  averageSigma(pullTwinROI(simData000_cont3_15),50);
[sigmaTRSS_15(2,10), sigmaStdDev_15(2,10)] =  averageSigma(pullTwinROI(simData3000_cont3_15),50);
[sigmaTRSS_15(3,10), sigmaStdDev_15(3,10)] =  averageSigma(pullTwinROI(simData0300_cont3_15),50);
[sigmaTRSS_15(4,10), sigmaStdDev_15(4,10)] =  averageSigma(pullTwinROI(simData504330_cont3_15),50);

%% Step 2015

%nopar
[sigmaTRSS_2015(1,1), sigmaStdDev_2015(1,1)] =  averageSigma(pullTwinROI(simData000_nopar_2015),50);
[sigmaTRSS_2015(2,1), sigmaStdDev_2015(2,1)] =  averageSigma(pullTwinROI(simData3000_nopar_2015),50);
[sigmaTRSS_2015(3,1), sigmaStdDev_2015(3,1)] =  averageSigma(pullTwinROI(simData0300_nopar_2015),50);
[sigmaTRSS_2015(4,1), sigmaStdDev_2015(4,1)] =  averageSigma(pullTwinROI(simData504330_nopar_2015),50);

%circl
[sigmaTRSS_2015(1,2), sigmaStdDev_2015(1,2)] =  averageSigma(pullTwinROI(simData000_circl_2015),50);
[sigmaTRSS_2015(2,2), sigmaStdDev_2015(2,2)] =  averageSigma(pullTwinROI(simData3000_circl_2015),50);
[sigmaTRSS_2015(3,2), sigmaStdDev_2015(3,2)] =  averageSigma(pullTwinROI(simData0300_circl_2015),50);
[sigmaTRSS_2015(4,2), sigmaStdDev_2015(4,2)] =  averageSigma(pullTwinROI(simData504330_circl_2015),50);

%smlpt
[sigmaTRSS_2015(1,3), sigmaStdDev_2015(1,3)] =  averageSigma(pullTwinROI(simData000_smlpt_2015),50);
[sigmaTRSS_2015(2,3), sigmaStdDev_2015(2,3)] =  averageSigma(pullTwinROI(simData3000_smlpt_2015),50);
[sigmaTRSS_2015(3,3), sigmaStdDev_2015(3,3)] =  averageSigma(pullTwinROI(simData0300_smlpt_2015),50);
[sigmaTRSS_2015(4,3), sigmaStdDev_2015(4,3)] =  averageSigma(pullTwinROI(simData504330_smlpt_2015),50);

%lrgpt
[sigmaTRSS_2015(1,4), sigmaStdDev_2015(1,4)] =  averageSigma(pullTwinROI(simData000_lrgpt_2015),50);
[sigmaTRSS_2015(2,4), sigmaStdDev_2015(2,4)] =  averageSigma(pullTwinROI(simData3000_lrgpt_2015),50);
[sigmaTRSS_2015(3,4), sigmaStdDev_2015(3,4)] =  averageSigma(pullTwinROI(simData0300_lrgpt_2015),50);
[sigmaTRSS_2015(4,4), sigmaStdDev_2015(4,4)] =  averageSigma(pullTwinROI(simData504330_lrgpt_2015),50);

%loc25
[sigmaTRSS_2015(1,5), sigmaStdDev_2015(1,5)] =  averageSigma(pullTwinROI(simData000_loc25_2015),50);
[sigmaTRSS_2015(2,5), sigmaStdDev_2015(2,5)] =  averageSigma(pullTwinROI(simData3000_loc25_2015),50);
[sigmaTRSS_2015(3,5), sigmaStdDev_2015(3,5)] =  averageSigma(pullTwinROI(simData0300_loc25_2015),50);
[sigmaTRSS_2015(4,5), sigmaStdDev_2015(4,5)] =  averageSigma(pullTwinROI(simData504330_loc25_2015),50);

%loc50
[sigmaTRSS_2015(1,6), sigmaStdDev_2015(1,6)] =  averageSigma(pullTwinROI(simData000_loc50_2015),50);
[sigmaTRSS_2015(2,6), sigmaStdDev_2015(2,6)] =  averageSigma(pullTwinROI(simData3000_loc50_2015),50);
[sigmaTRSS_2015(3,6), sigmaStdDev_2015(3,6)] =  averageSigma(pullTwinROI(simData0300_loc50_2015),50);
[sigmaTRSS_2015(4,6), sigmaStdDev_2015(4,6)] =  averageSigma(pullTwinROI(simData504330_loc50_2015),50);

%el10x
[sigmaTRSS_2015(1,7), sigmaStdDev_2015(1,7)] =  averageSigma(pullTwinROI(simData000_el10x_2015),50);
[sigmaTRSS_2015(2,7), sigmaStdDev_2015(2,7)] =  averageSigma(pullTwinROI(simData3000_el10x_2015),50);
[sigmaTRSS_2015(3,7), sigmaStdDev_2015(3,7)] =  averageSigma(pullTwinROI(simData0300_el10x_2015),50);
[sigmaTRSS_2015(4,7), sigmaStdDev_2015(4,7)] =  averageSigma(pullTwinROI(simData504330_el10x_2015),50);

%cont1
[sigmaTRSS_2015(1,8), sigmaStdDev_2015(1,8)] =  averageSigma(pullTwinROI(simData000_cont1_2015),50);
[sigmaTRSS_2015(2,8), sigmaStdDev_2015(2,8)] =  averageSigma(pullTwinROI(simData3000_cont1_2015),50);
[sigmaTRSS_2015(3,8), sigmaStdDev_2015(3,8)] =  averageSigma(pullTwinROI(simData0300_cont1_2015),50);
[sigmaTRSS_2015(4,8), sigmaStdDev_2015(4,8)] =  averageSigma(pullTwinROI(simData504330_cont1_2015),50);

%cont2
[sigmaTRSS_2015(1,9), sigmaStdDev_2015(1,9)] =  averageSigma(pullTwinROI(simData000_cont2_2015),50);
[sigmaTRSS_2015(2,9), sigmaStdDev_2015(2,9)] =  averageSigma(pullTwinROI(simData3000_cont2_2015),50);
[sigmaTRSS_2015(3,9), sigmaStdDev_2015(3,9)] =  averageSigma(pullTwinROI(simData0300_cont2_2015),50);
[sigmaTRSS_2015(4,9), sigmaStdDev_2015(4,9)] =  averageSigma(pullTwinROI(simData504330_cont2_2015),50);

%cont3
[sigmaTRSS_2015(1,10), sigmaStdDev_2015(1,10)] =  averageSigma(pullTwinROI(simData000_cont3_2015),50);
[sigmaTRSS_2015(2,10), sigmaStdDev_2015(2,10)] =  averageSigma(pullTwinROI(simData3000_cont3_2015),50);
[sigmaTRSS_2015(3,10), sigmaStdDev_2015(3,10)] =  averageSigma(pullTwinROI(simData0300_cont3_2015),50);
[sigmaTRSS_2015(4,10), sigmaStdDev_2015(4,10)] =  averageSigma(pullTwinROI(simData504330_cont3_2015),50);

%% Calculate the mean and standard deviation within the Sigma region

sigmaMean = [];
sigmaStdDev = [];

%nopar
[sigmaMean(1,1), sigmaStdDev(1,1)] =  calcSigma(simData000_nopar_15,simData000_nopar_2015,50);
[sigmaMean(2,1), sigmaStdDev(2,1)] =  calcSigma(simData3000_nopar_15,simData3000_nopar_2015,50);
[sigmaMean(3,1), sigmaStdDev(3,1)] =  calcSigma(simData0300_nopar_15,simData0300_nopar_2015,50);
[sigmaMean(4,1), sigmaStdDev(4,1)] =  calcSigma(simData504330_nopar_15,simData504330_nopar_2015,50);

%circl
[sigmaMean(1,2), sigmaStdDev(1,2)] =  calcSigma(simData000_circl_15,simData000_circl_2015,50);
[sigmaMean(2,2), sigmaStdDev(2,2)] =  calcSigma(simData3000_circl_15,simData3000_circl_2015,50);
[sigmaMean(3,2), sigmaStdDev(3,2)] =  calcSigma(simData0300_circl_15,simData0300_circl_2015,50);
[sigmaMean(4,2), sigmaStdDev(4,2)] =  calcSigma(simData504330_circl_15,simData504330_circl_2015,50);

%smlpt
[sigmaMean(1,3), sigmaStdDev(1,3)] =  calcSigma(simData000_smlpt_15,simData000_smlpt_2015,50);
[sigmaMean(2,3), sigmaStdDev(2,3)] =  calcSigma(simData3000_smlpt_15,simData3000_smlpt_2015,50);
[sigmaMean(3,3), sigmaStdDev(3,3)] =  calcSigma(simData0300_smlpt_15,simData0300_smlpt_2015,50);
[sigmaMean(4,3), sigmaStdDev(4,3)] =  calcSigma(simData504330_smlpt_15,simData504330_smlpt_2015,50);

%lrgpt
[sigmaMean(1,4), sigmaStdDev(1,4)] =  calcSigma(simData000_lrgpt_15,simData000_lrgpt_2015,50);
[sigmaMean(2,4), sigmaStdDev(2,4)] =  calcSigma(simData3000_lrgpt_15,simData3000_lrgpt_2015,50);
[sigmaMean(3,4), sigmaStdDev(3,4)] =  calcSigma(simData0300_lrgpt_15,simData0300_lrgpt_2015,50);
[sigmaMean(4,4), sigmaStdDev(4,4)] =  calcSigma(simData504330_lrgpt_15,simData504330_lrgpt_2015,50);

%loc25
[sigmaMean(1,5), sigmaStdDev(1,5)] =  calcSigma(simData000_loc25_15,simData000_loc25_2015,50);
[sigmaMean(2,5), sigmaStdDev(2,5)] =  calcSigma(simData3000_loc25_15,simData3000_loc25_2015,50);
[sigmaMean(3,5), sigmaStdDev(3,5)] =  calcSigma(simData0300_loc25_15,simData0300_loc25_2015,50);
[sigmaMean(4,5), sigmaStdDev(4,5)] =  calcSigma(simData504330_loc25_15,simData504330_loc25_2015,50);

%loc50
[sigmaMean(1,6), sigmaStdDev(1,6)] =  calcSigma(simData000_loc50_15,simData000_loc50_2015,50);
[sigmaMean(2,6), sigmaStdDev(2,6)] =  calcSigma(simData3000_loc50_15,simData3000_loc50_2015,50);
[sigmaMean(3,6), sigmaStdDev(3,6)] =  calcSigma(simData0300_loc50_15,simData0300_loc50_2015,50);
[sigmaMean(4,6), sigmaStdDev(4,6)] =  calcSigma(simData504330_loc50_15,simData504330_loc50_2015,50);

%el10x
[sigmaMean(1,7), sigmaStdDev(1,7)] =  calcSigma(simData000_el10x_15,simData000_el10x_2015,50);
[sigmaMean(2,7), sigmaStdDev(2,7)] =  calcSigma(simData3000_el10x_15,simData3000_el10x_2015,50);
[sigmaMean(3,7), sigmaStdDev(3,7)] =  calcSigma(simData0300_el10x_15,simData0300_el10x_2015,50);
[sigmaMean(4,7), sigmaStdDev(4,7)] =  calcSigma(simData504330_el10x_15,simData504330_el10x_2015,50);

%cont1
[sigmaMean(1,8), sigmaStdDev(1,8)] =  calcSigma(simData000_cont1_15,simData000_cont1_2015,50);
[sigmaMean(2,8), sigmaStdDev(2,8)] =  calcSigma(simData3000_cont1_15,simData3000_cont1_2015,50);
[sigmaMean(3,8), sigmaStdDev(3,8)] =  calcSigma(simData0300_cont1_15,simData0300_cont1_2015,50);
[sigmaMean(4,8), sigmaStdDev(4,8)] =  calcSigma(simData504330_cont1_15,simData504330_cont1_2015,50);

%cont2
[sigmaMean(1,9), sigmaStdDev(1,9)] =  calcSigma(simData000_cont2_15,simData000_cont2_2015,50);
[sigmaMean(2,9), sigmaStdDev(2,9)] =  calcSigma(simData3000_cont2_15,simData3000_cont2_2015,50);
[sigmaMean(3,9), sigmaStdDev(3,9)] =  calcSigma(simData0300_cont2_15,simData0300_cont2_2015,50);
[sigmaMean(4,9), sigmaStdDev(4,9)] =  calcSigma(simData504330_cont2_15,simData504330_cont2_2015,50);

%cont3
[sigmaMean(1,10), sigmaStdDev(1,10)] =  calcSigma(simData000_cont3_15,simData000_cont3_2015,50);
[sigmaMean(2,10), sigmaStdDev(2,10)] =  calcSigma(simData3000_cont3_15,simData3000_cont3_2015,50);
[sigmaMean(3,10), sigmaStdDev(3,10)] =  calcSigma(simData0300_cont3_15,simData0300_cont3_2015,50);
[sigmaMean(4,10), sigmaStdDev(4,10)] =  calcSigma(simData504330_cont3_15,simData504330_cont3_2015,50);

%% Plot the data

figure
y1 = yline(backstress(1,1),'--','Color','#FA4616','LineWidth',2.5);
hold on
b000 = scatter(1:1:10, backstress(1,:), 250, 'd', 'MarkerEdgeColor', '#FA4616', 'MarkerFaceColor','#FA4616');
b3000 = scatter(1:1:10, backstress(2,:), 150, 'd', 'MarkerEdgeColor', '#0021A5', 'MarkerFaceColor','#0021A5');
b0300 = scatter(1:1:10, backstress(3,:), 150, 'd', 'MarkerEdgeColor', 'k', 'MarkerFaceColor','k');
b504330 = scatter(1:1:10, backstress(4,:), 150, 'd', 'MarkerEdgeColor', '#5E8E3F', 'MarkerFaceColor','#5E8E3F');
% e000 = errorbar(1:1:10,backstress(1,:),sigmaStdDev(1,:),'d','MarkerSize',15,'CapSize',15,'Color','k','MarkerEdgeColor','#FA4616','MarkerFaceColor','#FA4616');
% e3000 = errorbar(1:1:10,backstress(2,:),sigmaStdDev(2,:),'d','MarkerSize',10,'CapSize',15,'Color','k','MarkerEdgeColor', '#0021A5', 'MarkerFaceColor','#0021A5');
% e0300 = errorbar(1:1:10,backstress(3,:),sigmaStdDev(3,:),'d','MarkerSize',10,'CapSize',15,'Color','k','MarkerEdgeColor', 'k', 'MarkerFaceColor','k');
% e504330 = errorbar(1:1:10,backstress(4,:),sigmaStdDev(4,:),'d','MarkerSize',10,'CapSize',15,'Color','k','MarkerEdgeColor', '#5E8E3F', 'MarkerFaceColor','#5E8E3F');

xticks([1:1:10]);
%xticklabels({'nopar','circl','smlpt','lrgpt','loc25','loc50','el10x','cont1','cont2','cont3'});
xticklabels({'No Particle','Circular Particle','Small Particle', ...
    'Large Particle','Triple Point','Affected Area', ...
    '10x Elastic','1x Continuous','2x Continuous',...
    '3x Continuous'});
y2 = yline(backstress(3,1),'--k','LineWidth',2.5);
y3 = yline(backstress(4,1),'--m','Color','#5E8E3F','LineWidth',2.5);
% y1.LabelVerticalAlignment = 'bottom';
% y2.LabelVerticalAlignment = 'bottom';
% y3.LabelVerticalAlignment = 'bottom';
xlim([0, 11]);
ylim([20, 50]);
xtickangle(45);
title('Backstresses');
%xlabel('Case');
ylabel('Backstress (MPa)');
%legend([b000, b3000, b0300, b504330], {'0-0-0', '30-0-0', '0-30-0', '50-43-30'},'Location','northwest');
hold off