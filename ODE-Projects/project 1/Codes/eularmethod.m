syms x y 
f = x^2 - y; % dy/dx = f 
x0 = -2.5 ; y0 = 1 ; % ³õÖµ
h = 0.3; % step 
n = 10; % ²½Êý
c = [x0,y0];
for i = 2:n
    c(i,2) = c(i-1,2) + subs(f,[x,y],[c(i-1,1),c(i-1,2)])*h;
    c(i,1) = c(i-1,1) + h;  
end
plot(c(:,1),c(:,2))