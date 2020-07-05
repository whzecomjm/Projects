function [ f ] = fcnT1SA( x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    c = [x(1)^2+x(2)^2+x(3)^2+x(4)^2+x(1)-x(2)+x(3)-x(4)-8;
         x(1)^2+2*x(2)^2+x(3)^2+2*x(4)^2-x(1)-x(4)-10;
         2*x(1)^2+x(2)^2+x(3)^2+2*x(1)-x(2)-x(4)-5];
     if prod(c<=zeros(3,1))
        f = x(1)^2+x(2)^2+2*x(3)^2+x(4)^2-5*x(1)-5*x(2)-21*x(3)+7*x(4);
     else 
         f =Inf;
     end
end
