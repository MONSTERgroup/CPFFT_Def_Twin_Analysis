%Loads the stre data from all 40 combinations of orientation and
%microstructure cases to enable further processing of data

%% Path to files
pointer = '';
p000 = '0-0-0/';
p3000 = '30-0-0/';
p0300 = '0-30-0/';
p504330 = '50-43-30/';
stre = 'stre_';
stp2015 = '2015.vtk';
nopar = 'nopar_';
circl = 'circl_';
lrgpt = 'lrgpt_';
smlpt = 'smlpt_';
loc25 = 'loc25_';
loc50 = 'loc50_';
el10x = 'el10x_';
cont1 = 'cont1_';
cont2 = 'cont2_';
cont3 = 'cont3_';
o000 = '000_';
o0300 = '0300_';
o3000 = '3000_';
o504330 = '504330_';

%% Files to import

stre000_nopar_2015 = [pointer p000 nopar o000 stre stp2015];
stre3000_nopar_2015 = [pointer p3000 nopar o3000 stre stp2015];
stre0300_nopar_2015 = [pointer p0300 nopar o0300 stre stp2015];
stre504330_nopar_2015 = [pointer p504330 nopar o504330 stre stp2015];

stre000_circl_2015 = [pointer p000 circl o000 stre stp2015];
stre3000_circl_2015 = [pointer p3000 circl o3000 stre stp2015];
stre0300_circl_2015 = [pointer p0300 circl o0300 stre stp2015];
stre504330_circl_2015 = [pointer p504330 circl o504330 stre stp2015];

stre000_lrgpt_2015 = [pointer p000 lrgpt o000 stre stp2015];
stre3000_lrgpt_2015 = [pointer p3000 lrgpt o3000 stre stp2015];
stre0300_lrgpt_2015 = [pointer p0300 lrgpt o0300 stre stp2015];
stre504330_lrgpt_2015 = [pointer p504330 lrgpt o504330 stre stp2015];

stre000_smlpt_2015 = [pointer p000 smlpt o000 stre stp2015];
stre3000_smlpt_2015 = [pointer p3000 smlpt o3000 stre stp2015];
stre0300_smlpt_2015 = [pointer p0300 smlpt o0300 stre stp2015];
stre504330_smlpt_2015 = [pointer p504330 smlpt o504330 stre stp2015];

stre000_loc25_2015 = [pointer p000 loc25 o000 stre stp2015];
stre3000_loc25_2015 = [pointer p3000 loc25 o3000 stre stp2015];
stre0300_loc25_2015 = [pointer p0300 loc25 o0300 stre stp2015];
stre504330_loc25_2015 = [pointer p504330 loc25 o504330 stre stp2015];

stre000_loc50_2015 = [pointer p000 loc50 o000 stre stp2015];
stre3000_loc50_2015 = [pointer p3000 loc50 o3000 stre stp2015];
stre0300_loc50_2015 = [pointer p0300 loc50 o0300 stre stp2015];
stre504330_loc50_2015 = [pointer p504330 loc50 o504330 stre stp2015];

stre000_el10x_2015 = [pointer p000 el10x o000 stre stp2015];
stre3000_el10x_2015 = [pointer p3000 el10x o3000 stre stp2015];
stre0300_el10x_2015 = [pointer p0300 el10x o0300 stre stp2015];
stre504330_el10x_2015 = [pointer p504330 el10x o504330 stre stp2015];

stre000_cont1_2015 = [pointer p000 cont1 o000 stre stp2015];
stre3000_cont1_2015 = [pointer p3000 cont1 o3000 stre stp2015];
stre0300_cont1_2015 = [pointer p0300 cont1 o0300 stre stp2015];
stre504330_cont1_2015 = [pointer p504330 cont1 o504330 stre stp2015];

stre000_cont2_2015 = [pointer p000 cont2 o000 stre stp2015];
stre3000_cont2_2015 = [pointer p3000 cont2 o3000 stre stp2015];
stre0300_cont2_2015 = [pointer p0300 cont2 o0300 stre stp2015];
stre504330_cont2_2015 = [pointer p504330 cont2 o504330 stre stp2015];

stre000_cont3_2015 = [pointer p000 cont3 o000 stre stp2015];
stre3000_cont3_2015 = [pointer p3000 cont3 o3000 stre stp2015];
stre0300_cont3_2015 = [pointer p0300 cont3 o0300 stre stp2015];
stre504330_cont3_2015 = [pointer p504330 cont3 o504330 stre stp2015];


%% Load the data

simData000_nopar_2015 = CPFFTdata;
simData000_nopar_2015 = combineData(simData000_nopar_2015,importData(stre000_nopar_2015,'stre'));
simData000_nopar_2015 = thresholdData(simData000_nopar_2015, 25);
simData0300_nopar_2015 = CPFFTdata;
simData0300_nopar_2015 = combineData(simData0300_nopar_2015,importData(stre0300_nopar_2015,'stre'));
simData0300_nopar_2015 = thresholdData(simData0300_nopar_2015, 25);
simData3000_nopar_2015 = CPFFTdata;
simData3000_nopar_2015 = combineData(simData3000_nopar_2015,importData(stre3000_nopar_2015,'stre'));
simData3000_nopar_2015 = thresholdData(simData3000_nopar_2015, 25);
simData504330_nopar_2015 = CPFFTdata;
simData504330_nopar_2015 = combineData(simData504330_nopar_2015,importData(stre504330_nopar_2015,'stre'));
simData504330_nopar_2015 = thresholdData(simData504330_nopar_2015, 25);

simData000_circl_2015 = CPFFTdata;
simData000_circl_2015 = combineData(simData000_circl_2015,importData(stre000_circl_2015,'stre'));
simData000_circl_2015 = thresholdData(simData000_circl_2015, 25);
simData0300_circl_2015 = CPFFTdata;
simData0300_circl_2015 = combineData(simData0300_circl_2015,importData(stre0300_circl_2015,'stre'));
simData0300_circl_2015 = thresholdData(simData0300_circl_2015, 25);
simData3000_circl_2015 = CPFFTdata;
simData3000_circl_2015 = combineData(simData3000_circl_2015,importData(stre3000_circl_2015,'stre'));
simData3000_circl_2015 = thresholdData(simData3000_circl_2015, 25);
simData504330_circl_2015 = CPFFTdata;
simData504330_circl_2015 = combineData(simData504330_circl_2015,importData(stre504330_circl_2015,'stre'));
simData504330_circl_2015 = thresholdData(simData504330_circl_2015, 25);

simData000_lrgpt_2015 = CPFFTdata;
simData000_lrgpt_2015 = combineData(simData000_lrgpt_2015,importData(stre000_lrgpt_2015,'stre'));
simData000_lrgpt_2015 = thresholdData(simData000_lrgpt_2015, 25);
simData0300_lrgpt_2015 = CPFFTdata;
simData0300_lrgpt_2015 = combineData(simData0300_lrgpt_2015,importData(stre0300_lrgpt_2015,'stre'));
simData0300_lrgpt_2015 = thresholdData(simData0300_lrgpt_2015, 25);
simData3000_lrgpt_2015 = CPFFTdata;
simData3000_lrgpt_2015 = combineData(simData3000_lrgpt_2015,importData(stre3000_lrgpt_2015,'stre'));
simData3000_lrgpt_2015 = thresholdData(simData3000_lrgpt_2015, 25);
simData504330_lrgpt_2015 = CPFFTdata;
simData504330_lrgpt_2015 = combineData(simData504330_lrgpt_2015,importData(stre504330_lrgpt_2015,'stre'));
simData504330_lrgpt_2015 = thresholdData(simData504330_lrgpt_2015, 25);

simData000_smlpt_2015 = CPFFTdata;
simData000_smlpt_2015 = combineData(simData000_smlpt_2015,importData(stre000_smlpt_2015,'stre'));
simData000_smlpt_2015 = thresholdData(simData000_smlpt_2015, 25);
simData0300_smlpt_2015 = CPFFTdata;
simData0300_smlpt_2015 = combineData(simData0300_smlpt_2015,importData(stre0300_smlpt_2015,'stre'));
simData0300_smlpt_2015 = thresholdData(simData0300_smlpt_2015, 25);
simData3000_smlpt_2015 = CPFFTdata;
simData3000_smlpt_2015 = combineData(simData3000_smlpt_2015,importData(stre3000_smlpt_2015,'stre'));
simData3000_smlpt_2015 = thresholdData(simData3000_smlpt_2015, 25);
simData504330_smlpt_2015 = CPFFTdata;
simData504330_smlpt_2015 = combineData(simData504330_smlpt_2015,importData(stre504330_smlpt_2015,'stre'));
simData504330_smlpt_2015 = thresholdData(simData504330_smlpt_2015, 25);

simData000_loc25_2015 = CPFFTdata;
simData000_loc25_2015 = combineData(simData000_loc25_2015,importData(stre000_loc25_2015,'stre'));
simData000_loc25_2015 = thresholdData(simData000_loc25_2015, 25);
simData0300_loc25_2015 = CPFFTdata;
simData0300_loc25_2015 = combineData(simData0300_loc25_2015,importData(stre0300_loc25_2015,'stre'));
simData0300_loc25_2015 = thresholdData(simData0300_loc25_2015, 25);
simData3000_loc25_2015 = CPFFTdata;
simData3000_loc25_2015 = combineData(simData3000_loc25_2015,importData(stre3000_loc25_2015,'stre'));
simData3000_loc25_2015 = thresholdData(simData3000_loc25_2015, 25);
simData504330_loc25_2015 = CPFFTdata;
simData504330_loc25_2015 = combineData(simData504330_loc25_2015,importData(stre504330_loc25_2015,'stre'));
simData504330_loc25_2015 = thresholdData(simData504330_loc25_2015, 25);

simData000_loc50_2015 = CPFFTdata;
simData000_loc50_2015 = combineData(simData000_loc50_2015,importData(stre000_loc50_2015,'stre'));
simData000_loc50_2015 = thresholdData(simData000_loc50_2015, 25);
simData0300_loc50_2015 = CPFFTdata;
simData0300_loc50_2015 = combineData(simData0300_loc50_2015,importData(stre0300_loc50_2015,'stre'));
simData0300_loc50_2015 = thresholdData(simData0300_loc50_2015, 25);
simData3000_loc50_2015 = CPFFTdata;
simData3000_loc50_2015 = combineData(simData3000_loc50_2015,importData(stre3000_loc50_2015,'stre'));
simData3000_loc50_2015 = thresholdData(simData3000_loc50_2015, 25);
simData504330_loc50_2015 = CPFFTdata;
simData504330_loc50_2015 = combineData(simData504330_loc50_2015,importData(stre504330_loc50_2015,'stre'));
simData504330_loc50_2015 = thresholdData(simData504330_loc50_2015, 25);

simData000_el10x_2015 = CPFFTdata;
simData000_el10x_2015 = combineData(simData000_el10x_2015,importData(stre000_el10x_2015,'stre'));
simData000_el10x_2015 = thresholdData(simData000_el10x_2015, 25);
simData0300_el10x_2015 = CPFFTdata;
simData0300_el10x_2015 = combineData(simData0300_el10x_2015,importData(stre0300_el10x_2015,'stre'));
simData0300_el10x_2015 = thresholdData(simData0300_el10x_2015, 25);
simData3000_el10x_2015 = CPFFTdata;
simData3000_el10x_2015 = combineData(simData3000_el10x_2015,importData(stre3000_el10x_2015,'stre'));
simData3000_el10x_2015 = thresholdData(simData3000_el10x_2015, 25);
simData504330_el10x_2015 = CPFFTdata;
simData504330_el10x_2015 = combineData(simData504330_el10x_2015,importData(stre504330_el10x_2015,'stre'));
simData504330_el10x_2015 = thresholdData(simData504330_el10x_2015, 25);

simData000_cont1_2015 = CPFFTdata;
simData000_cont1_2015 = combineData(simData000_cont1_2015,importData(stre000_cont1_2015,'stre'));
simData000_cont1_2015 = thresholdData(simData000_cont1_2015, 25);
simData0300_cont1_2015 = CPFFTdata;
simData0300_cont1_2015 = combineData(simData0300_cont1_2015,importData(stre0300_cont1_2015,'stre'));
simData0300_cont1_2015 = thresholdData(simData0300_cont1_2015, 25);
simData3000_cont1_2015 = CPFFTdata;
simData3000_cont1_2015 = combineData(simData3000_cont1_2015,importData(stre3000_cont1_2015,'stre'));
simData3000_cont1_2015 = thresholdData(simData3000_cont1_2015, 25);
simData504330_cont1_2015 = CPFFTdata;
simData504330_cont1_2015 = combineData(simData504330_cont1_2015,importData(stre504330_cont1_2015,'stre'));
simData504330_cont1_2015 = thresholdData(simData504330_cont1_2015, 25);

simData000_cont2_2015 = CPFFTdata;
simData000_cont2_2015 = combineData(simData000_cont2_2015,importData(stre000_cont2_2015,'stre'));
simData000_cont2_2015 = thresholdData(simData000_cont2_2015, 25);
simData0300_cont2_2015 = CPFFTdata;
simData0300_cont2_2015 = combineData(simData0300_cont2_2015,importData(stre0300_cont2_2015,'stre'));
simData0300_cont2_2015 = thresholdData(simData0300_cont2_2015, 25);
simData3000_cont2_2015 = CPFFTdata;
simData3000_cont2_2015 = combineData(simData3000_cont2_2015,importData(stre3000_cont2_2015,'stre'));
simData3000_cont2_2015 = thresholdData(simData3000_cont2_2015, 25);
simData504330_cont2_2015 = CPFFTdata;
simData504330_cont2_2015 = combineData(simData504330_cont2_2015,importData(stre504330_cont2_2015,'stre'));
simData504330_cont2_2015 = thresholdData(simData504330_cont2_2015, 25);

simData000_cont3_2015 = CPFFTdata;
simData000_cont3_2015 = combineData(simData000_cont3_2015,importData(stre000_cont3_2015,'stre'));
simData000_cont3_2015 = thresholdData(simData000_cont3_2015, 25);
simData0300_cont3_2015 = CPFFTdata;
simData0300_cont3_2015 = combineData(simData0300_cont3_2015,importData(stre0300_cont3_2015,'stre'));
simData0300_cont3_2015 = thresholdData(simData0300_cont3_2015, 25);
simData3000_cont3_2015 = CPFFTdata;
simData3000_cont3_2015 = combineData(simData3000_cont3_2015,importData(stre3000_cont3_2015,'stre'));
simData3000_cont3_2015 = thresholdData(simData3000_cont3_2015, 25);
simData504330_cont3_2015 = CPFFTdata;
simData504330_cont3_2015 = combineData(simData504330_cont3_2015,importData(stre504330_cont3_2015,'stre'));
simData504330_cont3_2015 = thresholdData(simData504330_cont3_2015, 25);
