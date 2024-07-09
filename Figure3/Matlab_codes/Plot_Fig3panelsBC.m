%% 17 January 2024
%% written by Gabriela Cirtala
%% this codes compares the peak amplitude response obtained for different values of CaP

% for obtaining the  .mat files please do the following: 
% 1. run Neuron code corresponding for Branch15.hoc for the different values
% of CaP
% 2. The Neuron code will give you a lot of .dat files, which you can plot
% using the matlab script: Plot_Figure3DtoF.m. This Matlab script will
% generate these .mat files. 
% 3. Place all these .mat files in this folder and you will obtain panels B
% and C from Figure3 in Cirtala2024. 


clear all
close all

%% distal point
load('br15_CAP1.mat')
figure(1)
plot(nb_syn,v_peak_vtip,'color','k','Marker','s','Markersize',10,'Linewidth',2)
grid on
xlim([2,120])
ylim([10,70])
xlabel('Number of PF synapses')
ylabel('Peak Amplitude (mV)')
set(gca,'FontSize',20)
hold on
load('br15_CAP08.mat')
figure(1)
plot(nb_syn,v_peak_vtip,'color','m','Marker','s','Markersize',10,'Linewidth',2)
xlabel('Number of PF synapses')
ylabel('Peak Amplitude (mV)')
set(gca,'FontSize',20)
hold on
load('br15_CAP06.mat')
figure(1)
plot(nb_syn,v_peak_vtip,'color','b','Marker','s','Markersize',10,'Linewidth',2)
hold on
legend('1.0CaP','0.8CaP','0.6CaP','Location','NorthWest');
figure(1)
hgexport(gcf, 'Figure3B', hgexport('factorystyle'), 'Format', 'png','Resolution','1000')

%% distal point
load('br15_CAP1.mat')
figure(2)
plot(nb_syn,v_peak_vprox,'color','k','Marker','s','Markersize',10,'Linewidth',2)
grid on
xlim([2,120])
ylim([10,70])
xlabel('Number of PF synapses')
ylabel('Peak Amplitude (mV)')
set(gca,'FontSize',20)
hold on
load('br15_CAP08.mat')
figure(2)
plot(nb_syn,v_peak_vprox,'color','m','Marker','s','Markersize',10,'Linewidth',2)
xlabel('Number of PF synapses')
ylabel('Peak Amplitude (mV)')
set(gca,'FontSize',20)
hold on
load('br15_CAP06.mat')
figure(2)
plot(nb_syn,v_peak_vprox,'color','b','Marker','s','Markersize',10,'Linewidth',2)
legend('1.0CaP','0.8CaP','0.6CaP','Location','NorthWest');
figure(2)
hgexport(gcf, 'Figure3C', hgexport('factorystyle'), 'Format', 'png','Resolution','1000')
