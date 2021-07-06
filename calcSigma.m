%Takes two cases and a sigma region width as input, then pulls the
%one-dimensional TRSS values along the twin line, determines the sigma
%region, calculates the difference between the cases at all points in
%sigma, and returns the mean and standard deviation.

function [meanSigma, stdDevSigma] = calcSigma(step15, step2015, sigmaLength)

line15 = pullTwinROI(step15);
line2015 = pullTwinROI(step2015);

sigmaTRSSvalues15 = [];
sigmaTRSSvalues2015 = [];
index = 1;
tipPos = 0;

for i = length(line15.grain_id):-1:1
    if line15.grain_id(i) == 3
        tipPos = i;
    end
end

sigmaCenter = length(line15.grain_id) - (length(line15.grain_id) - tipPos)/2;
sigmaHigh = int16(sigmaCenter + sigmaLength/2);
sigmaLow = int16(sigmaCenter - sigmaLength/2);

for i = sigmaLow:1:sigmaHigh
    sigmaTRSSvalues15(index) = line15.TRSS(i);
    sigmaTRSSvalues2015(index) = line2015.TRSS(i);
    index = index + 1;
end

sigmaDiff = sigmaTRSSvalues15 - sigmaTRSSvalues2015;

meanSigma = mean(sigmaDiff);
stdDevSigma = std(sigmaDiff);

end