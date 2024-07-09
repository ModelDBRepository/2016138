%% Gabriela Cirtala
%% This code generates Figure6 in Cirtala2024:

clear all
close all

% Figure6A shows the cummulative length of the branches
% Lengthbr vector is obtained from Neuron by summing up the length of each
% dendrite within each branch (In Neuron, just type dendrite_name.L)
Lengthbr = 1.0e+03 *[ 
   0.149653508500000
   0.137751301400000
   0.193302991500000
   0.366191588600000
   0.676799705800000
   0.173590131000000
   0.216031103280000
   1.121619997880000
   0.281629822360000
   0.277877699700000
   0.534364154700000
   1.159597696650000
   0.274473266200000
   0.265961427700000
   0.840883453000000
   0.364465564800000
   0.192046861000000
   0.122075430000000
   0.139012205700000
   0.178695422400000
   1.457495250600001
   0.334045778100000
   ];

% This vector measures the distance between the most distal point of each
% branch and the soma: 
Distance_distaltosoma = [
   139.0219 %br1
   137.5045 %br2
   152.0176 %br3
   163.9706 %br4
   180.2024 %br5
   187.7833 %br6
   207.1791 %br7
   282.2396 %br8
   181.1057 %br9
   159.9854 %br10
   226.5093 %br11
   263.3572 %br12
   177.3311 %br13
   116.7386 %br14
   168.7812 %br15
   145.2533 %br16
   176.2063 %br17
   152.5758 %br18
   155.5969 %br19
   180.5388 %br20
   255.0276 %br21
   224.1061 %br22
   ];

% CaP relative increases necessarry for triggering a bimodal response (as in Figure5D)
CAP_cond = [
1.4 %br1
1.6 %br2
1.7 %br3
1.5 %br4
1  %br5
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

figure(1)
%% define colors for branches:
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
col_br12 =[0,1,0.05];
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

figure(1)
b2 = bar(1:22,Lengthbr,'k','BarWidth',0.9);
set(gca,'FontSize',20)
grid on
xticks([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22])
b2.FaceColor = 'flat';
xlim([0,23])
xlabel('Branch number')
ylabel('Length ({\mu}m)');

for i = 1:length(col)
b2.CData(i,:) =col(i,:);
end
set(gcf,'position',[0,0,1300,450])
hgexport(gcf, 'Lengthvsbranch', hgexport('factorystyle'), 'Format', 'png','Resolution','500')

figure(2)
plot(CAP_cond,Lengthbr,'Marker','o','MarkerFaceColor','k','MarkerEdgeColor','k','LineStyle','none','MarkerSize',15)
ylabel('Length of each branch (/mu m)')
xlabel('CaP relative change')
set(gca,'FontSize',20)
hgexport(gcf, 'Lengthbranch_vs_CAP', hgexport('factorystyle'), 'Format', 'png','Resolution','500')

figure(3)
plot(CAP_cond,Distance_distaltosoma,'Marker','o','MarkerFaceColor','k','MarkerEdgeColor','k','LineStyle','none','MarkerSize',15)
ylabel('Distance distal point to soma')
xlabel('CaP')
set(gca,'FontSize',20)
hgexport(gcf, 'Distancedistaltosoma_vs_CAP', hgexport('factorystyle'), 'Format', 'png','Resolution','500')

%% Determine correlation coeff: 
[r3,p3] = corrcoef(CAP_cond, Distance_distaltosoma);
[r4,p4] = corrcoef(CAP_cond, Lengthbr);


