%% January 17, 2024
%% written by Gabriela Cirtala
%% plots dendritic voltages for different PF numbers
%% calculates PAR for branch 11;

clear all
close all

t = 0:0.02:600; % define time step and final simulation time
iter_list =1:75; % define number of simulations considered
nb_syn = [2:2:150]; %define PF synapses and PF step considered

%% load data obtained from Neuron code corresponding to Branch11.hoc
sn='003_001_011_';
vtip_mat = [];
vprox_mat = [];
vmid_mat =[];
for iter = iter_list
  vtip = load([sn num2str(iter,'%03.f') '_001_vbr11_dist.dat']);
   vtip_mat=[vtip_mat vtip];
   vmid = load([sn num2str(iter,'%03.f') '_001_vbr11_mid.dat']);
   vmid_mat=[vmid_mat vmid];
   vprox = load([sn num2str(iter,'%03.f') '_001_vbr11_prox.dat']);
   vprox_mat=[vprox_mat vprox];
end

%% plots Figure S5E: voltage at the distal point(Vp1) for different PF #
figure(1)
plot(t,vtip_mat(:,30),'Color','[0 0.4470 0.7410]','LineWidth',2.5)
hold on
plot(t,vtip_mat(:,31),'Color','[0.8500 0.3250 0.0980]','LineWidth',2.5)
hold on
plot(t,vtip_mat(:,35),'Color','0.9290 0.6940 0.1250','LineWidth',2.5)
hold on
plot(t,vtip_mat(:,40),'Color','[0.4940 0.1840 0.5560]','LineWidth',2.5)
hold on
plot(t,vtip_mat(:,45),'Color','[0.4660 0.6740 0.1880]','LineWidth',2.5)
hold on
plot(t,vtip_mat(:,50),'Color','[0.3010 0.7450 0.9330]','LineWidth',2.5)
hold on
plot(400,-70,'color','r','Marker','^','Markersize',20,'MarkerFaceColor','r')
set(gca,'FontSize',20)
xlabel('time (msec)')
ylabel('V_{p1} (mV)')
grid on
ylim([-70,-10])
xlim([390,430])
xticks([390 395 400 405 410 415 420 425 430])
xticklabels({'-10','-5','0','5','10','15','20','25','30'})
legend('60PF','62PF','70PF','80PF','90PF','100PF')
hgexport(gcf, 'FigureS5E', hgexport('factorystyle'), 'Format', 'png','Resolution','500')

%% plots extra figure voltage at the middle point(Vp2) for different PF #
figure(2)
plot(t,vmid_mat(:,30),'Color','[0 0.4470 0.7410]','LineWidth',2.5)
hold on
plot(t,vmid_mat(:,31),'Color','[0.8500 0.3250 0.0980]','LineWidth',2.5)
hold on
plot(t,vmid_mat(:,35),'Color','0.9290 0.6940 0.1250','LineWidth',2.5)
hold on
plot(t,vmid_mat(:,40),'Color','[0.4940 0.1840 0.5560]','LineWidth',2.5)
hold on
plot(t,vmid_mat(:,45),'Color','[0.4660 0.6740 0.1880]','LineWidth',2.5)
hold on
plot(t,vmid_mat(:,50),'Color','[0.3010 0.7450 0.9330]','LineWidth',2.5)
hold on
plot(400,-70,'color','r','Marker','^','Markersize',20,'MarkerFaceColor','r')
set(gca,'FontSize',20)
xlabel('time (msec)')
ylabel('V_{p2} (mV)')
grid on
ylim([-70,-10])
xlim([390,430])
xticks([390 395 400 405 410 415 420 425 430])
xticklabels({'-10','-5','0','5','10','15','20','25','30'})
legend('60PF','62PF','70PF','80PF','90PF','100PF')
hgexport(gcf, 'FigureS5extra', hgexport('factorystyle'), 'Format', 'png','Resolution','500')

%% plots Figure S5F: voltage at the proximal point(Vp3) for different PF #
figure(3)
plot(t,vprox_mat(:,30),'Color','[0 0.4470 0.7410]','LineWidth',2.5)
hold on
plot(t,vprox_mat(:,31),'Color','[0.8500 0.3250 0.0980]','LineWidth',2.5)
hold on
plot(t,vprox_mat(:,35),'Color','0.9290 0.6940 0.1250','LineWidth',2.5)
hold on
plot(t,vprox_mat(:,40),'Color','[0.4940 0.1840 0.5560]','LineWidth',2.5)
hold on
plot(t,vprox_mat(:,45),'Color','[0.4660 0.6740 0.1880]','LineWidth',2.5)
hold on
plot(t,vprox_mat(:,50),'Color','[0.3010 0.7450 0.9330]','LineWidth',2.5)
hold on
plot(400,-70,'color','r','Marker','^','Markersize',20,'MarkerFaceColor','r')
set(gca,'FontSize',20)
xlabel('time (msec)')
ylabel('V_{p3} (mV)')
grid on
ylim([-70,-10])
xlim([390,430])
xticks([390 395 400 405 410 415 420 425 430])
xticklabels({'-10','-5','0','5','10','15','20','25','30'})
legend('60PF','62PF','70PF','80PF','90PF','100PF')
hgexport(gcf, 'FigureS5F', hgexport('factorystyle'), 'Format', 'png','Resolution','500')


%% Calculate peak amplitude response
V_base = - 70;
iter_list = 1:1:75;
counter = 1;
       for iter = iter_list
        v_peak_vtip(counter) = max(vtip_mat(:,counter))-V_base;
        v_peak_vmid(counter) = max(vmid_mat(:,counter))-V_base;
        v_peak_vprox(counter) = max(vprox_mat(:,counter))-V_base;
        counter = counter+1;
       end


figure(101)
nb_syn = [2:2:150];
plot(nb_syn,v_peak_vtip,'b','Marker','s','Markersize',15,'Linewidth',2)
hold on
 plot(nb_syn,v_peak_vmid,'c','Marker','s','Markersize',15,'Linewidth',2)
 hold on
plot(nb_syn,v_peak_vprox,'r','Marker','s','Markersize',15,'Linewidth',2)
grid on
hold on
plot(62,10,'color','k','Marker','hexagram','Markersize',20,'MarkerFaceColor','k')
set(gca,'FontSize',20)
xlabel('Number of PF synapses')
ylabel('Peak Amplitude (mV)')
legend('p_1','p_2','p_3','Location','SouthEast');
hold off
xlim([0,150])
ylim([10,70])
hgexport(gcf, 'FigureS5D', hgexport('factorystyle'), 'Format', 'png','Resolution','500')


%% Save the data corresponding to Branch11, 1.0CaP
save('br11_CAP1_new.mat','nb_syn','v_peak_vtip','v_peak_vmid','v_peak_vprox')
