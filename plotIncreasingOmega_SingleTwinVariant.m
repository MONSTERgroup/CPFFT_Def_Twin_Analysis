%% Processing all cases with single max twin variant

%0-0-0

nopar000 = NaN(2,50);
circl000 = NaN(2,50);
smlpt000 = NaN(2,50);
lrgpt000 = NaN(2,50);
loc25000 = NaN(2,50);
loc50000 = NaN(2,50);
el10x000 = NaN(2,50);
cont1000 = NaN(2,50);
cont2000 = NaN(2,50);
cont3000 = NaN(2,50);

nopar000_full = NaN(7,50);
circl000_full = NaN(7,50);
smlpt000_full = NaN(7,50);
lrgpt000_full = NaN(7,50);
loc25000_full = NaN(7,50);
loc50000_full = NaN(7,50);
el10x000_full = NaN(7,50);
cont1000_full = NaN(7,50);
cont2000_full = NaN(7,50);
cont3000_full = NaN(7,50);

for i=1:50
    [val, tot] = calcTRSStipMTEX(simData000_nopar_2015, i);
    nopar000_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData000_circl_2015, i);
    circl000_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData000_smlpt_2015, i);
    smlpt000_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData000_lrgpt_2015, i);
    lrgpt000_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData000_loc25_2015, i);
    loc25000_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData000_loc50_2015, i);
    loc50000_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData000_el10x_2015, i);
    el10x000_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData000_cont1_2015, i);
    cont1000_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData000_cont2_2015, i);
    cont2000_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData000_cont3_2015, i);
    cont3000_full(:,i) = [numel(tot)/6; val'];
end

[~,active] = max(mean(nopar000_full(2:7,:),2,'omitnan'));
nopar000 = [nopar000_full(1,:); nopar000_full(active+1,:)];
[~,active] = max(mean(circl000_full(2:7,:),2,'omitnan'));
circl000 = [circl000_full(1,:); circl000_full(active+1,:)];
[~,active] = max(mean(smlpt000_full(2:7,:),2,'omitnan'));
smlpt000 = [smlpt000_full(1,:); smlpt000_full(active+1,:)];
[~,active] = max(mean(lrgpt000_full(2:7,:),2,'omitnan'));
lrgpt000 = [lrgpt000_full(1,:); lrgpt000_full(active+1,:)];
[~,active] = max(mean(loc25000_full(2:7,:),2,'omitnan'));
loc25000 = [loc25000_full(1,:); loc25000_full(active+1,:)];
[~,active] = max(mean(loc50000_full(2:7,:),2,'omitnan'));
loc50000 = [loc50000_full(1,:); loc50000_full(active+1,:)];
[~,active] = max(mean(el10x000_full(2:7,:),2,'omitnan'));
el10x000 = [el10x000_full(1,:); el10x000_full(active+1,:)];
[~,active] = max(mean(cont1000_full(2:7,:),2,'omitnan'));
cont1000 = [cont1000_full(1,:); cont1000_full(active+1,:)];
[~,active] = max(mean(cont2000_full(2:7,:),2,'omitnan'));
cont2000 = [cont2000_full(1,:); cont2000_full(active+1,:)];
[~,active] = max(mean(cont3000_full(2:7,:),2,'omitnan'));
cont3000 = [cont3000_full(1,:); cont3000_full(active+1,:)];

%30-0-0

nopar3000 = NaN(2,50);
circl3000 = NaN(2,50);
smlpt3000 = NaN(2,50);
lrgpt3000 = NaN(2,50);
loc253000 = NaN(2,50);
loc503000 = NaN(2,50);
el10x3000 = NaN(2,50);
cont13000 = NaN(2,50);
cont23000 = NaN(2,50);
cont33000 = NaN(2,50);

nopar3000_full = NaN(7,50);
circl3000_full = NaN(7,50);
smlpt3000_full = NaN(7,50);
lrgpt3000_full = NaN(7,50);
loc253000_full = NaN(7,50);
loc503000_full = NaN(7,50);
el10x3000_full = NaN(7,50);
cont13000_full = NaN(7,50);
cont23000_full = NaN(7,50);
cont33000_full = NaN(7,50);

for i=1:50
    [val, tot] = calcTRSStipMTEX(simData3000_nopar_2015, i);
    nopar3000_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData3000_circl_2015, i);
    circl3000_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData3000_smlpt_2015, i);
    smlpt3000_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData3000_lrgpt_2015, i);
    lrgpt3000_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData3000_loc25_2015, i);
    loc253000_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData3000_loc50_2015, i);
    loc503000_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData3000_el10x_2015, i);
    el10x3000_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData3000_cont1_2015, i);
    cont13000_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData3000_cont2_2015, i);
    cont23000_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData3000_cont3_2015, i);
    cont33000_full(:,i) = [numel(tot)/6; val'];
end

[~,active] = max(mean(nopar3000_full(2:7,:),2,'omitnan'));
nopar3000 = [nopar3000_full(1,:); nopar3000_full(active+1,:)];
[~,active] = max(mean(circl3000_full(2:7,:),2,'omitnan'));
circl3000 = [circl3000_full(1,:); circl3000_full(active+1,:)];
[~,active] = max(mean(smlpt3000_full(2:7,:),2,'omitnan'));
smlpt3000 = [smlpt3000_full(1,:); smlpt3000_full(active+1,:)];
[~,active] = max(mean(lrgpt3000_full(2:7,:),2,'omitnan'));
lrgpt3000 = [lrgpt3000_full(1,:); lrgpt3000_full(active+1,:)];
[~,active] = max(mean(loc253000_full(2:7,:),2,'omitnan'));
loc253000 = [loc253000_full(1,:); loc253000_full(active+1,:)];
[~,active] = max(mean(loc503000_full(2:7,:),2,'omitnan'));
loc503000 = [loc503000_full(1,:); loc503000_full(active+1,:)];
[~,active] = max(mean(el10x3000_full(2:7,:),2,'omitnan'));
el10x3000 = [el10x3000_full(1,:); el10x3000_full(active+1,:)];
[~,active] = max(mean(cont13000_full(2:7,:),2,'omitnan'));
cont13000 = [cont13000_full(1,:); cont13000_full(active+1,:)];
[~,active] = max(mean(cont23000_full(2:7,:),2,'omitnan'));
cont23000 = [cont23000_full(1,:); cont23000_full(active+1,:)];
[~,active] = max(mean(cont33000_full(2:7,:),2,'omitnan'));
cont33000 = [cont33000_full(1,:); cont33000_full(active+1,:)];

%0-30-0

nopar0300 = NaN(2,50);
circl0300 = NaN(2,50);
smlpt0300 = NaN(2,50);
lrgpt0300 = NaN(2,50);
loc250300 = NaN(2,50);
loc500300 = NaN(2,50);
el10x0300 = NaN(2,50);
cont10300 = NaN(2,50);
cont20300 = NaN(2,50);
cont30300 = NaN(2,50);

nopar0300_full = NaN(7,50);
circl0300_full = NaN(7,50);
smlpt0300_full = NaN(7,50);
lrgpt0300_full = NaN(7,50);
loc250300_full = NaN(7,50);
loc500300_full = NaN(7,50);
el10x0300_full = NaN(7,50);
cont10300_full = NaN(7,50);
cont20300_full = NaN(7,50);
cont30300_full = NaN(7,50);

for i=1:50
    [val, tot] = calcTRSStipMTEX(simData0300_nopar_2015, i);
    nopar0300_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData0300_circl_2015, i);
    circl0300_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData0300_smlpt_2015, i);
    smlpt0300_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData0300_lrgpt_2015, i);
    lrgpt0300_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData0300_loc25_2015, i);
    loc250300_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData0300_loc50_2015, i);
    loc500300_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData0300_el10x_2015, i);
    el10x0300_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData0300_cont1_2015, i);
    cont10300_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData0300_cont2_2015, i);
    cont20300_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData0300_cont3_2015, i);
    cont30300_full(:,i) = [numel(tot)/6; val'];
end

[~,active] = max(mean(nopar0300_full(2:7,:),2,'omitnan'));
nopar0300 = [nopar0300_full(1,:); nopar0300_full(active+1,:)];
[~,active] = max(mean(circl0300_full(2:7,:),2,'omitnan'));
circl0300 = [circl0300_full(1,:); circl0300_full(active+1,:)];
[~,active] = max(mean(smlpt0300_full(2:7,:),2,'omitnan'));
smlpt0300 = [smlpt0300_full(1,:); smlpt0300_full(active+1,:)];
[~,active] = max(mean(lrgpt0300_full(2:7,:),2,'omitnan'));
lrgpt0300 = [lrgpt0300_full(1,:); lrgpt0300_full(active+1,:)];
[~,active] = max(mean(loc250300_full(2:7,:),2,'omitnan'));
loc250300 = [loc250300_full(1,:); loc250300_full(active+1,:)];
[~,active] = max(mean(loc500300_full(2:7,:),2,'omitnan'));
loc500300 = [loc500300_full(1,:); loc500300_full(active+1,:)];
[~,active] = max(mean(el10x0300_full(2:7,:),2,'omitnan'));
el10x0300 = [el10x0300_full(1,:); el10x0300_full(active+1,:)];
[~,active] = max(mean(cont10300_full(2:7,:),2,'omitnan'));
cont10300 = [cont10300_full(1,:); cont10300_full(active+1,:)];
[~,active] = max(mean(cont20300_full(2:7,:),2,'omitnan'));
cont20300 = [cont20300_full(1,:); cont20300_full(active+1,:)];
[~,active] = max(mean(cont30300_full(2:7,:),2,'omitnan'));
cont30300 = [cont30300_full(1,:); cont30300_full(active+1,:)];

%50-43-30

nopar504330 = NaN(2,50);
circl504330 = NaN(2,50);
smlpt504330 = NaN(2,50);
lrgpt504330 = NaN(2,50);
loc25504330 = NaN(2,50);
loc50504330 = NaN(2,50);
el10x504330 = NaN(2,50);
cont1504330 = NaN(2,50);
cont2504330 = NaN(2,50);
cont3504330 = NaN(2,50);

nopar504330_full = NaN(7,50);
circl504330_full = NaN(7,50);
smlpt504330_full = NaN(7,50);
lrgpt504330_full = NaN(7,50);
loc25504330_full = NaN(7,50);
loc50504330_full = NaN(7,50);
el10x504330_full = NaN(7,50);
cont1504330_full = NaN(7,50);
cont2504330_full = NaN(7,50);
cont3504330_full = NaN(7,50);

for i=1:50
    [val, tot] = calcTRSStipMTEX(simData504330_nopar_2015, i);
    nopar504330_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData504330_circl_2015, i);
    circl504330_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData504330_smlpt_2015, i);
    smlpt504330_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData504330_lrgpt_2015, i);
    lrgpt504330_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData504330_loc25_2015, i);
    loc25504330_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData504330_loc50_2015, i);
    loc50504330_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData504330_el10x_2015, i);
    el10x504330_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData504330_cont1_2015, i);
    cont1504330_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData504330_cont2_2015, i);
    cont2504330_full(:,i) = [numel(tot)/6; val'];
    [val, tot] = calcTRSStipMTEX(simData504330_cont3_2015, i);
    cont3504330_full(:,i) = [numel(tot)/6; val'];
end

[~,active] = max(mean(nopar504330_full(2:7,:),2,'omitnan'));
nopar504330 = [nopar504330_full(1,:); nopar504330_full(active+1,:)];
[~,active] = max(mean(circl504330_full(2:7,:),2,'omitnan'));
circl504330 = [circl504330_full(1,:); circl504330_full(active+1,:)];
[~,active] = max(mean(smlpt504330_full(2:7,:),2,'omitnan'));
smlpt504330 = [smlpt504330_full(1,:); smlpt504330_full(active+1,:)];
[~,active] = max(mean(lrgpt504330_full(2:7,:),2,'omitnan'));
lrgpt504330 = [lrgpt504330_full(1,:); lrgpt504330_full(active+1,:)];
[~,active] = max(mean(loc25504330_full(2:7,:),2,'omitnan'));
loc25504330 = [loc25504330_full(1,:); loc25504330_full(active+1,:)];
[~,active] = max(mean(loc50504330_full(2:7,:),2,'omitnan'));
loc50504330 = [loc50504330_full(1,:); loc50504330_full(active+1,:)];
[~,active] = max(mean(el10x504330_full(2:7,:),2,'omitnan'));
el10x504330 = [el10x504330_full(1,:); el10x504330_full(active+1,:)];
[~,active] = max(mean(cont1504330_full(2:7,:),2,'omitnan'));
cont1504330 = [cont1504330_full(1,:); cont1504330_full(active+1,:)];
[~,active] = max(mean(cont2504330_full(2:7,:),2,'omitnan'));
cont2504330 = [cont2504330_full(1,:); cont2504330_full(active+1,:)];
[~,active] = max(mean(cont3504330_full(2:7,:),2,'omitnan'));
cont3504330 = [cont3504330_full(1,:); cont3504330_full(active+1,:)];

%% Plot 0-0-0

figure
p2 = plot(circl000(1,:),circl000(2,:),'Color','#FA4616');
hold on
p3 = plot(smlpt000(1,:),smlpt000(2,:),'Color','#0021A5','LineStyle','-.');
p4 = plot(lrgpt000(1,:),lrgpt000(2,:),'Color','#5E8E3F','LineStyle','-.');
p5 = plot(el10x000(1,:),el10x000(2,:),'Color','#593674');
p1 = plot(nopar000(1,:),nopar000(2,:),'k');
yl = yline(20,'Color','#949494','LineWidth',1.5);
%legend([p1 p2 p3 p4 p5],{'No Particle','Circular Particle','Small Particle', 'Large Particle', '10x Elastic'});
%title('"Single Crystal"')
ylabel('TRSS (MPa)')
xlabel('Omega Region Area')
xlim([0,3000])
ylim([0,55])
set(gcf, 'Color', 'w');
export_fig '0-0-0 TRSS 1.png' -m2

figure
p2 = plot(loc25000(1,:),loc25000(2,:),'Color','#FCAF17');
hold on
p3 = plot(loc50000(1,:),loc50000(2,:),'Color','#D7182A');
p4 = plot(cont1000(1,:),cont1000(2,:),'Color','#54b9b3','LineWidth',5);
p5 = plot(cont2000(1,:),cont2000(2,:),'Color','#0773b2','LineStyle','-.');
p6 = plot(cont3000(1,:),cont3000(2,:),'Color','#7f8184','LineStyle','-.');
p1 = plot(nopar000(1,:),nopar000(2,:),'k');
yl = yline(20,'Color','#949494','LineWidth',1.5);
%legend([p1 p2 p3 p4 p5 p6],{'No Particle','Triple Point','Affected Area','1x Continuous', '2x Continuous', '3x Continuous'});
%title('"Single Crystal"')
ylabel('TRSS (MPa)')
xlabel('Omega Region Area')
xlim([0,3000])
ylim([0,55])
set(gcf, 'Color', 'w');
export_fig '0-0-0 TRSS 2.png' -m2

figure
p2 = plot(circl000(1,:),circl000(2,:)./nopar000(2,:),'Color','#FA4616');
hold on
p3 = plot(smlpt000(1,:),smlpt000(2,:)./nopar000(2,:),'Color','#0021A5','LineStyle','-.');
p4 = plot(lrgpt000(1,:),lrgpt000(2,:)./nopar000(2,:),'Color','#5E8E3F','LineStyle','-.');
p5 = plot(el10x000(1,:),el10x000(2,:)./nopar000(2,:),'Color','#593674');
yl = yline(1,'Color','#949494','LineWidth',1.5);
ylim([0,1.5])
xlim([0,3000])
%legend([p2 p3 p4 p5],{'Circular Particle','Small Particle', 'Large Particle', '10x Elastic'});
title('"Single Crystal"')
ylabel('TRSS Ratio')
xlabel('Omega Region Area')
set(gcf, 'Color', 'w');
export_fig '0-0-0 Ratio 1.png' -m2

figure
p1 = plot(loc50000(1,:),loc50000(2,:)./nopar000(2,:),'Color','#D7182A');
hold on
p2 = plot(loc25000(1,:),loc25000(2,:)./nopar000(2,:),'Color','#FCAF17');
p3 = plot(cont1000(1,:),cont1000(2,:)./nopar000(2,:),'Color','#54b9b3','LineWidth',5);
p4 = plot(cont2000(1,:),cont2000(2,:)./nopar000(2,:),'Color','#0773b2','LineStyle','-.');
p5 = plot(cont3000(1,:),cont3000(2,:)./nopar000(2,:),'Color','#7f8184','LineStyle','-.');
yl = yline(1,'Color','#949494','LineWidth',1.5);
ylim([0,1.5])
xlim([0,3000])
%legend([p1 p2 p3 p4 p5],{'Affected Area','Triple Point','1x Continuous', '2x Continuous', '3x Continuous'});
title('"Single Crystal"')
ylabel('TRSS Ratio')
xlabel('Omega Region Area')
set(gcf, 'Color', 'w');
export_fig '0-0-0 Ratio 2.png' -m2

figure
p2 = plot(circl000(1,:),circl000(2,:),'Color','#FA4616');
hold on
p3 = plot(smlpt000(1,:),smlpt000(2,:),'Color','#0021A5','LineStyle','-.');
p4 = plot(lrgpt000(1,:),lrgpt000(2,:),'Color','#5E8E3F','LineStyle','-.');
p5 = plot(el10x000(1,:),el10x000(2,:),'Color','#593674');
p1 = plot(nopar000(1,:),nopar000(2,:),'k');
p6 = plot(loc25000(1,:),loc25000(2,:),'Color','#FCAF17');
p7 = plot(loc50000(1,:),loc50000(2,:),'Color','#D7182A');
p8 = plot(cont1000(1,:),cont1000(2,:),'Color','#54b9b3');
p9 = plot(cont2000(1,:),cont2000(2,:),'Color','#0773b2','LineStyle','-.');
p10 = plot(cont3000(1,:),cont3000(2,:),'Color','#7f8184','LineStyle','-.');
legend([p1 p2 p3 p4 p5 p6 p7 p8 p9 p10],{'No Particle','Circular Particle','Small Particle', 'Large Particle', '10x Elastic','Triple Point','Affected Area','1x Continuous', '2x Continuous', '3x Continuous'});
title('"Single Crystal"')
ylabel('TRSS (MPa)')
xlabel('Omega Region Area')
xlim([0,3000])
ylim([0,55])
set(gcf, 'Color', 'w');
export_fig Legend.png -m2

%% Plot 30-0-0

figure
p2 = plot(circl3000(1,:),circl3000(2,:),'Color','#FA4616');
hold on
p3 = plot(smlpt3000(1,:),smlpt3000(2,:),'Color','#0021A5','LineStyle','-.');
p4 = plot(lrgpt3000(1,:),lrgpt3000(2,:),'Color','#5E8E3F','LineStyle','-.');
p5 = plot(el10x3000(1,:),el10x3000(2,:),'Color','#593674');
p1 = plot(nopar3000(1,:),nopar3000(2,:),'k');
yl = yline(20,'Color','#949494','LineWidth',1.5);
%legend([p1 p2 p3 p4 p5 p6],{'No Particle','Circular Particle','Small Particle', 'Large Particle', 'Triple Point', 'Affected Area'});
%title('Basal Rotation')
ylabel('TRSS (MPa)')
xlabel('Omega Region Area')
xlim([0,3000])
ylim([0,55])
set(gcf, 'Color', 'w');
export_fig '30-0-0 TRSS 1.png' -m2

figure
p2 = plot(loc253000(1,:),loc253000(2,:),'Color','#FCAF17');
hold on
p3 = plot(loc503000(1,:),loc503000(2,:),'Color','#D7182A');
p4 = plot(cont13000(1,:),cont13000(2,:),'Color','#54b9b3');
p5 = plot(cont23000(1,:),cont23000(2,:),'Color','#0773b2','LineStyle','-.');
p6 = plot(cont33000(1,:),cont33000(2,:),'Color','#7f8184','LineStyle','-.');
p1 = plot(nopar3000(1,:),nopar3000(2,:),'k');
yl = yline(20,'Color','#949494','LineWidth',1.5);
%legend([p1 p2 p3 p4 p5],{'No Particle','10x Elastic','1x Continuous', '2x Continuous', '3x Continuous'});
%title('Basal Rotation')
ylabel('TRSS (MPa)')
xlabel('Omega Region Area')
xlim([0,3000])
ylim([0,55])
set(gcf, 'Color', 'w');
export_fig '30-0-0 TRSS 2.png' -m2

figure
p2 = plot(circl3000(1,:),circl3000(2,:)./nopar000(2,:),'Color','#FA4616');
hold on
p3 = plot(smlpt3000(1,:),smlpt3000(2,:)./nopar000(2,:),'Color','#0021A5','LineStyle','-.');
p4 = plot(lrgpt3000(1,:),lrgpt3000(2,:)./nopar000(2,:),'Color','#5E8E3F','LineStyle','-.');
p5 = plot(el10x3000(1,:),el10x3000(2,:)./nopar000(2,:),'Color','#593674');
%p1 = plot(nopar3000(1,:),nopar3000(2,:)./nopar000(2,:),'k');
yl = yline(1,'Color','#949494','LineWidth',1.5);
ylim([0,1.5])
xlim([0,3000])
%legend([p2 p3 p4 p5],{'Circular Particle','Small Particle', 'Large Particle', 'Triple Point'});
title('Basal Rotation')
ylabel('TRSS Ratio')
xlabel('Omega Region Area')
set(gcf, 'Color', 'w');
export_fig '30-0-0 Ratio 1.png' -m2

figure
p1 = plot(loc503000(1,:),loc503000(2,:)./nopar000(2,:),'Color','#D7182A');
hold on
p2 = plot(loc253000(1,:),loc253000(2,:)./nopar000(2,:),'Color','#FCAF17');
p3 = plot(cont13000(1,:),cont13000(2,:)./nopar000(2,:),'Color','#54b9b3','LineWidth',6);
p4 = plot(cont23000(1,:),cont23000(2,:)./nopar000(2,:),'Color','#0773b2','LineStyle','-.');
p5 = plot(cont33000(1,:),cont33000(2,:)./nopar000(2,:),'Color','#7f8184','LineStyle','-.');
yl = yline(1,'Color','#949494','LineWidth',1.5);
ylim([0,1.5])
xlim([0,3000])
%legend([p1 p2 p3 p4 p5],{'Affected Area','10x Elastic','1x Continuous', '2x Continuous', '3x Continuous'});
title('Basal Rotation')
ylabel('TRSS Ratio')
xlabel('Omega Region Area')
set(gcf, 'Color', 'w');
export_fig '30-0-0 Ratio 2.png' -m2

%% Plot 0-30-0

figure
p2 = plot(circl0300(1,:),circl0300(2,:),'Color','#FA4616');
hold on
p3 = plot(smlpt0300(1,:),smlpt0300(2,:),'Color','#0021A5','LineStyle','-.');
p4 = plot(lrgpt0300(1,:),lrgpt0300(2,:),'Color','#5E8E3F','LineStyle','-.');
p5 = plot(el10x0300(1,:),el10x0300(2,:),'Color','#593674');
p1 = plot(nopar0300(1,:),nopar0300(2,:),'k');
%legend([p1 p2 p3 p4 p5 p6],{'No Particle','Circular Particle','Small Particle', 'Large Particle', 'Triple Point', 'Affected Area'});
%title('Basal Tilt')
ylabel('TRSS (MPa)')
xlabel('Omega Region Area')
xlim([0,3000])
ylim([-10,5])
set(gcf, 'Color', 'w');
export_fig '0-30-0 TRSS 1.png' -m2

figure
p2 = plot(loc250300(1,:),loc250300(2,:),'Color','#FCAF17');
hold on
p3 = plot(loc500300(1,:),loc500300(2,:),'Color','#D7182A');
p4 = plot(cont10300(1,:),cont10300(2,:),'Color','#54b9b3');
p5 = plot(cont20300(1,:),cont20300(2,:),'Color','#0773b2','LineStyle','-.');
p6 = plot(cont30300(1,:),cont30300(2,:),'Color','#7f8184','LineStyle','-.');
p1 = plot(nopar0300(1,:),nopar0300(2,:),'k');
%legend([p1 p2 p3 p4 p5],{'No Particle','10x Elastic','1x Continuous', '2x Continuous', '3x Continuous'});
%title('Basal Tilt')
ylabel('TRSS (MPa)')
xlabel('Omega Region Area')
xlim([0,3000])
ylim([-10,5])
set(gcf, 'Color', 'w');
export_fig '0-30-0 TRSS 2.png' -m2

figure
p2 = plot(circl0300(1,:),circl0300(2,:)./nopar000(2,:),'Color','#FA4616');
hold on
p3 = plot(smlpt0300(1,:),smlpt0300(2,:)./nopar000(2,:),'Color','#0021A5','LineStyle','-.');
p4 = plot(lrgpt0300(1,:),lrgpt0300(2,:)./nopar000(2,:),'Color','#5E8E3F','LineStyle','-.');
p5 = plot(el10x0300(1,:),el10x0300(2,:)./nopar000(2,:),'Color','#593674');
p1 = plot(nopar0300(1,:),nopar0300(2,:)./nopar000(2,:),'k');
yl = yline(1,'Color','#949494','LineWidth',1.5);
ylim([0,1.5])
xlim([0,3000])
%legend([p1 p2 p3 p4 p5],{'No Particle','Circular Particle','Small Particle', 'Large Particle', '10x Elastic'});
title('Basal Tilt')
ylabel('TRSS Ratio')
xlabel('Omega Region Area')
set(gcf, 'Color', 'w');
export_fig '0-30-0 Ratio 1.png' -m2

figure
p1 = plot(loc500300(1,:),loc500300(2,:)./nopar000(2,:),'Color','#D7182A');
hold on
p2 = plot(loc250300(1,:),loc250300(2,:)./nopar000(2,:),'Color','#FCAF17');
p3 = plot(cont10300(1,:),cont10300(2,:)./nopar000(2,:),'Color','#54b9b3');
p4 = plot(cont20300(1,:),cont20300(2,:)./nopar000(2,:),'Color','#0773b2','LineStyle','-.');
p5 = plot(cont30300(1,:),cont30300(2,:)./nopar000(2,:),'Color','#7f8184','LineStyle','-.');
yl = yline(1,'Color','#949494','LineWidth',1.5);
ylim([0,1.5])
xlim([0,3000])
%legend([p1 p2 p3 p4 p5],{'Affected Area','10x Elastic','1x Continuous', '2x Continuous', '3x Continuous'});
title('Basal Tilt')
ylabel('TRSS Ratio')
xlabel('Omega Region Area')
set(gcf, 'Color', 'w');
export_fig '0-30-0 Ratio 2.png' -m2

%% Plot 50-43-30

figure
p2 = plot(circl504330(1,:),circl504330(2,:),'Color','#FA4616');
hold on
p3 = plot(smlpt504330(1,:),smlpt504330(2,:),'Color','#0021A5','LineStyle','-.');
p4 = plot(lrgpt504330(1,:),lrgpt504330(2,:),'Color','#5E8E3F','LineStyle','-.');
p5 = plot(el10x504330(1,:),el10x504330(2,:),'Color','#593674');
p1 = plot(nopar504330(1,:),nopar504330(2,:),'k');
%legend([p1 p2 p3 p4 p5 p6],{'No Particle','Circular Particle','Small Particle', 'Large Particle', 'Triple Point', 'Affected Area'});
%title('High Misorientation')
ylabel('TRSS (MPa)')
xlabel('Omega Region Area')
xlim([0,3000])
ylim([5,16])
set(gcf, 'Color', 'w');
export_fig '50-43-30 TRSS 1.png' -m2

figure
p2 = plot(loc25504330(1,:),loc25504330(2,:),'Color','#FCAF17');
hold on
p3 = plot(loc50504330(1,:),loc50504330(2,:),'Color','#D7182A');
p4 = plot(cont1504330(1,:),cont1504330(2,:),'Color','#54b9b3');
p5 = plot(cont2504330(1,:),cont2504330(2,:),'Color','#0773b2','LineStyle','-.');
p6 = plot(cont3504330(1,:),cont3504330(2,:),'Color','#7f8184','LineStyle','-.');
p1 = plot(nopar504330(1,:),nopar504330(2,:),'k');
%legend([p1 p2 p3 p4 p5],{'No Particle','10x Elastic','1x Continuous', '2x Continuous', '3x Continuous'});
%title('High Misorientation')
ylabel('TRSS (MPa)')
xlabel('Omega Region Area')
xlim([0,3000])
ylim([5,16])
set(gcf, 'Color', 'w');
export_fig '50-43-30 TRSS 2.png' -m2

figure
p2 = plot(circl504330(1,:),circl504330(2,:)./nopar000(2,:),'Color','#FA4616');
hold on
p3 = plot(smlpt504330(1,:),smlpt504330(2,:)./nopar000(2,:),'Color','#0021A5','LineStyle','-.');
p4 = plot(lrgpt504330(1,:),lrgpt504330(2,:)./nopar000(2,:),'Color','#5E8E3F','LineStyle','-.');
p5 = plot(el10x504330(1,:),el10x504330(2,:)./nopar000(2,:),'Color','#593674');
p1 = plot(nopar504330(1,:),nopar504330(2,:)./nopar000(2,:),'k');
yl = yline(1,'Color','#949494','LineWidth',1.5);
ylim([0,1.5])
xlim([0,3000])
%legend([p2 p3 p4 p5],{'Circular Particle','Small Particle', 'Large Particle', 'Triple Point'});
title('High Misorientation')
ylabel('TRSS Ratio')
xlabel('Omega Region Area')
set(gcf, 'Color', 'w');
export_fig '50-43-30 Ratio 1.png' -m2

figure
p1 = plot(loc50504330(1,:),loc50504330(2,:)./nopar000(2,:),'Color','#D7182A');
hold on
p2 = plot(loc25504330(1,:),loc25504330(2,:)./nopar000(2,:),'Color','#FCAF17');
p3 = plot(cont1504330(1,:),cont1504330(2,:)./nopar000(2,:),'Color','#54b9b3');
p4 = plot(cont2504330(1,:),cont2504330(2,:)./nopar000(2,:),'Color','#0773b2','LineStyle','-.');
p5 = plot(cont3504330(1,:),cont3504330(2,:)./nopar000(2,:),'Color','#7f8184','LineStyle','-.');
yl = yline(1,'Color','#949494','LineWidth',1.5);
ylim([0,1.5])
xlim([0,3000])
%legend([p1 p2 p3 p4 p5],{'Affected Area','10x Elastic','1x Continuous', '2x Continuous', '3x Continuous'});
title('High Misorientation')
ylabel('TRSS Ratio')
xlabel('Omega Region Area')
set(gcf, 'Color', 'w');
export_fig '50-43-30 Ratio 2.png' -m2

%% Plot graphical abstract figures

figure
p2 = plot(circl000(1,:),circl000(2,:),'Color','#FA4616');
hold on
p3 = plot(loc50000(1,:),loc50000(2,:),'Color','#0021A5');
p1 = plot(nopar000(1,:),nopar000(2,:),'k');
yl = yline(20,'Color','#949494','LineWidth',1.5);
legend([p1 p2 p3],{'No Particle','Circular Particle','Affected Area'});
%title('"Single Crystal"')
ylabel('TRSS (MPa)')
xlabel('Omega Region Area')
xlim([0,3000])
ylim([0,55])
set(gcf, 'Color', 'w');
export_fig 'GA SX.png' -m2

figure
p2 = plot(circl504330(1,:),circl504330(2,:),'Color','#FA4616');
hold on
p3 = plot(loc50504330(1,:),loc50504330(2,:),'Color','#0021A5');
p1 = plot(nopar504330(1,:),nopar504330(2,:),'k');
%legend([p1 p2 p3 p4 p5 p6],{'No Particle','Circular Particle','Small Particle', 'Large Particle', 'Triple Point', 'Affected Area'});
%title('High Misorientation')
ylabel('TRSS (MPa)')
xlabel('Omega Region Area')
xlim([0,3000])
ylim([5,16])
set(gcf, 'Color', 'w');
export_fig 'GA HM.png' -m2