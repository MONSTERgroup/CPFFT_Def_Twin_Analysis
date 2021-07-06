%Takes the active twin variant info and prints it to a .vtk for
%visualization in Paraview. Inputs are the simulation data, the 2D twin 
%variant matrix and the filename as a string. The script will add the 
%'.vtk' file extension to the name.

function createTwinVariantFile(simData, twinVariants, twinNumbers, fileName)

%Enter the desired output file name
fileName = [fileName,'.vtk'];

fileID = fopen(fileName, 'w');
fprintf(fileID, '# vtk DataFile Version 2.0\n#\n');
fprintf(fileID, 'ASCII\n');
fprintf(fileID, 'DATASET STRUCTURED_POINTS\n');
fprintf(fileID, 'DIMENSIONS     2  452  452\n');
fprintf(fileID, 'ASPECT_RATIO 1 1 1\n');
fprintf(fileID, 'ORIGIN 0 0 0\n');
fprintf(fileID, 'CELL_DATA   203401\n');

%% Print the grain ID
fprintf(fileID, 'SCALARS grain  int\n');
fprintf(fileID, 'LOOKUP_TABLE default\n');

for i = 1:length(simData.grain_id)
    for j = 1:length(simData.grain_id)
        fprintf(fileID, '    %d\n',simData.grain_id(i,j));
    end
end

%% Print the twin variants
fprintf(fileID, 'SCALARS TwinVar  float\n');
fprintf(fileID, 'LOOKUP_TABLE default\n');

for i = 1:length(twinVariants)
    for j = 1:length(twinVariants)
        if isnan(twinVariants(i,j))
            fprintf(fileID, '    %3.2f\n',0.00);
        else
            fprintf(fileID, '    %3.2f\n',twinVariants(i,j));
        end
    end
end

%% Print the number of active twins
fprintf(fileID, 'SCALARS NumVar  float\n');
fprintf(fileID, 'LOOKUP_TABLE default\n');

for i = 1:length(twinNumbers)
    for j = 1:length(twinNumbers)
        if isnan(twinNumbers(i,j))
            fprintf(fileID, '    %3.2f\n',0.00);
        else
            fprintf(fileID, '    %3.2f\n',twinNumbers(i,j));
        end
    end
end