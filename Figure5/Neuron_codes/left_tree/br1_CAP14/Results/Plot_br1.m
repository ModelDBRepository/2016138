%% January 17, 2024
%% written by Gabriela Cirtala
%% plots dendritic voltages for different PF numbers
%% calculates PAR for branch1;

clear all
close all

t = 0:0.02:600; % define time step and final simulation time
iter_list =1:75; % define number of simulations considered
nb_syn = [2:2:150]; %define PF synapses and PF step considered

%% load data obtained from Neuron code corresponding to Branch1.hoc
sn='003_001_001_';
vtip_mat = [];
vprox_mat = [];
for iter = iter_list
  vtip = load([sn num2str(iter,'%03.f') '_001_vbr1_dist.dat']);
   vtip_mat=[vtip_mat vtip];
   vprox = load([sn num2str(iter,'%03.f') '_001_vbr1_prox.dat']);
   vprox_mat=[vprox_mat vprox];
end


%% Plots the distal point for branch 1 for different PF numbers
figure(1)
plot(t,vtip_mat(:,10),'Color','[0 0.4470 0.7410]','LineWidth',2.5)
hold on
plot(t,vtip_mat(:,20),'Color','[0.8500 0.3250 0.0980]','LineWidth',2.5)
hold on
plot(t,vtip_mat(:,24),'Color','0.9290 0.6940 0.1250','LineWidth',2.5)
hold on
plot(t,vtip_mat(:,25),'Color','[0.4940 0.1840 0.5560]','LineWidth',2.5)
hold on
plot(t,vtip_mat(:,30),'Color','[0.4660 0.6740 0.1880]','LineWidth',2.5)
hold on
plot(t,vtip_mat(:,40),'Color','[0.3010 0.7450 0.9330]','LineWidth',2.5)
hold on
plot(398,-60,'color','r','Marker','^','Markersize',20,'MarkerFaceColor','r') % marker indicates the activation moment for this branch
set(gca,'FontSize',20)
xlabel('time (msec)')
ylabel('V_{p1} (mV)')
grid on
xlim([390,430])
legend('20PF','40PF','48PF','50PF','60PF','80PF')
hgexport(gcf, 'Branch1_distal', hgexport('factorystyle'), 'Format', 'png','Resolution','500')

%% Plots the proximal point for branch 1 for different PF numbers
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
plot(398,-60,'color','r','Marker','^','Markersize',20,'MarkerFaceColor','r') % marker indicates the activation moment for this branch
set(gca,'FontSize',20)
xlabel('time (msec)')
ylabel('V_{p2} (mV)')
grid on
xlim([390,430])
ylim([-60,-10])
legend('20PF','40PF','48PF','50PF','60PF','80PF')
hgexport(gcf, 'Branch1_proximal', hgexport('factorystyle'), 'Format', 'png','Resolution','500')

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
hold on
plot(48,0,'color','k','Marker','hexagram','Markersize',20,'MarkerFaceColor','k')
set(gca,'FontSize',20)
xlabel('Number of PF synapses')
ylabel('Peak Amplitude (mV)')
legend('p_1','p_2','Location','SouthEast');
hold off
xlim([0,120])
hgexport(gcf, 'PAR_br1', hgexport('factorystyle'), 'Format', 'png','Resolution','500')

save('br1_CAP14.mat','nb_syn','v_peak_vtip','v_peak_vprox')
