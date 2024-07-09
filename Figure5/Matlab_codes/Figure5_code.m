
%% written by Gabriela Cirtala %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% This code shows the peak amplitude of a response for all branches
% To obtain the .mat files please run the Neuron codes corresponding to each branch as described in the readme file.
% Plots voltage recorded at distal point for the CAP1 model (Fig5 A) - step of 10PF
% Plots voltage recorded at distal point for the heterogenous model (Fig 5B) - step of 2PF.
% Collects all CAP values used in the heterogenous model (Fig 5C)
% Collects all Kv4 values used in the heterogenous model (Fig 5D)
% Collects all PF thresholds (Fig 5E)




clear all
close all

load('br1_CAP1.mat')
figure(1)
grid on
plot(nb_syn(1:5:end),v_peak_vtip(1:5:end),'color','[0.6,0.6,0.6]','Marker','s','Markersize',15,'Linewidth',4)
xlabel('Number of PF synapses')
ylabel('Peak Amplitude (mV)')
set(gca,'FontSize',23)
hold on
load('br2_CAP1.mat')
figure(1)
plot(nb_syn(1:5:end),v_peak_vtip(1:5:end),'color','[0.6,0.6,0.6]','Marker','s','Markersize',15,'Linewidth',4)
hold on
load('br3_CAP1.mat')
figure(1)
plot(nb_syn(1:5:end),v_peak_vtip(1:5:end),'color','[0.6,0.6,0.6]]','Marker','s','Markersize',15,'Linewidth',4)
hold on
load('br4_CAP1.mat')
figure(1)
plot(nb_syn(1:5:end),v_peak_vtip(1:5:end),'color','[0.6,0.6,0.6]','Marker','s','Markersize',15,'Linewidth',4)
hold on
load('br5_CAP1.mat')
figure(1)
plot(nb_syn(1:5:end),v_peak_vtip(1:5:end),'color','[0.64,0.165,0.165]','Marker','o','Markersize',15,'MarkerFaceColor','[0.64,0.165,0.165]','Linewidth',4)
hold on
load('br6_CAP1.mat')
figure(1)
plot(nb_syn(1:5:end),v_peak_vtip(1:5:end),'color','[[0.6,0.6,0.6]]','Marker','s','Markersize',15,'Linewidth',4)
hold on
load('br7_CAP1.mat')
figure(1)
plot(nb_syn(1:5:end),v_peak_vtip(1:5:end),'color','[[0.6,0.6,0.6]]','Marker','s','Markersize',15,'Linewidth',4)
hold on
load('br8_CAP09.mat')
figure(1)
plot(nb_syn(1:5:end),v_peak_vtip(1:5:end),'color','[0.74,0,0.36]','Marker','s','Markersize',15,'MarkerFaceColor','[0.74,0,0.36]','Linewidth',4)
hold on
load('br9_CAP1.mat')
figure(1)
plot(nb_syn(1:5:end),v_peak_vtip(1:5:end),'color','[0.95,0.5,0.6]','Marker','o','Markersize',15,'MarkerFaceColor','[0.95,0.5,0.6]','Linewidth',4)
hold on
load('br10_CAP1.mat')
figure(1)
plot(nb_syn(1:5:end),v_peak_vtip(1:5:end),'color','[0.6,0.6,0.6]','Marker','s','Markersize',15,'Linewidth',4)
hold on
load('br11_CAP1.mat')
figure(1)
plot(nb_syn(1:5:end),v_peak_vtip(1:5:end),'color','[0.96,0.81,0.326]','Marker','o','Markersize',15,'MarkerFaceColor','[0.96,0.81,0.326]','Linewidth',4)
hold on
load('br12_CAP08.mat')
figure(1)
plot(nb_syn(1:5:end),v_peak_vtip(1:5:end),'color','[0,1,0.5]','Marker','s','Markersize',15,'MarkerFaceColor','[0,1,0.5]','Linewidth',4)
hold on
load('br13_CAP1.mat')
figure(1)
plot(nb_syn(1:5:end),v_peak_vtip(1:5:end),'color','[0.6,0.6,0.6]','Marker','s','Markersize',15,'Linewidth',4)
hold on
load('br14_CAP1.mat')
figure(1)
plot(nb_syn(1:5:end),v_peak_vtip(1:5:end),'color','[0.6,0.6,0.6]','Marker','s','Markersize',15,'Linewidth',4)
hold on
load('br15_CAP08.mat')
figure(1)
plot(nb_syn(1:5:end),v_peak_vtip(1:5:end),'color','[0.93,0.51,0.933]','Marker','o','Markersize',15,'MarkerFaceColor','[0.93,0.51,0.933]','Linewidth',4)
hold on
load('br16_CAP1.mat')
figure(1)
plot(nb_syn(1:5:end),v_peak_vtip(1:5:end),'color','[0.6,0.6,0.6]','Marker','s','Markersize',15,'Linewidth',4)
hold on
load('br17_CAP1.mat')
figure(1)
plot(nb_syn(1:5:end),v_peak_vtip(1:5:end),'color','[0.6,0.6,0.6]','Marker','s','Markersize',15,'Linewidth',4)
hold on
load('br18_CAP1.mat')
figure(1)
plot(nb_syn(1:5:end),v_peak_vtip(1:5:end),'color','[[0.6,0.6,0.6]','Marker','s','Markersize',15,'Linewidth',4)
hold on
load('br19_CAP1.mat')
figure(1)
plot(nb_syn(1:5:end),v_peak_vtip(1:5:end),'color','[0.6,0.6,0.6]','Marker','s','Markersize',15,'Linewidth',4)
hold on
load('br20_CAP1.mat')
figure(1)
plot(nb_syn(1:5:end),v_peak_vtip(1:5:end),'color','[0.6,0.6,0.6]','Marker','s','Markersize',15,'Linewidth',4)
hold on
load('br21_CAP08.mat')
figure(1)
plot(nb_syn(1:5:end),v_peak_vtip(1:5:end),'color','[0.65,0.02,0.60]','Marker','s','Markersize',15,'MarkerFaceColor','[0.65,0.02,0.60]','Linewidth',4)
hold on
load('br22_CAP08.mat')
figure(1)
grid on
xlim([0,150])
plot(nb_syn(1:5:end),v_peak_vtip(1:5:end),'color','[0.1,0.89,0.87]','Marker','s','Markersize',15,'MarkerFaceColor','[0.1,0.89,0.87]','Linewidth',4)
hold on
legend('br1','br2','br3','br4','br5','br6','br7','br8','br9','br10','br11','br12','br13','br14','br15','br16','br17','br18','br19','br20','br21','br22','Location','SouthEast','NumColumns',4,'Orientation','horizontal');
set(gcf,'position',[0,0,1000,600])
exportgraphics(gca,'FigA_every10.png','Resolution',1000)

load('br1_CAP14.mat')
figure(2)
grid on
grid on
plot(nb_syn((1:2:end)),v_peak_vtip((1:2:end)),'color','[0.8,0.35,0.73]','Marker','s','Markersize',15,'MarkerFaceColor','[0.8,0.35,0.73]','Linewidth',4)
xlabel('Number of PF synapses')
ylabel('Peak Amplitude (mV)')
set(gca,'FontSize',23)
hold on
load('br2_CAP16.mat')
figure(2)
grid on
plot(nb_syn((1:2:end)),v_peak_vtip((1:2:end)),'color','[0,0,1]','Marker','s','Markersize',15,'MarkerFaceColor','[0,0,1]','Linewidth',4)
hold on
load('br3_CAP17.mat')
figure(2)
grid on
plot(nb_syn((1:2:end)),v_peak_vtip((1:2:end)),'color','[0.2,0.55,0.2]','Marker','s','Markersize',15,'MarkerFaceColor','[0.2,0.55,0.2]','Linewidth',4)
hold on
load('br4_CAP15.mat')
figure(2)
plot(nb_syn((1:2:end)),v_peak_vtip((1:2:end)),'color','[1,0.64,0]','Marker','s','Markersize',15,'MarkerFaceColor','[1,0.64,0]','Linewidth',4)
hold on
load('br5_CAP1.mat')
figure(2)
plot(nb_syn((1:2:end)),v_peak_vtip((1:2:end)),'color','[0.64,0.165,0.165]','Marker','s','Markersize',15,'MarkerFaceColor','[0.64,0.165,0.165]','Linewidth',4)
hold on
load('br6_CAP22.mat')
figure(2)
plot(nb_syn((1:2:end)),v_peak_vtip((1:2:end)),'color','[0.40,0.62,0.87]','Marker','s','Markersize',15,'MarkerFaceColor','[0.40,0.62,0.87]','Linewidth',4)
hold on
load('br7_CAP28.mat')
figure(2)
plot(nb_syn((1:2:end)),v_peak_vtip((1:2:end)),'color','[0.75,0.75,0.09]','Marker','s','Markersize',15,'MarkerFaceColor','[0.75,0.75,0.09]','Linewidth',4)
hold on
load('br8_CAP09.mat')
figure(2)
plot(nb_syn((1:2:end)),v_peak_vtip((1:2:end)),'color','[0.74,0,0.36]','Marker','s','Markersize',15,'MarkerFaceColor','[0.74,0,0.36]','Linewidth',4)
hold on
load('br9_CAP12.mat')
figure(2)
plot(nb_syn((1:2:end)),v_peak_vtip((1:2:end)),'color','[0.95,0.5,0.6]','Marker','s','Markersize',15,'MarkerFaceColor','[0.95,0.5,0.6]','Linewidth',4)
hold on
load('br10_CAP15.mat')
figure(2)
plot(nb_syn((1:2:end)),v_peak_vtip((1:2:end)),'color','[0.4,0.35,0.8]','Marker','s','Markersize',15,'MarkerFaceColor','[0.4,0.35,0.8]','Linewidth',4)
hold on
load('br11_CAP1.mat')
figure(2)
plot(nb_syn((1:2:end)),v_peak_vtip((1:2:end)),'color','[0.96,0.81,0.326]','Marker','s','Markersize',15,'MarkerFaceColor','[0.96,0.81,0.326]','Linewidth',4)
hold on
load('br12_CAP08.mat')
figure(2)
plot(nb_syn((1:2:end)),v_peak_vtip((1:2:end)),'color','[0,1,0.5]','Marker','s','Markersize',15,'MarkerFaceColor','[0,1,0.5]','Linewidth',4)
hold on
load('br13_CAP22.mat')
figure(2)
plot(nb_syn((1:2:end)),v_peak_vtip((1:2:end)),'color','[0.89,0.1,0.42]','Marker','s','Markersize',15,'MarkerFaceColor','[0.89,0.1,0.42]','Linewidth',4)
hold on
load('br14_CAP16.mat')
figure(2)
plot(nb_syn((1:2:end)),v_peak_vtip((1:2:end)),'color','[0.322,0.665,0.96]','Marker','s','Markersize',15,'MarkerFaceColor','[0.322,0.665,0.96]','Linewidth',4)
hold on
load('br15_CAP08.mat')
figure(2)
plot(nb_syn((1:2:end)),v_peak_vtip((1:2:end)),'color','[0.93,0.51,0.933]','Marker','s','Markersize',15,'MarkerFaceColor','[0.93,0.51,0.933]','Linewidth',4)
hold on
load('br16_CAP12.mat')
figure(2)
plot(nb_syn((1:2:end)),v_peak_vtip((1:2:end)),'color','[0.777,0.524,0.35]','Marker','s','Markersize',15,'MarkerFaceColor','[0.777,0.524,0.35]','Linewidth',4)
hold on
load('br17_CAP11.mat')
figure(2)
plot(nb_syn((1:2:end)),v_peak_vtip((1:2:end)),'color','[1,0.7,0.9]','Marker','s','Markersize',15,'MarkerFaceColor','[1,0.7,0.9]','Linewidth',4)
hold on
load('br18_CAP28.mat')
figure(2)
plot(nb_syn((1:2:end)),v_peak_vtip((1:2:end)),'color','[0.15,0.42,0.028]','Marker','s','Markersize',15,'MarkerFaceColor','[0.15,0.42,0.028]','Linewidth',4)
hold on
load('br19_CAP26.mat')
figure(2)
plot(nb_syn((1:2:end)),v_peak_vtip((1:2:end)),'color','[1,0,0]','Marker','s','Markersize',15,'MarkerFaceColor','[1,0,0]','Linewidth',4)
hold on
load('br20_CAP3.mat')
figure(2)
plot(nb_syn((1:2:end)),v_peak_vtip((1:2:end)),'color','[0.99,0.95,0.053]','Marker','s','Markersize',15,'MarkerFaceColor','[0.99,0.95,0.053]','Linewidth',4)
hold on
load('br21_CAP08.mat')
figure(2)
plot(nb_syn((1:2:end)),v_peak_vtip((1:2:end)),'color','[0.65,0.02,0.60]','Marker','s','Markersize',15,'MarkerFaceColor','[0.65,0.02,0.60]','Linewidth',4)
hold on
load('br22_CAP08.mat')
figure(2)
plot(nb_syn((1:2:end)),v_peak_vtip((1:2:end)),'color','[0.1,0.89,0.87]','Marker','s','Markersize',15,'MarkerFaceColor','[0.1,0.89,0.87]','Linewidth',4)
grid on
hold on
xlim([0,150])
set(gcf,'position',[0,0,1000,600])
legend('br1','br2','br3','br4','br5','br6','br7','br8','br9','br10','br11','br12','br13','br14','br15','br16','br17','br18','br19','br20','br21','br22','Location','SouthEast','NumColumns',4,'Orientation','horizontal');
set(gcf,'position',[0,0,1000,600])
exportgraphics(gca,'FigB.png','Resolution',1000)



Thresh = [
44 %br1
34 %br2
48 %br3
80 %br4
96 %br5
62 %br6
42 %br7
76 %br8
36 %br9
44 %br10
62 %br11
72 %br12
52 %br13
70 %br14
106 %br15
62 %br16
52 %br17
74 %br18
54 %br19
44 %br20
64 %br21
22 %br22
];

CAP_cond = [
1.4 %br1
1.6 %br2
1.7 %br3
1.5 %br4
1 %br5
2.2 %br6
2.8 %br7
0.9 %br8
1.2 %br9
1.5 %br10
1  %br11
0.8 %br12
2.2 %br13
1.6 %br14
0.8 %br15
1.2 %br16
1.1 %br17
2.8 %br18
2.6 %br19
3.0 %br20
0.8 %br21
0.8 %br22
];


col_br1 =[0.8,0.35,0.73];
col_br2 =[0,0,1];
col_br3 =[0.2,0.55,0.2];
col_br4 = [1,0.64,0];
col_br5 = [0.64,0.165,0.165];
col_br6 = [0.40,0.62,0.87];
col_br7 = [0.75,0.75,0.09];
col_br8 =[0.74,0,0.36];
col_br9 =[0.95,0.5,0.6];
col_br10 =[0.4,0.35,0.8];
col_br11 = [0.96,0.81,0.326];
col_br12 =[0,1,0.5];
col_br13 =[0.89,0.1,0.42];
col_br14 = [0.322,0.665,0.96];
col_br15 = [0.93,0.51,0.933];
col_br16 =[0.777,0.524,0.35];
col_br17 =[1,0.7,0.9];
col_br18 =[0.15,0.42,0.028];
col_br19 =[1,0,0];
col_br20 =[0.99,0.95,0.053];
col_br21 = [0.65,0.02,0.60];
col_br22 =[0.1,0.89,0.87];

col = [col_br1;col_br2;col_br3;col_br4;col_br5
    col_br6;col_br7;col_br8;col_br9;col_br10
    col_br11;col_br12;col_br13;col_br14;col_br15;col_br16
    col_br17;col_br18;col_br19;col_br20;col_br21;col_br22];

Thresh_average = mean(Thresh);

figure(3)
b = barh(1:22,Thresh,'k','BarWidth',0.9);
grid on
set(gca,'FontSize',23)
yticks([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22])
b.FaceColor = 'flat';
xlim([10,110])
ylabel('Branch number')
xlabel('PF threshold');
for i = 1:length(col)
b.CData(i,:) =col(i,:);
end
hold on
xline(mean(Thresh_average),'-.','LineWidth',3,'Color','k')
set(gcf,'position',[0,0,350,600])
exportgraphics(gca,'FigE.png','Resolution',1500)


figure(4)
grid on
b = barh(1:22,CAP_cond,'k')
grid on
yticks([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22])
set(gca,'FontSize',23)
b.FaceColor = 'flat';
ylim([0,23])
ylabel('Branch number')
xlabel('CaP\_g');
for i = 1:length(col)
b.CData(i,:) =col(i,:);
end
hold on
xline(1,':','LineWidth',3,'Color','k')
set(gcf,'position',[0,0,350,600])
exportgraphics(gca,'FigC.png','Resolution',1500)


figure(5)
grid on
kv4_mat = [
1
1
1
1
1.9
2.2
2.6
2.2
1
1
1.2
1.3
1.9
1
1
1
1
1
1
1
1
1
];
b2 = barh(1:22,kv4_mat,'k')
grid on
yticks([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22])
set(gca,'FontSize',23)
b2.FaceColor = 'flat';
ylim([0,23])
ylabel('Branch number')
xlabel('Kv4.3\_g');
for i = 1:length(col)
b2.CData(i,:) =col(i,:);
end
hold on
xline(1,':','LineWidth',3,'Color','k')
set(gcf,'position',[0,0,350,600])
exportgraphics(gca,'FigD.png','Resolution',1500)
