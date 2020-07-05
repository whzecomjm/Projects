syms x y;
f =x-2*y;
x0 = 0; y0 = 1;
fx = diff(f,x) + diff(f,y)*f;
fe = 0.25*(-1+5*exp(-2*x)+2*x);
n=11;
c=[x0,y0,x0,y0,x0,y0];
for i=2:n
    A=subs(fx,[x,y],[c(i-1,5),c(i-1,6)])/((subs(f,[x,y],[c(i-1,1),c(i-1,2)])^3)+20);
    h1 = abs(0.03164*(1/A)+0.05);
    c(i,2) = c(i-1,2) + subs(f,[x,y],[c(i-1,1),c(i-1,2)])*h1;
    c(i,6) = c(i-1,6) + subs(f,[x,y],[c(i-1,5),c(i-1,6)])*h1;
    c(i,1) = c(i-1,1) + h1;  
end
for i=2:n
    h=0.5;
    c(i,4) = c(i-1,4) + subs(f,[x,y],[c(i-1,3),c(i-1,4)])*h;
    c(i,3) = c(i-1,3) + h;
end
format long
xlswrite('root',[c(:,3),abs(c(:,4)-subs(fe,c(:,3))),c(:,1),abs(c(:,2)-subs(fe,c(:,1)))])
plot(0:0.1:5,subs(fe,0:0.1:5),'b')
hold on
plot(c(:,1),c(:,2),'r')
hold on
plot(c(:,3),c(:,4),'k')