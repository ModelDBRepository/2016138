%% January 17, 2024
%% written by Gabriela Cirtala
%% Plots co-activation of Branch 5 and Branch 10 (Figure 7A in Cirtala2024)
%% The .dat files are obtained by running the NEURON code Branch5and10.hoc
%% calculates PAR for the co-activated branches

clear all
close all
t = 0:0.02:600;
iter_list =1:1:75;

%% load data obtained from Neuron code corresponding to Branch5and10.hoc
sn='003_005_010_';
v_br1 = []; v_br2=[]; v_br3=[]; v_br4=[]; v_br5=[]; v_br6=[]; v_br7 =[];
v_br8 = []; v_br9=[]; v_br10=[]; v_br11=[]; v_br12=[]; v_br13=[]; v_br14 =[];
v_br15 = []; v_br16=[]; v_br17=[]; v_br18=[]; v_br19=[]; v_br20=[]; v_br21 =[]; v_br22=[];

for iter = iter_list
  br1 = load([sn num2str(iter,'%03.f') '_001_vtip_br1.dat']);
  v_br1=[v_br1 br1];
  br2 = load([sn num2str(iter,'%03.f') '_001_vtip_br2.dat']);
  v_br2=[v_br2 br2];
  br3 = load([sn num2str(iter,'%03.f') '_001_vtip_br3.dat']);
  v_br3=[v_br3 br3];
  br4 = load([sn num2str(iter,'%03.f') '_001_vtip_br4.dat']);
  v_br4=[v_br4 br4];
  br5 = load([sn num2str(iter,'%03.f') '_001_vtip_br5.dat']);
  v_br5=[v_br5 br5];
  br6 = load([sn num2str(iter,'%03.f') '_001_vtip_br6.dat']);
  v_br6=[v_br6 br6];
  br7 = load([sn num2str(iter,'%03.f') '_001_vtip_br7.dat']);
  v_br7=[v_br7 br7];
  br8 = load([sn num2str(iter,'%03.f') '_001_vtip_br8.dat']);
  v_br8=[v_br8 br8];
  br9 = load([sn num2str(iter,'%03.f') '_001_vtip_br9.dat']);
  v_br9=[v_br9 br9];
  br10 = load([sn num2str(iter,'%03.f') '_001_vtip_br10.dat']);
  v_br10=[v_br10 br10];
  br11 = load([sn num2str(iter,'%03.f') '_001_vtip_br11.dat']);
  v_br11=[v_br11 br11];
  br12 = load([sn num2str(iter,'%03.f') '_001_vtip_br12.dat']);
  v_br12=[v_br12 br12];
  br13 = load([sn num2str(iter,'%03.f') '_001_vtip_br13.dat']);
  v_br13=[v_br13 br13];
  br14 = load([sn num2str(iter,'%03.f') '_001_vtip_br14.dat']);
  v_br14=[v_br14 br14];
  br15 = load([sn num2str(iter,'%03.f') '_001_vtip_br15.dat']);
  v_br15=[v_br15 br15];
  br16 = load([sn num2str(iter,'%03.f') '_001_vtip_br16.dat']);
  v_br16=[v_br16 br16];
  br17 = load([sn num2str(iter,'%03.f') '_001_vtip_br17.dat']);
  v_br17=[v_br17 br17];
  br18 = load([sn num2str(iter,'%03.f') '_001_vtip_br18.dat']);
  v_br18=[v_br18 br18];
  br19 = load([sn num2str(iter,'%03.f') '_001_vtip_br19.dat']);
  v_br19=[v_br19 br19];
  br20 = load([sn num2str(iter,'%03.f') '_001_vtip_br20.dat']);
  v_br20=[v_br20 br20];
  br21 = load([sn num2str(iter,'%03.f') '_001_vtip_br21.dat']);
  v_br21=[v_br21 br21];
  br22 = load([sn num2str(iter,'%03.f') '_001_vtip_br22.dat']);
  v_br22=[v_br22 br22];
end

%% Calculate peak amplitude response
V_base = - 70;
iter_list = 1:1:75;
counter = 1;
       for iter = iter_list
        v_peak_br1(counter) = max(v_br1(:,counter))-V_base;
        v_peak_br2(counter) = max(v_br2(:,counter))-V_base;
        v_peak_br3(counter) = max(v_br3(:,counter))-V_base;
        v_peak_br4(counter) = max(v_br4(:,counter))-V_base;
        v_peak_br5(counter) = max(v_br5(:,counter))-V_base;
        v_peak_br6(counter) = max(v_br6(:,counter))-V_base;
        v_peak_br7(counter) = max(v_br7(:,counter))-V_base;
        v_peak_br8(counter) = max(v_br8(:,counter))-V_base;
        v_peak_br9(counter) = max(v_br9(:,counter))-V_base;
        v_peak_br10(counter) = max(v_br10(:,counter))-V_base;
        v_peak_br11(counter) = max(v_br11(:,counter))-V_base;
        v_peak_br12(counter) = max(v_br12(:,counter))-V_base;
        v_peak_br13(counter) = max(v_br13(:,counter))-V_base;
        v_peak_br14(counter) = max(v_br14(:,counter))-V_base;
        v_peak_br15(counter) = max(v_br15(:,counter))-V_base;
        v_peak_br16(counter) = max(v_br16(:,counter))-V_base;
        v_peak_br17(counter) = max(v_br17(:,counter))-V_base;
        v_peak_br18(counter) = max(v_br18(:,counter))-V_base;
        v_peak_br19(counter) = max(v_br19(:,counter))-V_base;
        v_peak_br20(counter) = max(v_br20(:,counter))-V_base;
        v_peak_br21(counter) = max(v_br21(:,counter))-V_base;
        v_peak_br22(counter) = max(v_br22(:,counter))-V_base;
        counter = counter+1;
       end

 v_peak_br1 = v_peak_br1(1:4:end);
 v_peak_br2 = v_peak_br2(1:4:end);
 v_peak_br3 = v_peak_br3(1:4:end);
 v_peak_br4 = v_peak_br4(1:4:end);
 v_peak_br5 = v_peak_br5(1:4:end);
 v_peak_br6 = v_peak_br6(1:4:end);
 v_peak_br7 = v_peak_br7(1:4:end);
 v_peak_br8 = v_peak_br8(1:4:end);
 v_peak_br9 = v_peak_br9(1:4:end);
 v_peak_br10 = v_peak_br10(1:4:end);
 v_peak_br11 = v_peak_br11(1:4:end);
 v_peak_br12 = v_peak_br12(1:4:end);
 v_peak_br13 = v_peak_br13(1:4:end);
 v_peak_br14 = v_peak_br14(1:4:end);
 v_peak_br15 = v_peak_br15(1:4:end);
 v_peak_br16 = v_peak_br16(1:4:end);
 v_peak_br17 = v_peak_br17(1:4:end);
 v_peak_br18 = v_peak_br18(1:4:end);
 v_peak_br19 = v_peak_br19(1:4:end);
 v_peak_br20 = v_peak_br20(1:4:end);
 v_peak_br21 = v_peak_br21(1:4:end);
 v_peak_br22 = v_peak_br22(1:4:end);



%% Plot all branches to check for possible depolarization
% Observe that only branch 5 and 10 were activated in the Neuron code
nb_syn = [2:8:150];
figure(1)
plot(nb_syn,v_peak_br1,'color','[0.8,0.35,0.73]','Marker','s','Markersize',15,'MarkerFaceColor','[0.8,0.35,0.73]','Linewidth',3)
grid on
xlabel('Number of PF synapses')
ylabel('Peak Amplitude (mV)')
set(gca,'FontSize',20)
hold on
plot(nb_syn,v_peak_br2,'color','[0,0,1]','Marker','s','Markersize',15,'MarkerFaceColor','[0,0,1]','Linewidth',3)
hold on
plot(nb_syn,v_peak_br3,'color','[0.2,0.55,0.2]','Marker','s','Markersize',15,'MarkerFaceColor','[0.2,0.55,0.2]','Linewidth',3)
hold on
plot(nb_syn,v_peak_br4,'color','[1,0.64,0]','Marker','s','Markersize',15,'MarkerFaceColor','[1,0.64,0]','Linewidth',3)
hold on
plot(nb_syn,v_peak_br5,'color','[0.64,0.165,0.165]','Marker','d','Markersize',15,'MarkerFaceColor','[0.64,0.165,0.165]','Linewidth',3)
hold on
plot(nb_syn,v_peak_br6,'color','[0.40,0.62,0.87]','Marker','s','Markersize',15,'MarkerFaceColor','[0.40,0.62,0.87]','Linewidth',3)
hold on
plot(nb_syn,v_peak_br7,'color','[0.75,0.75,0.09]','Marker','s','Markersize',15,'MarkerFaceColor','[0.75,0.75,0.09]','Linewidth',3)
hold on
plot(nb_syn,v_peak_br8,'color','[0.74,0,0.36]','Marker','s','Markersize',15,'MarkerFaceColor','[0.74,0,0.36]','Linewidth',3)
hold on
plot(nb_syn,v_peak_br9,'color','[0.95,0.5,0.6]','Marker','s','Markersize',15,'MarkerFaceColor','[0.95,0.5,0.6]','Linewidth',3)
hold on
plot(nb_syn,v_peak_br10,'color','[0.4,0.35,0.8]','Marker','diamond','Markersize',15,'MarkerFaceColor','[0.4,0.35,0.8]','Linewidth',3)
hold on
plot(nb_syn,v_peak_br11,'color','[0.96,0.81,0.326]','Marker','s','Markersize',15,'MarkerFaceColor','[0.96,0.81,0.326]','Linewidth',3)
hold on
plot(nb_syn,v_peak_br12,'color','[0,1,0.5]','Marker','s','Markersize',15,'MarkerFaceColor','[0,1,0.5]','Linewidth',3)
hold on
plot(nb_syn,v_peak_br13,'color','[0.89,0.1,0.42]','Marker','s','Markersize',15,'MarkerFaceColor','[0.89,0.1,0.42]','Linewidth',3)
hold on
plot(nb_syn,v_peak_br14,'color','[0.322,0.665,0.96]','Marker','s','Markersize',15,'MarkerFaceColor','[0.322,0.665,0.96]','Linewidth',3)
hold on
plot(nb_syn,v_peak_br15,'color','[0.93,0.51,0.933]','Marker','s','Markersize',15,'MarkerFaceColor','[0.93,0.51,0.933]','Linewidth',3)
hold on
plot(nb_syn,v_peak_br16,'color','[0.777,0.524,0.35]','Marker','s','Markersize',15,'MarkerFaceColor','[0.777,0.524,0.35]','Linewidth',3)
hold on
plot(nb_syn,v_peak_br17,'color','[1,0.7,0.9]','Marker','s','Markersize',15,'MarkerFaceColor','[1,0.7,0.9]','Linewidth',3)
hold on
plot(nb_syn,v_peak_br18,'color','[0.15,0.42,0.028]','Marker','s','Markersize',15,'MarkerFaceColor','[0.15,0.42,0.028]','Linewidth',3)
hold on
plot(nb_syn,v_peak_br19,'color','[1,0,0]','Marker','s','Markersize',15,'MarkerFaceColor','[1,0,0]','Linewidth',3)
hold on
plot(nb_syn,v_peak_br20,'color','[0.99,0.95,0.053]','Marker','s','Markersize',15,'MarkerFaceColor','[0.99,0.95,0.053]','Linewidth',3)
hold on
plot(nb_syn,v_peak_br21,'color','[0.65,0.02,0.60]','Marker','s','Markersize',15,'MarkerFaceColor','[0.65,0.02,0.60]','Linewidth',3)
hold on
plot(nb_syn,v_peak_br22,'color','[0.1,0.89,0.87]','Marker','s','Markersize',15,'MarkerFaceColor','[0.1,0.89,0.87]','Linewidth',3)
%
xlim([20,120]);
ylim([10,80])
legend('br1','br2','br3','br4','br5','br6','br7','br8','br9','br10','br11','br12','br13','br14','br15','br16','br17','br18','br19','br20','br21','br22','Location','best','NumColumns',9,'FontSize',15,'Location','North','Orientation','horizontal');
set(gcf,'position',[0,0,850,500])
title({'\color{black}Branches{\color[rgb]{0.64,0.165,0.165} 5} and {\color[rgb]{0.4,0.35,0.8}10} '})
exportgraphics(gca,'Fig_br5and10_1.png','Resolution',1500)