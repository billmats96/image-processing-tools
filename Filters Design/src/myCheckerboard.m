function a = myCheckerboard(n)
%myCheckerboard - Creates a nxn checkerboard matrix
%
% SYNTAX
%
%   a = myCheckerboard(n)
%   
% INPUT
%   
%   n    size of n by n matrix to be generated  
%
% OUTPUT
%
%   a    checkerboard matrix  [n by n]
%
% DESCRIPTION
%
%   myCheckerboard createas a nxn checkerboard matrix. Each element (n1,n2)
%   gets a values defined by (-1)^(n1+n2).

a = ones(n);

for i=1:n
    for m=mod(i+2,2)+1:2:n
        a(i,m)=-1;
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

