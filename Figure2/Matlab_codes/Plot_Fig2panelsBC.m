%% 17 January 2024
%% written by Gabriela Cirtala
%% this codes compares the peak amplitude response obtained for different values of CaP

% for obtaining the  .mat files please do the following: 
% 1. run Neuron code corresponding for Branch3.hoc for the different values
% of CaP
% 2. The Neuron code will give you a lot of .dat files, which you can plot
% using the matlab script: Plot_Figure2DtoF.m. This Matlab script will
% generate these .mat files. 
% 3. Place all these .mat files in this folder and you will obtain panels B
% and C from Figure2 in Cirtala2024. 

clear all
close all



%% distal point
load('br3_CAP1.mat')
figure(1)
plot(nb_syn,v_peak_vtip,'color','k','Marker','s','Markersize',10,'Linewidth',2)
grid on
xlim([2,120])
ylim([10,70])
xlabel('Number of PF synapses')
ylabel('Peak Amplitude (mV)')
set(gca,'FontSize',20)
hold on
load('br3_CAP13.mat')
figure(1)
plot(nb_syn,v_peak_vtip,'color','m','Marker','s','Markersize',10,'Linewidth',2)
hold on
load('br3_CAP15.mat')
figure(1)
plot(nb_syn,v_peak_vtip,'color','b','Marker','s','Markersize',10,'Linewidth',2)
hold on
load('br3_CAP17.mat')
figure(1)
plot(nb_syn,v_peak_vtip,'color','r','Marker','s','Markersize',10,'Linewidth',2)
legend('1.0CaP','1.3CaP','1.5CaP','1.7CaP','Location','Best');
figure(1)
hgexport(gcf, 'Figure2B', hgexport('factorystyle'), 'Format', 'png','Resolution','1000')

%% proximal point
load('br3_CAP1.mat')
figure(2)
plot(nb_syn,v_peak_vprox,'color','k','Marker','s','Markersize',10,'Linewidth',2)
grid on
xlim([2,120])
ylim([10,70])
xlabel('Number of PF synapses')
ylabel('Peak Amplitude (mV)')
set(gca,'FontSize',20)
hold on
load('br3_CAP13.mat')
figure(2)
plot(nb_syn,v_peak_vprox,'color','m','Marker','s','Markersize',10,'Linewidth',2)
hold on
load('br3_CAP15.mat')
figure(2)
plot(nb_syn,v_peak_vprox,'color','b','Marker','s','Markersize',10,'Linewidth',2)
hold on
load('br3_CAP17.mat')
figure(2)
plot(nb_syn,v_peak_vprox,'color','r','Marker','s','Markersize',10,'Linewidth',2)
legend('1.0CaP','1.3CaP','1.5CaP','1.7CaP','Location','Best');
figure(2)
hgexport(gcf, 'Figure2C', hgexport('factorystyle'), 'Format', 'png','Resolution','1000')

