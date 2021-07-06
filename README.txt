
Analysis code for simulation data presented in "Deformation twin interactions with grain boundary particles in multi-phase magnesium alloys", submitted to Acta Materialia.

Stress files at end of simulation are provided as .vtk files. Visualization can be perfomed using Paraview.

Analysis scripts are provided for use in MATLAB (developed using MATLAB R2019a). Dependencies:
	- MTEX open source toolbox (ver. 5.2.8) - https://mtex-toolbox.github.io/
	- export_fig - https://www.mathworks.com/matlabcentral/fileexchange/23629-export_fig


Naming conventions for files/variables [paper convention = file convention]:

	Crystal orientation cases are given based on the orientation of the secondary grain:
		- "Single Crystal" = 000
		- Basal Rotation = 3000
		- Basal Tilt = 0300
		- High Misorientation = 504330

	Microstructural case names are truncated to a 5 character moniker:
		- No Particle = nopar
		- Circular Particle = circl
		- Small Particle = smlpt
		- Large Particle = lrgpt
		- 10x Elastic Modulus = el10x
		- Triple Point = loc25
		- Affected Area = loc50
		- Continuous Boundary, 1x twin thickness = cont1
		- Continuous Boundary, 2x twin thickness = cont2
		- Continuous Boundary, 3x twin thickness = cont3


To run analysis:

1. Modify folder pointer in "loadAllStressData.m" if data is stored separately from scripts, then run.
	- Set pointer to folder containing the folders labeled "0-0-0", "0-30-0", etc. If using as provided from github, leave empty as-is.
	- Enters orientation folders and loads data from .vtk files
	- Thresholds data to remove 25 voxel buffer layer arounder border

2. Run "plotIncreasingOmega_SingleTwinVariant.m"
	- Calculates the resolved shear stresses for all six twin variants across the range of Omega region sizes
	- Determines the most active variant across the range of Omega region sizes
	- Plots both TRSS and TRSS ratios, exporting the figures as .png's

3. Run "plotIndividualTwinInfo.m"
	- Calculates number of potentially active twin variants and the most active variant for two cases
	- Generates histograms of the values within the Omega region (default size = 50, can be modified)
	- Exports .vtk files for visualization of processed data

Additional files:

	- The analysis code for calculating and plotting the backstresses, "calcBackstresses.m" is provided, but requires additional .vtk's generated during the simulation to run. These will be provided upon reasonable request.

	- The analysis and plotting code for generating the "curve with shadow" plots seen in Supplemental Figure 2 are provided in "plotOmegaMeanMinMax.m". This script runs on only a single CPFFTdata object at a time, which is inputted at the top of the file.

