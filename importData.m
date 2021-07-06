%Takes a file and it's type (stre, TRSS, ori, etc) and formats all data
%accordingly into appropriate matrixes
function simdata = importData(filename, filetype)

simdata = CPFFTdata;

if strcmp(filetype,'ori')
    simdata.grain_id = formatData(importfile(filename,11,250010));
    phi1 = formatData(importfile(filename,250013,500012));
    phi = formatData(importfile(filename,500015,750014));
    phi2 = formatData(importfile(filename,750017,1000016));
    simdata.euler = cell(500);
   for i = 1:500
       for j = 1:500
           simdata.euler{i,j} = [phi1(i,j); phi(i,j); phi2(i,j)];
       end
   end
end

if strcmp(filetype,'stre')
   simdata.grain_id = formatData(importfile(filename,11,250010));
   s11 = formatData(importfile(filename,250013,500012));
   s22 = formatData(importfile(filename,500015,750014));
   s33 = formatData(importfile(filename,750017,1000016));
   s23 = formatData(importfile(filename,1000019,1250018));
   s13 = formatData(importfile(filename,1250021,1500020));
   s12 = formatData(importfile(filename,1500023,1750022));
   simdata.stress = cell(500);
   for i = 1:500
       for j = 1:500
           simdata.stress{i,j} = [s11(i,j) s12(i,j) s13(i,j); s12(i,j) s22(i,j) s23(i,j); s13(i,j) s23(i,j) s33(i,j)];
       end
   end
end
   
if strcmp(filetype,'Etot')
   simdata.grain_id = formatData(importfile(filename,11,250010));
   e11 = formatData(importfile(filename,250013,500012));
   e22 = formatData(importfile(filename,500015,750014));
   e33 = formatData(importfile(filename,750017,1000016));
   e23 = formatData(importfile(filename,1000019,1250018));
   e13 = formatData(importfile(filename,1250021,1500020));
   e12 = formatData(importfile(filename,1500023,1750022));
   simdata.strain = cell(500);
   for i = 1:500
       for j = 1:500
           simdata.strain{i,j} = [e11(i,j) e12(i,j) e13(i,j); e12(i,j) e22(i,j) e23(i,j); e13(i,j) e23(i,j) e33(i,j)];
       end
   end
end

if strcmp(filetype,'TRSS')
    simdata.grain_id = formatData(importfile(filename,11,250010));
    simdata.TRSS = formatData(importfile(filename,250013,500012));
end

end