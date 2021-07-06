%Thresholds the data to remove the buffer layer (thickness = t_buf) from 
%around the outside edge
function trimmedData =thresholdData(simData,t_buf)
   
    trimmedData = CPFFTdata;
    n = 1;
    m = 1;
    
    for i = t_buf:(500-t_buf)
        for j= t_buf:(500-t_buf)
            if not(isempty(simData.grain_id))
                trimmedData.grain_id(n,m) = simData.grain_id(i,j);
            end
            if not(isempty(simData.euler))
                trimmedData.euler{n,m} = simData.euler{i,j};
            end
            if not(isempty(simData.stress))
                trimmedData.stress{n,m} = simData.stress{i,j};
            end
            if not(isempty(simData.strain))
                trimmedData.strain{n,m} = simData.strain{i,j};
            end
            if not(isempty(simData.TRSS))
                trimmedData.TRSS(n,m) = simData.TRSS(i,j);
            end
            if not(isempty(simData.schmidFactor))
                trimmedData.schmidFactor(n,m) = simData.schmidFactor(i,j);
            end
            if not(isempty(simData.activeTwinVariant))
                trimmedData.activeTwinVariant(n,m) = simData.activeTwinVariant(i,j);
            end
            m = m+1;
        end
        m = 1;
        n = n+1;
    end
end