syms x y 
f = 2*y; % dy/dx = f 
x0 = 0 ; y0 = 1 ; 
h = 0.1; % step 
n = 50; % ²½Êý
c = [0,0];
c(1,1)=x0;
c(1,2)=y0;
k = c(1,2) + subs(f,[x,y],[c(1,1),c(1,2)])*h;
q = c(1,2) - subs(f,[x,y],[c(1,1),c(1,2)])*h;
for i = 2:n
    if i==2
    c(i,1) = c(i-1,1) + h;
    w = c(i-1,1) - h;
    k1 = subs(f,[x,y],[w,q]);
    k2 = subs(f,[x,y],[c(i-1,1),c(i-1,2)]);
    k3 = subs(f,[x,y],[c(i,1),k]);
    c(i,2) = m + h*(k1+4*k2+k3)/3;
    else
    kk = c(i-1,2) + subs(f,[x,y],[c(i-1,1),c(i-1,2)])*h;    
    c(i,1) = c(i-1,1) + h;
    kk1 = subs(f,[x,y],[c(i-2,1),c(i-2,2)]);
    kk2 = subs(f,[x,y],[c(i-1,1),c(i-1,2)]);
    kk3 = subs(f,[x,y],[c(i,1),kk]);
    c(i,2) = c(i-2,2) + h*(kk1+4*kk2+kk3)/3;
    end
end
d = [x0,y0] %righthand
for i = 2:n
    k = d(i-1,2) + subs(f,[x,y],[d(i-1,1),d(i-1,2)])*h;
    d(i,1) = d(i-1,1) + h;
    d(i,2) = d(i-1,2) + h*subs(f,[x,y],[d(i,1),k]);
end
e = [x0,y0] %euler
for i = 2:n
    e(i,2) = e(i-1,2) + subs(f,[x,y],[e(i-1,1),e(i-1,2)])*h;
    e(i,1) = e(i-1,1) + h;  
end
%plot(e(:,1),e(:,2),'g.',e(:,1),e(:,2),'g',d(:,1),d(:,2),'k.',c(:,1),c(:,2),'r.',c(:,1),2*c(:,1)-1+2*exp(-2*c(:,1)),'b.',d(:,1),d(:,2),'k',c(:,1),c(:,2),'r',c(:,1),2*c(:,1)-1+2*exp(-2*c(:,1)),'b')
 d1 = [0,0]
for i=2:n
    z=exp(2*c(i,1));
    d1(i,1)=d(i,1);
    d1(i,2)=abs(d(i,2)-z);
end
d1
e1 = [0,0]
for i=2:n
    z=exp(2*c(i,1));
    e1(i,1)=e(i,1);
    e1(i,2)=abs(e(i,2)-z);
end
c1 = [0,0]
for i=2:n
    z=exp(2*c(i,1));
    c1(i,1)=e(i,1);
    c1(i,2)=abs(c(i,2)-z);
end    
[d1,e1(:,2),c1(:,2)]
plot(e(:,1),e(:,2),'k.',e(:,1),e(:,2),'y',d(:,1),d(:,2),'k.',c(:,1),c(:,2),'r.',c(:,1),exp(2*c(:,1)),'b.',d(:,1),d(:,2),'k',c(:,1),c(:,2),'r',c(:,1),exp(2*c(:,1)),'b')
%%%%
%Because the whole process is just doing the integral of f(x,y) from one
%point to the other, we can use not only righthand, lefthand, or tapezoidal
%rule, but also simpson's rule to do it.