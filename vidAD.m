function showAD(ka,R)
load(strcat('logsensing_Ka=',num2str(ka,'%.5f'),'_R=',num2str(R,'%.5f'),'.mat'))
    for i=1:length(t)
        figure(gcf);
        plot(x,((sin(2*pi*2.5.*x)+1)./2)/(10^-1)./(max(((sin(2*pi*2.5.*x)+1)./2)/(10^-1))),x,sol(i,:,1));
        axis([0 1 0 max(max(sol(:,:,1)))*1.1]);
        title(num2str(t(i),'%1.3f'));
        pause(0.03);
    end
end