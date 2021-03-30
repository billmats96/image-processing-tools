function filtOut = myLowPassGauss(sigma, M)
%myLowPassGauss - Implements a Low Pass Gauss filter in Frequency Domain
%
% SYNTAX
%
%   filtOut = myLowPassGauss(sigma, M)
%   
% INPUT
%
%   sigma     Standard deviation of the function that defines cutoff frequency 
%   M         Filter's dimension     
%
% OUTPUT
%
%   filtOut    Filter implementation in Frequency Domain
%
% 


filtOut=zeros(M,M);

for i=1:M
    for j=1:M
        temp=sqrt((i-M/2-1)^2+(j-M/2-1)^2);  
        filtOut(i,j)=exp(-temp^2/(2*sigma^2));
    end
end

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