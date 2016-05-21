function advdiff(ka,R)
m = 0;
x = [0:0.01:1]; 
t = [0:0.001:1];
pars=[ka,R];
sol = pdepe(m,@advdiffpde,@advdiffic,@advdiffbc,x,t,[],pars);
u1 = sol(:,:,1);
u2 = sol(:,:,2);

save(strcat('logsensing_Ka=',num2str(ka,'%.5f'),'_R=',num2str(R,'%.5f'),'.mat'),'sol','t','x','ka','R')

% figure(gcf)
% subplot(121); surf(x,t,u1)
% title('u1(x,t)')
% xlabel('Distance x')
% ylabel('Time t')
% 
% figure(gcf)
% subplot(122); surf(x,t,u2)
% title('u2(x,t)')
% xlabel('Distance x')
% ylabel('Time t')


