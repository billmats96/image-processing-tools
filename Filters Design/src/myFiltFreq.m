function imOut = myFiltFreq(imIn, someFilt)
%myFiltFreq - Implements filtering procedure of input image with a filter in Frequency Domain
%
% SYNTAX
%
%   imOut = myFiltFreq(imIn, someFilt)
%   
% INPUT
%
%   imIn        Grayscale Input Image        [M by M]
%   someFilt    Filter in Frquency Domain    [M by M] 
%
% OUTPUT
%
%   imOut      Filtered Image in Spatial Domain  [M by M]
%
% DESCRIPTION
%
%   myFilterFreq implements filtering in Frequency Domain. The
%   function first multiplies input image with a checkerboard function so
%   as to gather low frequency content in the center of image in frequnecy
%   Domain. Higher frequency content is gathered away from center (which 
%   represents DC component). This configuration is done to be combatible
%   with the design of filters we use. Image in Frequency Domain is
%   multiplied element-wise with input filter. The filtered image is once
%   again multiplied with checkerboard function to reconstruct image.
%    

N=size(imIn);
L=size(someFilt);

if N(1)~=N(2)
    error('Input image has to be MxM.')
end

if N(1)~=L(1) || N(2)~=L(2)
    error('Filter has to be same size as input image.'); 
end

imIn=imIn.*myCheckerboard(N);
imInFreq=fft2(imIn);
imOutFreq=imInFreq.*someFilt;
imOut=ifft2(imOutFreq);
imOut=imOut.*myCheckerboard(N);

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