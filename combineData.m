%Takes in two SimData objects as input and combines their values into one
%new SimData object.

function combinedData = combineData(simData1, simData2)

combinedData = CPFFTdata;

combinedData = simData1;

%Copy grain IDs
if isempty(combinedData.grain_id)
    combinedData.grain_id = simData2.grain_id;
end

%Copy Euler angles
if isempty(combinedData.euler)
    combinedData.euler = simData2.euler;
end

%Copy stresses
if isempty(combinedData.stress)
    combinedData.stress = simData2.stress;
end

%Copy strains
if isempty(combinedData.strain)
    combinedData.strain = simData2.strain;
end

%Copy TRSS
if isempty(combinedData.TRSS)
    combinedData.TRSS = simData2.TRSS;
end

%Copy Schmid Factor of active twin variant
if isempty(combinedData.schmidFactor)
    combinedData.schmidFactor = simData2.schmidFactor;
end

%Copy number of active twin variant
if isempty(combinedData.activeTwinVariant)
    combinedData.activeTwinVariant = simData2.activeTwinVariant;
end

end