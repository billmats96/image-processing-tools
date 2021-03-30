function filtOut = myBandPassButterworthDirSmooth(cutOffLow , cutOffHigh , n, M, theta, phi, avgFilterType, MS, sigmaG)
%myBandPassButterworthDirSmooth - Implements a smooth directional Band Pass Butterworth filter in Frequency Domain
%
% SYNTAX
%   
%   filtOut = myBandPassButterworthDirSmooth(cutOffLow , cutOffHigh , n, M,
%   theta, phi, avgFilterType, MS) -> for moving average filter type
%
%   filtOut = myBandPassButterworthDirSmooth(cutOffLow , cutOffHigh , n, M, 
%   theta, phi, avgFilterType, MS, sigmaG) -> for gaussian averaging filter type 
%   
% INPUT
%
%   cutOffLow      Low CutOff frequency
%   cutOffHigh     High CutOff frequency    
%   n              Filter's order
%   M              Filter's dimension
%   theta          Filter's orientation (direction) (in degrees)
%   phi            Filter's size of circular sector (in degrees)
%   avgFilterType  The type of averaging filter to smooth edges ('M' for moving average, 'G' for gaussian)   
%   MS             Averaging filter's dimension
%   sigmaG         standard deviation of gaussian averaging filter 
%
% OUTPUT
%
%   filtOut      Filter implementation in Frequency Domain
%
% DESCRIPTION
%
%   myBandPassButterworthDirSmooth uses myBandPassButterworthDir to create 
%   a directional Butterworth Band Pass filter and then applies an
%   average filter to smooth the "edges" of the produced filter.The averaging
%   filter can be either moving average or gaussian (parametre
%   avgFilterType). The dimension of averaging filter can be adjusted by 
%   changing the parameter MS. The final filter output is cropped so as its 
%   dimension is   M (instead of M+MS-1). 
%    


filtOut = myBandPassButterworth(cutOffLow , cutOffHigh , n, M);
h = myDirMask(theta,phi,M);
filtOut = filtOut.*h;

if avgFilterType == 'M' 
    h_average = fspecial('average',MS);
elseif avgFilterType == 'G' 
    h_average = fspecial('gaussian',MS,sigmaG);
else
    error("Wrong input of averaging Filter");
end
    
filtOut = conv2(filtOut,h_average);
filtOut = filtOut(ceil(MS/2):M+ceil(MS/2)-1,ceil(MS/2):M+ceil(MS/2)-1);

end

%%-------------------------------------------------------------------------
%
% AUTHOR
%
%   Matsoukas Vasileios,
%   Undergraduate Student, Department of Electrical and Computer Engineering 
%   Aristotle University of Thessaloniki, Greece
%   AEM:8743
%   email: vmatsouk@auth.gr
%
% -------------------------------------------------------------------------