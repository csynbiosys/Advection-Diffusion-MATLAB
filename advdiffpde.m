function [c,f,s] = advdiffpde(x,t,u,DuDx,pars)
% fprintf('%5d %2d %5d\n',pars(1),pars(2),t)
Ki=0.001;
C=pars(2)*x; %change concentration
Ka=pars(1); %change Ka

Vc=DuDx(2)/((Ki+C)*(Ka+C));

c = [1; 1];
f = [((sin(2*pi*2.5.*x)+1)./2)/10;1].*DuDx;%+[-Vc; 0].*u; % changed DC DB =1;
s = [0;0]; 