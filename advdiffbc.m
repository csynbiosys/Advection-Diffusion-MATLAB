function [pl,ql,pr,qr] = advdiffbc(xl,ul,xr,ur,t,pars)
pl = [0; ul(2)];  
ql = [1; 0]; 
pr = [0; ur(2)-pars(2)]; %change concentration
qr = [1; 0]; 