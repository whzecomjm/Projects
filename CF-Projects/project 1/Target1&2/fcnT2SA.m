function [ f ] = fcnT2SA( x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    c = [-x(1)*x(2)-10;
            x(1)*x(2)-x(1)-x(2)+1.5];
     if prod(c<=zeros(2,1))
        f = exp(x(1))*(4*x(1)^2+2*x(2)^2+4*x(1)*x(2)+2*x(2)+1);
     else 
         f =Inf;
     end
end
