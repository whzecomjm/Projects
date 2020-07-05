function dif_1 = func(a ,b)
      syms x  y
       f = x - 2*y;
       dif_1 = subs(f,[x y],[a b]);
end