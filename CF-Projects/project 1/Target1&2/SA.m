m% this is SA approach in

x0_1 = rand(1,4) %% innitial guess
x0_2 = rand(1,2)
%options = optimoptions(@fmincon,'Algorithm','sqp','PlotFcns');
options = optimoptions(@fmincon,'Algorithm','sqp','PlotFcns',{@optimplotfval,@optimplotfunccount,@optimplotstepsize});
options1 =options;
option1 = saoptimset('simulannealbnd');
option = saoptimset(option1,'PlotFcns',{@saplotbestf,@saplotf,@saplottemperature,@saplotstopping});
%option = saoptimset('simulannealbnd');
tic;

[x1,f1val] = simulannealbnd(@fcnT1SA,x0_1',[],[],option) %SA
disp(['SA for 1st task need ',num2str(toc)]);  
tic;

[x1,f1val] = ... 
fmincon(@fcnT1,x0_1,[],[],[],[],[],[],@conT1,options)
disp(['fminbnd for 1st task need ',num2str(toc)]);

tic;

[x2,f2val] = simulannealbnd(@fcnT2SA,x0_2',[],[],option)
disp(['SA for 2nd task need ',num2str(toc)]);
tic;

[x2,f2val] = ... 
fmincon(@fcnT2,x0_2,[],[],[],[],[],[],@conT2,options1)
disp(['fminbnd for 2nd task need ',num2str(toc)]);
