%Calculates the active predicted active twin variant at each point, using
%the TRSS value with the greatest magnitude. Requires the Euler angles for
%the secondary grain as an array, in degrees, and the CRSS value for
%twinning to use as a threshold, in MPa. Set CRSS to 0 to exclude.

function [activeVariants, numActive] = calcActiveVariants(simData, Euler, CRSS)

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
 
 %Use Euler angles supplied to generate the grain 2 orientation
 o2 = orientation(Euler(1)*degree, Euler(2)*degree, Euler(3)*degree, 'Euler',CS);
 
 % Define the twinning system and symmetrise it
    % Note that the second number is a critical TRSS. You want to set it
    % high so that you don't actually get twinning predicted by MTEX. 
 sStwin = slipSystem.twinT1(CS,1000);
 sStwin = sStwin.symmetrise('antipodal');
 
 % Rotate the twin system into the correct grain orientation
 o1Twin = o1 * sStwin;
 o2Twin = o2 * sStwin; 
 
 % Turn the stress data into max TRSS values
cauchy = zeros(3,3);
TRSSvariants = zeros(1,6);
TRSSvalues = NaN(length(simData.stress),length(simData.stress));
activeVariants = NaN(length(simData.stress),length(simData.stress));
numActive = NaN(length(simData.stress),length(simData.stress));

for i = 1:length(simData.stress)
    for j = 1:length(simData.stress)
            cauchy = simData.stress{i,j};
            if (simData.grain_id(i,j) == 1 || simData.grain_id(i,j) == 2)
                if simData.grain_id(i,j) == 1
                    TRSSvariants = RSS(o2Twin,stressTensor(cauchy));
                elseif (simData.grain_id(i,j) == 2)
                    TRSSvariants = RSS(o1Twin,stressTensor(cauchy));
                end
                TRSSvariants = abs(TRSSvariants);
                if CRSS == 0
                    [TRSSvalues(i,j),activeVariants(i,j)] = max(max(TRSSvariants));
                else
                    numActive(i,j) = sum(max(TRSSvariants) >= CRSS);
                    if max(max(TRSSvariants)) >= CRSS
                        [TRSSvalues(i,j),activeVariants(i,j)] = max(max(TRSSvariants));
                    end
                end
%                 if TRSSvariants < 0
%                     [TRSSvalues(i,j),activeVariants(i,j)] = min(min(TRSSvariants));
%                 end
            end
    end
end
 
end