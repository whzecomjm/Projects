syms x y 
f = y*sin(x); % dy/dx = f 
x0 = 0 ; y0 = 1 ; % 初值
h = 0.1; % step 
n = 11; % 步数
c = 0;
d = 0;
e = 0;
g = 0;
j = [x0,y0;]
k = [x0,y0;]
l = [x0,y0;]
for i = 1:11 
    c = subs(f,[x,y],[j(i,1),j(i,2)]);
    d = subs(f,[x,y],[j(i,1)+h/2,j(i,2)+h*c/2]);
    e = subs(f,[x,y],[j(i,1)+h/2,j(i,2)+h*d/2]); 
    g = subs(f,[x,y],[j(i,1)+h,j(i,2)+h*e]);
    j(i+1,2) = j(i,2) + (c+2*d+2*e+g)*h/6;
    j(i+1,1) = j(i,1) + h; 
    k(i+1,2) = k(i,2) + subs(f,[x,y],[k(i,1),k(i,2)])*h;
    k(i+1,1) = k(i,1) + h;           % Eular-method
    l(i+1,1) = l(i,1)+ h;
    l(i+1,2) = exp(1-cos(l(i+1,1)));% 原函数
end % Runge-Kutta method
plot(j(:,1),j(:,2),'b.')
hold on
plot(k(:,1),k(:,2),'r')
hold on
plot(l(:,1),l(:,2),'g')
axis equal
xlswrite('long.xls',[j(:,1),j(:,2),k(:,2),l(:,2),(j(:,2)-l(:,2))])