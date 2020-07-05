syms x
xx = 0:0.5:1.5;
n = 10;
f = 0.25*(-1+5*exp(-2*x)+2*x);
k = subs(f,x,xx);
ff = k(1:4);
for i = 5:n
[xx(i) ff(i)] = abm(xx(i-4:i-1),ff(i-4:i-1));
end
exact = subs(f,x,xx)
plot(xx,exact,'g:');
hold on
plot(xx,ff,'r:')
m =  [xx' exact' ff']
dlmwrite('hello.csv',m,'delimiter',',','newline','pc','precision',10)