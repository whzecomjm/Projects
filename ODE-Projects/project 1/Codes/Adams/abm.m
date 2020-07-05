
function [hi hello] = abm(x,y)
h = x(2) - x (1);
for i =1:4
dif_1(i) =func(x(i),y(i));
end
p =  y(4) + h/24*dif_1*[-9 37 -59 55]'; %predictor
x(5) = x(4) + h
dif_1(5) = func(x(5),p);
y(5) = y(4) + h/24*[1 -5 19 9]*dif_1(2:5)';
hi = x(5) 
hello = y(5)
end                                                                                                                                                 