function m = myLine2mat(theta,N)
%myLine2mat - Creates a line and then maps it into a matrix
%
% SYNTAX
%
%   m = myLine2mat(theta,N)
%   
% INPUT
%
%   theta       Angle of the line (in degrees)
%   N           Dimension of output matrix    
%
% OUTPUT
%
%   m           Output matrix  [N by N]
%
% DESCRIPTION
%
%   myLine2mat takes as input a certain angle theta and dimension N and
%   creates a line that is represented by a matrix of size NxN. The
%   function is implemented for angles in [0,90] degrees and handles the
%   rest of angles with the same way, by applying appropriate rotations in the
%   output matrix.
%    


theta=mod(theta,360);       %Every angle, including negative ones, is reduced to [0 360] 
flag=0;                     %boolean flag that defines if a final flip LR is needed
 
if theta>90 && theta<=180   %Specify the category of input angle
     theta=180-theta;
     flag=1;
elseif theta>180 && theta<=270
     theta=theta-180;
elseif theta>270 && theta<=360
     theta=360-theta;
     flag=1;
end


m = zeros(N);
center = ceil((size(m)+1)/2);

x0=center(1);   %point x0 of the line is centered at the center of the matrix
y0=center(2);   %point y0 of the line is centered at the center of the matrix
len=1;          %initial line length

x1=x0+len*cosd(theta);  % initial value of x1 
y1=y0+len*sind(theta);  % initial value of y1


%Find final values of x1,y1. Iterate while x1,y1 do not exceed matrix's
%boundaries
while floor(x1)<N && floor(y1)<N 
    len=len+1;
    x1=x0+len*cosd(theta);
    y1=y0+len*sind(theta);
end


p1=[x0, y0];               %point 1 of the line
p2=[floor(x1), floor(y1)]; %point 2 of the line

%Ensure the new x-dimension has the largest displacement
[max_delta, ix]=max(abs(p2 - p1));
iy=length(p1)-ix+1;

%Draw a line from p1 to p2 on matrix m
x=p1(ix):p2(ix);
y=round((x-p1(ix))*(p2(iy)-p1(iy))/(p2(ix)-p1(ix))+p1(iy));
m(sub2ind(size(m),y,x))=1;
m=shiftdim(m,ix>iy); %transpose result if necessary

temp=fliplr(m);
temp=flipud(temp);
m=temp+m;


 if(flag) %final flip if needed
     m=fliplr(m);
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