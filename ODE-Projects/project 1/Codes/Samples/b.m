syms x y x0 y0; 
f =  cos(x)-sin(x)-y ;  n = 2 ; % 定义dy/dx= f(x ,y) 初值x0 y0一直算到n阶导数\f
ff = cos(x)+exp(-x);% 这是初值问题的解析解
c = [f];

for i = 2:5
    
c(i) = diff(c(i-1),x) + diff(c(i-1),y)*c(1); %% 各阶导数
end
subs_c = subs(c,[x,y],[x0,y0]);

taylor = y0 ;
for i= 1:n
   taylor = taylor + (subs_c(i)*(x-x0)^i)/factorial(i);  %n阶taylor展开
end
    % 在（x0,y0）处的n阶taylor展开
a = 0:1:5;
b = [2];
for i = 2:3
    b(i) = subs(taylor,[x0,y0,x],[a(i-1),b(i-1),a(i)]);
end
bb = subs(ff,x,a);
plot(a,b)
hold on
plot(a,bb,'r')
a,b,bb
k = [0,2];
h = 0.1;
for i = 2:51
    k(i,2) = k(i-1,2) + subs(f,[x,y],[k(i-1,1),k(i-1,2)])*h;
    k(i,1) = k(i-1,1) + h;  
end
k(11,2),k(31,2)
h = 0.01;
for i = 2:501
    k(i,2) = k(i-1,2) + subs(f,[x,y],[k(i-1,1),k(i-1,2)])*h;
    k(i,1) = k(i-1,1) + h;  
end
k(101,2),k(301,2)
%plot(c(:,1),c(:,2))

%dlmwrite('c.csv',[a',bb',b',(b-bb)'],'delimiter',',','newline','pc','precision',10);