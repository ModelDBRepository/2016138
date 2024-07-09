%% January 17, 2024
%% written by Gabriela Cirtala
%% plots dendritic voltages for different PF numbers
%% calculates PAR for branch3;
%% PF Activation time now corresponds to time 0

clear all
close all

t = 0:0.02:600; % define time step and final simulation time
iter_list =1:75; % define number of simulations considered
nb_syn = [2:2:150]; %define PF synapses and PF step considered

%% load data obtained from Neuron code corresponding to Branch3.hoc
sn='003_001_003_';
vtip_mat = [];
vprox_mat = [];
for iter = iter_list
  vtip = load([sn num2str(iter,'%03.f') '_001_vbr3_dist.dat']);
   vtip_mat=[vtip_mat vtip];
   vprox = load([sn num2str(iter,'%03.f') '_001_vbr3_prox.dat']);
   vprox_mat=[vprox_mat vprox];
end


%% Plots Figure 2E: the distal point for branch 3 for different PF numbers
figure(1)
plot(t,vtip_mat(:,10)','Color','[0 0.4470 0.7410]','LineWidth',2.5)
hold on
plot(t,vtip_mat(:,20)','Color','[0.8500 0.3250 0.0980]','LineWidth',2.5)
hold on
plot(t,vtip_mat(:,24)','Color','0.9290 0.6940 0.1250','LineWidth',2.5)
hold on
plot(t,vtip_mat(:,25)','Color','[0.4940 0.1840 0.5560]','LineWidth',2.5)
hold on
plot(t,vtip_mat(:,30)','Color','[0.4660 0.6740 0.1880]','LineWidth',2.5)
hold on
plot(t,vtip_mat(:,40)','Color','[0.3010 0.7450 0.9330]','LineWidth',2.5)
hold on
plot(398,-70,'color','r','Marker','^','Markersize',20,'MarkerFaceColor','r')
set(gca,'FontSize',20)
xlabel('time (ms)')
ylabel('V_{p1} (mV)')
grid on
xlim([388,428])
xticks([388 393 398 403 408 413 418 423 428])
xticklabels({'-10','-5','0','5','10','15','20','25','30'})
ylim([-70,-10])
legend('20PF','40PF','48PF','50PF','60PF','80PF')
hgexport(gcf, 'Figure2E', hgexport('factorystyle'), 'Format', 'png','Resolution','1000')


%% Plots Figure 2F: the proximal point for branch 3 for different PF numbers
figure(2)
plot(t,vprox_mat(:,10),'Color','[0 0.4470 0.7410]','LineWidth',2.5)
hold on
plot(t,vprox_mat(:,20),'Color','[0.8500 0.3250 0.0980]','LineWidth',2.5)
hold on
plot(t,vprox_mat(:,24),'Color','0.9290 0.6940 0.1250','LineWidth',2.5)
hold on
plot(t,vprox_mat(:,25),'Color','[0.4940 0.1840 0.5560]','LineWidth',2.5)
hold on
plot(t,vprox_mat(:,30),'Color','[0.4660 0.6740 0.1880]','LineWidth',2.5)
hold on
plot(t,vprox_mat(:,40),'Color','[0.3010 0.7450 0.9330]','LineWidth',2.5)
hold on
plot(398,-70,'color','r','Marker','^','Markersize',20,'MarkerFaceColor','r')
set(gca,'FontSize',20)
xlabel('time (ms)')
ylabel('V_{p2} (mV)')
grid on
xlim([388,428])
xticks([388 393 398 403 408 413 418 423 428])
xticklabels({'-10','-5','0','5','10','15','20','25','30'})
ylim([-70,-10])
legend('20PF','40PF','48PF','50PF','60PF','80PF')
hgexport(gcf, 'Figure2F', hgexport('factorystyle'), 'Format', 'png','Resolution','1000')

%% Calculate peak amplitude response
V_base = - 70;
iter_list = 1:1:75;
counter = 1;
       for iter = iter_list
        v_peak_vtip(counter) = max(vtip_mat(:,counter))-V_base;
        v_peak_vprox(counter) = max(vprox_mat(:,counter))-V_base;
        counter = counter+1;
       end

% Plots Figure 2D: PAR
figure(3)
plot(nb_syn,v_peak_vtip,'b','Marker','s','Markersize',15,'Linewidth',2)
hold on
plot(nb_syn,v_peak_vprox,'r','Marker','s','Markersize',15,'Linewidth',2)
grid on
set(gca,'FontSize',20)
xlabel('Number of PF synapses')
ylabel('Peak Amplitude (mV)')
hold on
plot(48,10,'color','k','Marker','hexagram','Markersize',20,'MarkerFaceColor','k')
hold off
legend('p_1','p_2','Location','SouthEast');
ylim([10,70])
hgexport(gcf, 'Figure2D', hgexport('factorystyle'), 'Format', 'png','Resolution','1000')

save('br3_CAP15.mat','nb_syn','v_peak_vtip','v_peak_vprox')
