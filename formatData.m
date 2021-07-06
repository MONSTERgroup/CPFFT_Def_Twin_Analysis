%Let's try and make this shit more readable
function data = formatData(inputData)

    data = [];
    wid = 500;
    hei = 500;

    for i = 1:hei
        for j = 1:wid
             data(i,j) = inputData.data(j+(wid*(i-1)),1);
        end
    end
end



