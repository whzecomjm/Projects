syms x y 
f = x - 2*y; % dy/dx = f 
x0 = 0 ; y0 = 1 ; % ³õÖµ
f1 = diff(f,x) + diff(f,y)*f; 
ff = 0.25*(-1+5*exp(-2*x)+2*x);
h = 0.5; % step 
n = 11; % ²½Êý
c = [x0,y0,x0,y0];
for i = 2:n
    h1 = abs(4.1873/(subs(f1,[x,y],[c(i-1,1),c(i-1,2)])+10)+0.1);
    c(i,2) = c(i-1,2) + subs(f,[x,y],[c(i-1,1),c(i-1,2)])*h1;
    c(i,1) = c(i-1,1) + h1;  
end

for i = 2:n
   
    c(i,4) = c(i-1,4) + subs(f,[x,y],[c(i-1,3),c(i-1,4)])*h;
    c(i,3) = c(i-1,3) + h;  
end

[c(:,3),c(:,4),c(:,1),c(:,2)]
plot(c(:,1),c(:,2),'r')
hold on
plot(0:0.1:5,subs(ff,0:0.1:5),'b')
hold on
plot(c(:,3),c(:,4),'k')