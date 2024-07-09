%% January 17, 2024
%% written by Gabriela Cirtala
%% plots dendritic voltages for different PF numbers
%% calculates PAR for branch5;
%% % PF Activation time now corresponds to time 0

%vtip_mat contains the voltage data recorded at the tip (p1) of branch 5 for 1CaP for PF in [2::2:150]
%vtip_mat2 contains the voltage data recorded at the second tip (p2) of branch 5 for 1CaP for PF in [2:2:150]
%vprox_mat contains the voltage data recorded at the proximal point p3 of branch 5 for 1CaP for PF in [2:2:150]
%vprox_mat2 contains the voltage data recorded at the proximal point p4 of branch 5 for 1CaP for PF in [2:2:150]

clear all
close all

t = 0:0.02:600; % define time step and final simulation time
iter_list =1:75; % define number of simulations considered
nb_syn = [2:2:150]; %define PF synapses and PF step considered

%% load data obtained from Neuron code corresponding to Branch3.hoc
sn='003_001_005_';
vtip_mat = [];
vprox_mat = [];
vtip_mat2 = [];
vprox_mat2 = [];
for iter = iter_list
  vtip = load([sn num2str(iter,'%03.f') '_001_vbr5_dist.dat']);
   vtip_mat=[vtip_mat vtip];
   vtip2 = load([sn num2str(iter,'%03.f') '_001_vbr5_dist2.dat']);
   vtip_mat2=[vtip_mat2 vtip2];
   vprox = load([sn num2str(iter,'%03.f') '_001_vbr5_prox.dat']);
   vprox_mat=[vprox_mat vprox];
   vprox2 = load([sn num2str(iter,'%03.f') '_001_vbr5_prox2.dat']);
   vprox_mat2=[vprox_mat2 vprox2];
end


%% plots Figure S3E: voltage at the distal point(Vp1) for different PF #
figure(1)
plot(t,vtip_mat(:,40),'Color','[0 0.4470 0.7410]','LineWidth',2.5)
hold on
plot(t,vtip_mat(:,45),'Color','[0.8500 0.3250 0.0980]','LineWidth',2.5)
hold on
plot(t,vtip_mat(:,47),'Color','0.9290 0.6940 0.1250','LineWidth',2.5)
hold on
plot(t,vtip_mat(:,48),'Color','[0.4940 0.1840 0.5560]','LineWidth',2.5)
hold on
plot(t,vtip_mat(:,50),'Color','[0.4660 0.6740 0.1880]','LineWidth',2.5)
hold on
plot(t,vtip_mat(:,55),'Color','[0.3010 0.7450 0.9330]','LineWidth',2.5)
hold on
plot(399,-70,'color','r','Marker','^','Markersize',20,'MarkerFaceColor','r')
set(gca,'FontSize',20)
xlabel('time (ms)')
ylabel('V_{p1} (mV)')
grid on
xlim([389,429])
xticks([389 394 399 404 409 414 419 424 429])
xticklabels({'-10','-5','0','5','10','15','20','25','30'})
ylim([-70,-10])
legend('80PF','90PF','94PF','96PF','100PF','110PF')
hgexport(gcf, 'FigureS3E', hgexport('factorystyle'), 'Format', 'png','Resolution','1000')

%% plots Figure S3F: voltage at the second distal point(Vp2) for different PF #
figure(2)
plot(t,vtip_mat2(:,40),'Color','[0 0.4470 0.7410]','LineWidth',2.5)
hold on
plot(t,vtip_mat2(:,45),'Color','[0.8500 0.3250 0.0980]','LineWidth',2.5)
hold on
plot(t,vtip_mat2(:,47),'Color','0.9290 0.6940 0.1250','LineWidth',2.5)
hold on
plot(t,vtip_mat2(:,48),'Color','[0.4940 0.1840 0.5560]','LineWidth',2.5)
hold on
plot(t,vtip_mat2(:,50),'Color','[0.4660 0.6740 0.1880]','LineWidth',2.5)
hold on
plot(t,vtip_mat2(:,55),'Color','[0.3010 0.7450 0.9330]','LineWidth',2.5)
hold on
plot(399,-70,'color','r','Marker','^','Markersize',20,'MarkerFaceColor','r')
set(gca,'FontSize',20)
xlabel('time (ms)')
ylabel('V_{p2} (mV)')
grid on
xlim([389,429])
xticks([389 394 399 404 409 414 419 424 429])
xticklabels({'-10','-5','0','5','10','15','20','25','30'})
ylim([-70,-10])
legend('80PF','90PF','94PF','96PF','100PF','110PF')
hgexport(gcf, 'FigureS3F', hgexport('factorystyle'), 'Format', 'png','Resolution','1000')


%% plots Figure S3G: voltage at the proximal point(Vp3) for different PF #
figure(3)
plot(t,vprox_mat(:,40),'Color','[0 0.4470 0.7410]','LineWidth',2.5)
hold on
plot(t,vprox_mat(:,45),'Color','[0.8500 0.3250 0.0980]','LineWidth',2.5)
hold on
plot(t,vprox_mat(:,47),'Color','0.9290 0.6940 0.1250','LineWidth',2.5)
hold on
plot(t,vprox_mat(:,48),'Color','[0.4940 0.1840 0.5560]','LineWidth',2.5)
hold on
plot(t,vprox_mat(:,50),'Color','[0.4660 0.6740 0.1880]','LineWidth',2.5)
hold on
plot(t,vprox_mat(:,55),'Color','[0.3010 0.7450 0.9330]','LineWidth',2.5)
hold on
plot(399,-70,'color','r','Marker','^','Markersize',20,'MarkerFaceColor','r')
set(gca,'FontSize',20)
xlabel('time (ms)')
ylabel('V_{p3} (mV)')
grid on
xlim([389,429])
xticks([389 394 399 404 409 414 419 424 429])
xticklabels({'-10','-5','0','5','10','15','20','25','30'})
ylim([-70,-10])
legend('80PF','90PF','94PF','96PF','100PF','110PF')
hgexport(gcf, 'FigureS3G', hgexport('factorystyle'), 'Format', 'png','Resolution','1000')

%% plots Figure S3H: voltage at the second proximal point(Vp4) for different PF #
figure(4)
plot(t,vprox_mat2(:,40),'Color','[0 0.4470 0.7410]','LineWidth',2.5)
hold on
plot(t,vprox_mat2(:,45),'Color','[0.8500 0.3250 0.0980]','LineWidth',2.5)
hold on
plot(t,vprox_mat2(:,47),'Color','0.9290 0.6940 0.1250','LineWidth',2.5)
hold on
plot(t,vprox_mat2(:,48),'Color','[0.4940 0.1840 0.5560]','LineWidth',2.5)
hold on
plot(t,vprox_mat2(:,50),'Color','[0.4660 0.6740 0.1880]','LineWidth',2.5)
hold on
plot(t,vprox_mat2(:,55),'Color','[0.3010 0.7450 0.9330]','LineWidth',2.5)
hold on
plot(399,-70,'color','r','Marker','^','Markersize',20,'MarkerFaceColor','r')
ylim([-70,-10])
set(gca,'FontSize',20)
xlabel('time (ms)')
ylabel('V_{p4} (mV)')
grid on
xlim([389,429])
xticks([389 394 399 404 409 414 419 424 429])
xticklabels({'-10','-5','0','5','10','15','20','25','30'})
ylim([-70,-10])
legend('80PF','90PF','94PF','96PF','100PF','110PF')
hgexport(gcf, 'FigureS3H', hgexport('factorystyle'), 'Format', 'png','Resolution','1000')


%% Calculate peak amplitude response
V_base = - 70;
iter_list = 1:1:75;
counter = 1;
       for iter = iter_list
        v_peak_vtip(counter) = max(vtip_mat(:,counter))-V_base;
        v_peak_vtip2(counter) = max(vtip_mat2(:,counter))-V_base;
        v_peak_vprox(counter) = max(vprox_mat(:,counter))-V_base;
       v_peak_vprox2(counter) = max(vprox_mat2(:,counter))-V_base;
        counter = counter+1;
       end


figure(5)
nb_syn =[2:2:150];
plot(nb_syn,v_peak_vtip,'b','Marker','s','Markersize',15,'Linewidth',2)
hold on
plot(nb_syn,v_peak_vtip2,'c','Marker','s','Markersize',15,'Linewidth',2)
hold on
plot(nb_syn,v_peak_vprox,'r','Marker','s','Markersize',15,'Linewidth',2)
hold on
plot(nb_syn,v_peak_vprox2,'m','Marker','s','Markersize',15,'Linewidth',2)
grid on
hold on
plot(96,10,'color','k','Marker','hexagram','Markersize',20,'MarkerFaceColor','k')
set(gca,'FontSize',20)
xlabel('Number of PF synapses')
ylabel('Peak Amplitude (mV)')
legend('p_1','p_2','p_3','p_4','Location','SouthEast');
hold off
xlim([0,150])
ylim([10,70])
hgexport(gcf, 'Figure3D', hgexport('factorystyle'), 'Format', 'png','Resolution','1000')


%% Save data corresponding to 1.0CaP
save('br5_CAP1.mat','nb_syn','v_peak_vtip','v_peak_vprox','v_peak_vtip2','v_peak_vprox2')
