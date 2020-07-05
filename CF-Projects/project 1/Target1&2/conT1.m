function [ c,ceq ] = conT1( x )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
     c = [x(1)^2+x(2)^2+x(3)^2+x(4)^2+x(1)-x(2)+x(3)-x(4)-8;
         x(1)^2+2*x(2)^2+x(3)^2+2*x(4)^2-x(1)-x(4)-10;
         2*x(1)^2+x(2)^2+x(3)^2+2*x(1)-x(2)-x(4)-5];
     ceq = [];

end
%% reference: http://www.mathworks.com/help/optim/ug/nonlinear-inequality-constraints.html
