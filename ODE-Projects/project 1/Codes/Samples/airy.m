
syms x y x0 y0 y1; % һ�׵�����y1��y��x0��=y0
f =  y*x ;  n = 5 ; % ����d2y= f(x ,y) ��ֵx0 y0һֱ�㵽n�׵���\f
 x0 = 4;%initial condition
 y0 = 1;%initial condition
 y1 =2 ;%initial condition
c = f;

for i = 2:5
    
c(i) = diff(c(i-1),x) + diff(c(i-1),y)*c(1); %% ���׵���
end
subs_c = subs(c,[x,y],[x0,y0]);

taylor = y0 +y1*(x-x0);
for i= 1:n
   taylor = taylor + (subs_c(i)*(x-x0)^(i+1))/factorial(i);  %n��taylorչ��
end
    % �ڣ�x0,y0������n��taylorչ��
taylor

xx = 0��0.1:20;
yy = subs��taylor,xx��;
plot��xx,yy��

%����������������ʽ���еģ������
%{
syms x y x0 y0 y1; % һ�׵�����y1��y��x0��=y0
f =  y*x ;  n = 5 ; % ����d2y= f(x ,y) ��ֵx0 y0һֱ�㵽n�׵���\f
 x0 = 4;%initial condition
 y0 = 1;%initial condition
 y1 =2 ;%initial condition
c = f;

for i = 2:5
    
c(i) = diff(c(i-1),x) + diff(c(i-1),y)*c(1); %% ���׵���
end
subs_c = subs(c,[x,y],[x0,y0]);

taylor = y0 +y1*(x-x0);
for i= 1:n
   taylor = taylor + (subs_c(i)*(x-x0)^(i+1))/factorial(i);  %n��taylorչ��
end
    % �ڣ�x0,y0������n��taylorչ��
taylor
 
taylor =
 
2*x + 4*(x - 4)^2 + (17*(x - 4)^3)/2 + (38*(x - 4)^4)/3 + (355*(x - 4)^5)/24 + (431*(x - 4)^6)/30 - 7
%}
