
function [ c,ceq ] = conT2( x )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
     ceq = [];
     c = [-x(1)*x(2)-10;
            x(1)*x(2)-x(1)-x(2)+1.5];

end
%% reference: http://www.mathworks.com/help/optim/ug/nonlinear-inequality-constraints.html



