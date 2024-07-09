%% April 25, 2024
%% written by Gabriela Cirtala
%% plots dendritic and somatic voltages for different PF numbers
%% calculates PAR for branch5 and br18 and an unstimulated branch 12

clear all
close all

t = 0:0.02:600; % define time step and final simulation time
iter_list =1:75; % define number of simulations considered
nb_syn = [2:2:150]; %define PF synapses and PF step considered

%% load data obtained from Neuron code corresponding to Branch5.hoc and Branch18.hoc
sn='003_001_005_'; %% data for branch 5
sn18='003_001_018_'; %% data for branch 18
vsoma_mat = []; 
vtip_mat = [];
vsoma12_mat = [];
vtip12_mat = [];
vtip18_mat = [];
vsoma18_mat = [];

for iter = iter_list
  vtip = load([sn num2str(iter,'%03.f') '_001_vbr5_dist.dat']);
   vtip_mat=[vtip_mat vtip];
  vsoma = load([sn num2str(iter,'%03.f') '_001_vsoma.dat']);
  vsoma_mat=[vsoma_mat vsoma];
   vtip18 = load([sn18 num2str(iter,'%03.f') '_001_vbr18_dist.dat']);
   vtip18_mat=[vtip18_mat vtip18];
  vsoma18 = load([sn18 num2str(iter,'%03.f') '_001_vsoma.dat']);
  vsoma18_mat=[vsoma18_mat vsoma18];
   vtip12 = load([sn num2str(iter,'%03.f') '_001_vbr12_dist.dat']);
   vtip12_mat=[vtip12_mat vtip12];
  vsoma12 = load([sn num2str(iter,'%03.f') '_001_vsoma.dat']);
  vsoma12_mat=[vsoma12_mat vsoma12];
end


%% Calculate PAR: 
V_base = - 70;
iter_list = 1:1:75;
counter = 1;
       for iter = iter_list
        v_peak_vtip(counter) = max(vtip_mat(:,counter))-V_base;
        v_peak_vtip18(counter) = max(vtip18_mat(:,counter))-V_base;
        v_peak_vtip12(counter) = max(vtip12_mat(:,counter))-V_base;
        counter = counter+1;
       end

nb_syn =[2:2:150];

%% PLOT PAR
figure(1)
%% plot branch 5 vs br18: plot every 3 steps
plot(nb_syn(1:3:75),v_peak_vtip(1:3:75),'color','[0.64,0.165,0.165]','Marker','s','Markersize',20,'MarkerFaceColor','[0.64,0.165,0.165]','Linewidth',3)
hold on
plot(nb_syn(1:3:75),v_peak_vtip18(1:3:75),'color','[0.15,0.42,0.028]','Marker','s','Markersize',20,'MarkerFaceColor','[0.15,0.42,0.028]','Linewidth',3)
hold on
plot(nb_syn(1:3:75),v_peak_vtip12(1:3:75),'color','[0,1,0.5]','Marker','o','Markersize',20,'MarkerFaceColor','[0,1,0.5]','Linewidth',3)
xlabel('Number of PF synapses')
ylabel('Peak Amplitude (mV)')
xlim([20,150])
hold on
plot(98,10,'color','k','Marker','hexagram','Markersize',20,'MarkerFaceColor','k')
set(gca,'FontSize',20)
title('Linear vs Bimodal Response')
legend('br5','br18','br12','Location','NorthWest','NumColumns',2,'Orientation','horizontal');
grid on
hgexport(gcf, 'Figure1B', hgexport('factorystyle'), 'Format', 'png','Resolution','1000')


%% plot PF10
figure(2)
plot(t,vtip_mat(:,5),'Color','[0.64,0.165,0.165]','LineWidth',2.5)
hold on
plot(t,vtip18_mat(:,5),'Color','[0.15,0.42,0.028]','LineWidth',2.5)
hold on
plot(t,vtip12_mat(:,10),'Color','[0,1,0.5]','LineWidth',2.5)
set(gca,'FontSize',20)
xlabel('time (ms)')
ylabel('V_{p1} (mV)')
grid on
hold on
xlim([389,429])
xticks([389 394 399 404 409 414 419 424 429])
xticklabels({'-10','-5','0','5','10','15','20','25','30'})
plot(399,-70,'color','r','Marker','^','Markersize',20,'MarkerFaceColor','r')
xlim([390,430])
ylim([-70,-10])
legend('br5','br18','br12','Location','NorthWest','NumColumns',2,'Orientation','horizontal');
title('10 PF')
hgexport(gcf, 'Figure1C', hgexport('factorystyle'), 'Format', 'png','Resolution','1000')

%% plot PF90
figure(3)
plot(t,vtip_mat(:,45),'Color','[0.64,0.165,0.165]','LineWidth',2.5)
hold on
plot(t,vtip18_mat(:,45),'Color','[0.15,0.42,0.028]','LineWidth',2.5)
hold on
plot(t,vtip12_mat(:,45),'Color','[0,1,0.5]','LineWidth',2.5)
set(gca,'FontSize',20)
xlabel('time (ms)')
ylabel('V_{p1} (mV)')
grid on
hold on
plot(399,-70,'color','r','Marker','^','Markersize',20,'MarkerFaceColor','r')
xlim([389,429])
xticks([389 394 399 404 409 414 419 424 429])
xticklabels({'-10','-5','0','5','10','15','20','25','30'})
ylim([-70,-10])
legend('br5','br18','br12','Location','NorthWest','NumColumns',2,'Orientation','horizontal');
title('90 PF')
hgexport(gcf, 'Figure1D', hgexport('factorystyle'), 'Format', 'png','Resolution','1000')

%% plot PF100 
figure(4)
plot(t,vtip_mat(:,50),'Color','[0.64,0.165,0.165]','LineWidth',2.5)
hold on
plot(t,vtip18_mat(:,50),'Color','[0.15,0.42,0.028]','LineWidth',2.5)
hold on
plot(t,vtip12_mat(:,50),'Color','[0,1,0.5]','LineWidth',2.5)
set(gca,'FontSize',20)
xlabel('time (ms)')
ylabel('V_{p1} (mV)')
grid on
hold on
ylim([-70,-10])
plot(399,-70,'color','r','Marker','^','Markersize',20,'MarkerFaceColor','r')
xlim([389,429])
xticks([389 394 399 404 409 414 419 424 429])
xticklabels({'-10','-5','0','5','10','15','20','25','30'})
legend('br5','br18','br12','Location','NorthEast','NumColumns',2,'Orientation','horizontal');
title('100 PF')
hgexport(gcf, 'Figure1E', hgexport('factorystyle'), 'Format', 'png','Resolution','1000')


%%%%%%%%%%%%%%% Response at soma:
%% plot PF10
figure(5)
plot(t,vsoma_mat(:,5),'Color','[0.64,0.165,0.165]','LineWidth',2.5)
hold on
plot(t,vsoma18_mat(:,5),'-.','Color','[0.15,0.42,0.028]','LineWidth',3)
set(gca,'FontSize',20)
xlabel('time (ms)')
ylabel('V_{p1} (mV)')
grid on
hold on
plot(399,-70,'color','r','Marker','^','Markersize',20,'MarkerFaceColor','r')
xlim([299,499])
xticks([299 349 399 449 499])
xticklabels({'-100','-50','0','50','100'})
ylim([-70,10])
legend('br5','br18','Location','NorthWest','NumColumns',2,'Orientation','horizontal');
title('10 PF')
hgexport(gcf, 'Figure1F', hgexport('factorystyle'), 'Format', 'png','Resolution','1000')

%% plot PF90
figure(6)
plot(t,vsoma_mat(:,45),'Color','[0.64,0.165,0.165]','LineWidth',2.5)
hold on
plot(t,vsoma18_mat(:,45),'-.','Color','[0.15,0.42,0.028]','LineWidth',2.5)
set(gca,'FontSize',20)
xlabel('time (ms)')
ylabel('V_{soma} (mV)')
grid on
hold on
plot(399,-70,'color','r','Marker','^','Markersize',20,'MarkerFaceColor','r')
xlim([299,499])
xticks([299 349 399 449 499])
xticklabels({'-100','-50','0','50','100'})
ylim([-70,10])
legend('br5','br18','Location','NorthWest','NumColumns',2,'Orientation','horizontal');
title('90 PF')
hgexport(gcf, 'Figure1G', hgexport('factorystyle'), 'Format', 'png','Resolution','1000')

%% plot PF90
figure(7)
plot(t,vsoma_mat(:,50),'Color','[0.64,0.165,0.165]','LineWidth',2.5)
hold on
plot(t,vsoma18_mat(:,50),'-.','Color','[0.15,0.42,0.028]','LineWidth',2.5)
set(gca,'FontSize',20)
xlabel('time (ms)')
ylabel('V_{soma} (mV)')
grid on
hold on
plot(399,-70,'color','r','Marker','^','Markersize',20,'MarkerFaceColor','r')
xlim([299,499])
xticks([299 349 399 449 499])
xticklabels({'-100','-50','0','50','100'})
ylim([-70,10])
legend('br5','br18','Location','NorthWest','NumColumns',2,'Orientation','horizontal');
title('100 PF')
hgexport(gcf, 'Figure1H', hgexport('factorystyle'), 'Format', 'png','Resolution','1000')




