function m = myFillMat(m,theta)
%myFillMat - Takes a matrix that contains a line and fills the part below the line with ones 
%
% SYNTAX
%
%   m = myFillMat(m,theta)
%   
% INPUT
%
%   m           Matrix that represents a line (produced by myLine2mat) [N by N]
%   theta       The angle of the line in the m matrix 
%
% OUTPUT
%
%   m           Output matrix with ones in the part below the line     [N by N]
%
% DESCRIPTION
%
%   myFillMat receives a matrix produced by myLine2mat and the angle of the
%   line in the matrix. The function fills the part of the matrix, below the
%   line, with ones. Depending on the angle, the matrix m is rotated so it
%   can be filled with ones correctly.
%  

theta=mod(theta,360); %Every angle, including negative ones, is reduced to [0 360]
N = size(m);
N = N(1);

%% Initial rotations depending on angle
if theta>=135 && theta<180
    m = fliplr(m);
end
if theta>=180 && theta<225
    m = rot90(m,-1);
end
if theta>=225 && theta<315
    m = fliplr(m);
end
if theta>=315 && theta<360
    m = fliplr(m);
end


%% Start Filling with ones
for i=1:N
    if sum(m(i,:))~=0      %check if there exists at least one "1" in the column
        j=1;
        while m(i,j)==0    %fill with ones
            m(i,j)=1;
            j=j+1;
        end
    elseif i>2 
        if sum(m(i-1,:))>N-2 % a line may not contain "1" but it has to be 
            j=1;             % filled because the row above was filled with  
            while m(i,j)==0  % ones which means that the following rows of the                            
               m(i,j)=1;     % matrix have to be filled.
               j=j+1;
               if j==N 
                   m(i,j)=1;
                   break
               end
            end
       end
   end
end


%% Final rotations depending on angle 
if theta>=135 && theta<180
    m = flipud(m);
end
if theta>=180 && theta<225
    m=rot90(m,+1); 
    m = flipud(m);
    m = fliplr(m);
end
if theta>=225 && theta<315
    m = fliplr(m);
end
if theta>=315&& theta<360
     m = fliplr(m);
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

