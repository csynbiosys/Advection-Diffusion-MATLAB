function u0 = advdiffic(x,pars)

%u0 = [double(x==0.5); pars(2)*x];  %Kronecker delta IC
u0 = [1; pars(2)*x];
%u0 = [1; pars(2)*x];