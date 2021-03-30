function filtOut = myLowPassIdeal(cutOff, M)
%myLowPassIdeal - Implements an ideal Low Pass filter in Frequency Domain
%
% SYNTAX
%
%   filtOut = myLowPassIdeal(cutOff, M)
%   
% INPUT
%
%   cutOff     Cutoff frequency       
%   M          Filter's dimension     
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
        if (temp <= cutOff ) 
            filtOut(i,j)=1;
        end
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