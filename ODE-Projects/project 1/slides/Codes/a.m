
syms x y x0 y0; 
f =  y*(y-2) ;  n = 4 ; % 定义dy/dx= f(x ,y) 初值x0 y0一直算到n阶导数\f
ff = -2/(exp(- 2*x - log(2)) - 1);%0.25*(-1+5*exp(-2*x)+2*x);% 这是初值问题的解析解
c = f;

for i = 2:5
    
c(i) = diff(c(i-1),x) + diff(c(i-1),y)*c(1); %% 各阶导数
end
subs_c = subs(c,[x,y],[x0,y0]);

taylor = y0 ;
for i= 1:n
   taylor = taylor + (subs_c(i)*(x-x0)^i)/factorial(i);  %n阶taylor展开
end
    % 在（x0,y0）处的n阶taylor展开
a = 0:0.1:1;
b = 1;
for i = 2:11
    b(i) = subs(taylor,[x0,y0,x],[a(i-1),b(i-1),a(i)]);
end
bb = subs(ff,x,a);
plot(a,b-bb)
%hold on
%plot(a,bb,'r')
dlmwrite('a(ii).csv',[a',bb',b',(b-bb)'],'delimiter',',','newline','pc','precision',10);


