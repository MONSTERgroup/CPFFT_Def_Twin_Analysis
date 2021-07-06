%Pulls the 1-dimensional region of interest along the twin over the entire
%500x500 SimData
%WORK IN PROGRESS
function [ROI, tipPos] = pullTwinROI(simData)

ROI = CPFFTdata;

%Get line
for i = length(simData.grain_id):-1:1
    if not(isempty(simData.grain_id))
        ROI.grain_id(1,i) = simData.grain_id(i,i);
    end
    if not(isempty(simData.euler))
        ROI.euler{1,i} = simData.euler{i,i};
    end
    if not(isempty(simData.stress))
        ROI.stress{1,i} = simData.stress{i,i};
    end
    if not(isempty(simData.strain))
        ROI.strain{1,i} = simData.strain{i,i};
    end
    if not(isempty(simData.TRSS))
        ROI.TRSS(1,i) = simData.TRSS(i,i);
    end
    if not(isempty(simData.schmidFactor))
        ROI.schmidFactor(1,i) = simData.schmidFactor(i,i);
    end
    if not(isempty(simData.activeTwinVariant))
        ROI.activeTwinVariant(1,i) = simData.activeTwinVariant(i,i);
    end
end

%Find pos = 0 along twin interface from grain data
tipPos = 0;

for i = length(ROI.grain_id):-1:1
    if ROI.grain_id(i) == 3
        tipPos = i;
    end
end


end