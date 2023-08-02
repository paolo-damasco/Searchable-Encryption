close all
clear
clc

%%
seed = 1000;

data_algoritmo2023_1 = load("log_execution_search_1_algoritmo2023.txt");
data_algoritmo2023_10 = load("log_execution_search_10_algoritmo2023.txt");
data_algoritmo2023_20 = load("log_execution_search_20_algoritmo2023.txt");
data_algoritmo2023_30 = load("log_execution_search_30_algoritmo2023.txt");
data_algoritmo2023_40 = load("log_execution_search_40_algoritmo2023.txt");
data_algoritmo2023_50 = load("log_execution_search_50_algoritmo2023.txt");

data_algoritmo2023_60 = load("log_execution_search_60_algoritmo2023.txt");
data_algoritmo2023_70 = load("log_execution_search_70_algoritmo2023.txt");
data_algoritmo2023_80 = load("log_execution_search_80_algoritmo2023.txt");
data_algoritmo2023_90 = load("log_execution_search_90_algoritmo2023.txt");
data_algoritmo2023_100 = load("log_execution_search_100_algoritmo2023.txt");
data_algoritmo2023_150 = load("log_execution_search_150_algoritmo2023.txt");

data_algoritmo2023_200 = load("log_execution_search_200_algoritmo2023.txt");
data_algoritmo2023_250 = load("log_execution_search_250_algoritmo2023.txt");
data_algoritmo2023_300 = load("log_execution_search_300_algoritmo2023.txt");
data_algoritmo2023_350 = load("log_execution_search_350_algoritmo2023.txt");
data_algoritmo2023_400 = load("log_execution_search_400_algoritmo2023.txt");
data_algoritmo2023_450 = load("log_execution_search_450_algoritmo2023.txt");
data_algoritmo2023_500 = load("log_execution_search_500_algoritmo2023.txt");

%%
singolo_search_algoritmo2023 = data_algoritmo2023_1(:,3)./1000;

vettore_trapdoor = [1,10:10:100,150:50:500];

search_algoritmo2023_10 = data_algoritmo2023_10(:,3)./1000;
search_algoritmo2023_20 = data_algoritmo2023_20(:,3)./1000;
search_algoritmo2023_30 = data_algoritmo2023_30(:,3)./1000;
search_algoritmo2023_40 = data_algoritmo2023_40(:,3)./1000;
search_algoritmo2023_50 = data_algoritmo2023_50(:,3)./1000;

search_algoritmo2023_60 = data_algoritmo2023_60(:,3)./1000;
search_algoritmo2023_70 = data_algoritmo2023_70(:,3)./1000;
search_algoritmo2023_80 = data_algoritmo2023_80(:,3)./1000;
search_algoritmo2023_90 = data_algoritmo2023_90(:,3)./1000;
search_algoritmo2023_100 = data_algoritmo2023_100(:,3)./1000;

search_algoritmo2023_150 = data_algoritmo2023_150(:,3)./1000;
search_algoritmo2023_200 = data_algoritmo2023_200(:,3)./1000;
search_algoritmo2023_250 = data_algoritmo2023_250(:,3)./1000;
search_algoritmo2023_300 = data_algoritmo2023_300(:,3)./1000;
search_algoritmo2023_350 = data_algoritmo2023_350(:,3)./1000;
search_algoritmo2023_400 = data_algoritmo2023_400(:,3)./1000;
search_algoritmo2023_450 = data_algoritmo2023_450(:,3)./1000;
search_algoritmo2023_500 = data_algoritmo2023_500(:,3)./1000;

search_algoritmo2023 = vertcat(singolo_search_algoritmo2023,search_algoritmo2023_10,search_algoritmo2023_20,search_algoritmo2023_30,search_algoritmo2023_40,search_algoritmo2023_50,search_algoritmo2023_60,search_algoritmo2023_70,search_algoritmo2023_80,search_algoritmo2023_90,search_algoritmo2023_100,search_algoritmo2023_150,search_algoritmo2023_200,search_algoritmo2023_250,search_algoritmo2023_300,search_algoritmo2023_350,search_algoritmo2023_400,search_algoritmo2023_450,search_algoritmo2023_500);
%%
avg_search_algoritmo2023 = zeros(18,1);

%%

j = 1;
for i = 1:19
    avg_search_algoritmo2023(i) = mean(search_algoritmo2023(j:i*seed));
    j = j + 1000;
end


%%
var_search_algoritmo2023 = zeros(18,1);

%%

z = 1;
for i = 1:19
    var_search_algoritmo2023(i) = var(search_algoritmo2023(z:i*seed));
    z = z + 1000;
end


%%

y_boxplot_algoritmo2023_1 = repmat({'1'},length(singolo_search_algoritmo2023),1);
y_boxplot_algoritmo2023_10 = repmat({'10'},length(search_algoritmo2023_10),1);
y_boxplot_algoritmo2023_20 = repmat({'20'},length(search_algoritmo2023_20),1);
y_boxplot_algoritmo2023_30 = repmat({'30'},length(search_algoritmo2023_30),1);
y_boxplot_algoritmo2023_40 = repmat({'40'},length(search_algoritmo2023_40),1);
y_boxplot_algoritmo2023_50 = repmat({'50'},length(search_algoritmo2023_50),1);

y_boxplot_algoritmo2023_60 = repmat({'60'},length(search_algoritmo2023_50),1);
y_boxplot_algoritmo2023_70 = repmat({'70'},length(search_algoritmo2023_10),1);
y_boxplot_algoritmo2023_80 = repmat({'80'},length(search_algoritmo2023_20),1);
y_boxplot_algoritmo2023_90 = repmat({'90'},length(search_algoritmo2023_30),1);
y_boxplot_algoritmo2023_100 = repmat({'100'},length(search_algoritmo2023_40),1);
y_boxplot_algoritmo2023_150 = repmat({'150'},length(search_algoritmo2023_50),1);

y_boxplot_algoritmo2023_200 = repmat({'200'},length(search_algoritmo2023_40),1);
y_boxplot_algoritmo2023_250 = repmat({'250'},length(search_algoritmo2023_50),1);
y_boxplot_algoritmo2023_300 = repmat({'300'},length(search_algoritmo2023_40),1);
y_boxplot_algoritmo2023_350 = repmat({'350'},length(search_algoritmo2023_50),1);
y_boxplot_algoritmo2023_400 = repmat({'400'},length(search_algoritmo2023_40),1);
y_boxplot_algoritmo2023_450 = repmat({'450'},length(search_algoritmo2023_50),1);
y_boxplot_algoritmo2023_500 = repmat({'500'},length(search_algoritmo2023_40),1);




y_boxplot_algoritmo2023 = vertcat(y_boxplot_algoritmo2023_1,y_boxplot_algoritmo2023_10,y_boxplot_algoritmo2023_20,y_boxplot_algoritmo2023_30,y_boxplot_algoritmo2023_40,y_boxplot_algoritmo2023_50,y_boxplot_algoritmo2023_60,y_boxplot_algoritmo2023_70,y_boxplot_algoritmo2023_80,y_boxplot_algoritmo2023_90,y_boxplot_algoritmo2023_100,y_boxplot_algoritmo2023_150,y_boxplot_algoritmo2023_200,y_boxplot_algoritmo2023_250,y_boxplot_algoritmo2023_300,y_boxplot_algoritmo2023_350,y_boxplot_algoritmo2023_400,y_boxplot_algoritmo2023_450,y_boxplot_algoritmo2023_500);

%%

clearvars -except search_algoritmo2023 search_attribute y_boxplot_algoritmo2023 y_boxplot_attribute vettore_trapdoor singolo_search_algoritmo2023 singolo_search_attribute avg_search_algoritmo2023 var_search_algoritmo2023
% %%
% 
% figure('Name', "Box Plot Search [algoritmo2023]")
% hb = boxplot(search_algoritmo2023,y_boxplot_algoritmo2023);
% %hb = boxplot(search_algoritmo2023,y_boxplot_algoritmo2023,'whisker', inf);
% set(hb,'LineWidth',1.5);
% %hold on
% grid on
% %plot(1:1:19,avg_search_algoritmo2023,'--ok','MarkerSize',10,'MarkerFaceColor','k',LineWidth=0.5)
% %legend('Average Search Time [algoritmo2023]')
% set(gca,'FontSize',25,'FontName','Times New Roman')
% set(gca, 'YScale', 'log')
% %ylim([0.01 0.50])
% %yticks(0:0.05:0.50)
% xticklabels(vettore_trapdoor)
% ylabel("Search Time [s]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
% xlabel("Trapdoors [#]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
% title("Workstation Box Plot Search [algoritmo2023]")
% %hold off
% 
% 
% % figure('Name', "Box Plot Search [attribute]")
% % hb = boxplot(search_attribute,y_boxplot_attribute);
% % %hb = boxplot(search_attribute,y_boxplot_attribute,'whisker', inf);
% % set(hb,'LineWidth',1.5);
% % %hold on
% % grid on
% % %plot(1:1:19,avg_search_attribute,'--ok','MarkerSize',10,'MarkerFaceColor','k',LineWidth=0.5)
% % %legend('Average Search Time [attribute]')
% % set(gca,'FontSize',25,'FontName','Times New Roman')
% % set(gca, 'YScale', 'log')
% % %ylim([0.01 0.50])
% % %yticks(0:0.05:0.50)
% % xticklabels(vettore_trapdoor)
% % ylabel("Search Time [s]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
% % xlabel("Trapdoors [#]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
% % title("Workstation Box Plot Search [attribute]")
% % %hold off
% 
% figure('Name', "Box Plot Search and Average algoritmo2023")
% hb = boxplot(search_algoritmo2023,y_boxplot_algoritmo2023);
% %hb = boxplot(search_algoritmo2023,y_boxplot_algoritmo2023,'whisker', inf);
% set(hb,'LineWidth',1.5);
% hold on
% grid on
% plot(1:1:19,avg_search_algoritmo2023,'--ok','MarkerSize',10,'MarkerFaceColor','k',LineWidth=0.5)
% legend('Average Search Time [algoritmo2023]','Location','northwest')
% set(gca,'FontSize',25,'FontName','Times New Roman')
% set(gca, 'YScale', 'log')
% %ylim([0.01 0.50])
% %yticks(0:0.05:0.50)
% xticklabels(vettore_trapdoor)
% ylabel("Search Time [s]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
% xlabel("Trapdoors [#]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
% title("Workstation Box Plot Search and Average algoritmo2023")
% hold off
% 
% 
% % figure('Name', "Box Plot Search and Average [attribute]")
% % hb = boxplot(search_attribute,y_boxplot_attribute);
% % %hb = boxplot(search_attribute,y_boxplot_attribute,'whisker', inf);
% % set(hb,'LineWidth',1.5);
% % hold on
% % grid on
% % plot(1:1:19,avg_search_attribute,'--ok','MarkerSize',10,'MarkerFaceColor','k',LineWidth=0.5)
% % legend('Average Search Time [attribute]','Location','northwest')
% % set(gca,'FontSize',25,'FontName','Times New Roman')
% % set(gca, 'YScale', 'log')
% % %ylim([0.01 0.5])
% % %yticks(0:0.05:0.50)
% % xticklabels(vettore_trapdoor)
% % ylabel("Search Time [s]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
% % xlabel("Trapdoors [#]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
% % title("Workstation Box Plot Search and Average [attribute]")
% %hold off
% 
% 
% %%
% 
% x = 1;
% y = [mean(singolo_search_algoritmo2023)];
% 
% figure('Name', "Average Single Search Time Value")
% b1 = bar(x,y);
% grid on
% legend('[algoritmo2023]','Location','northeast')
% set(gca,'FontSize',25,'FontName','Times New Roman')
% %ylim([0 0.035])
% %yticks(0:0.005:0.035)
% xticklabels(1)
% ylabel("Average Search Time [s]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
% xlabel("Search Operation [#]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
% title("Workstation Average Single  Search Time Value")

%%
figure('Name', "Box Plot Search and Average")
%hb = boxplot(search_algoritmo2023,y_boxplot_algoritmo2023);
hb = boxplot(search_algoritmo2023,y_boxplot_algoritmo2023,'whisker', inf);
set(hb,'LineWidth',2);
set(hb,'Color', [0 0.5 0]);
hold on
plot(1:1:19,avg_search_algoritmo2023,'--s','Color',[0.25, 0.25, 0.25],'MarkerSize',12,'MarkerFaceColor',[0.25, 0.25, 0.25],LineWidth=0.9)
grid on
%hb2 = boxplot(search_attribute,y_boxplot_attribute);
%hb2 = boxplot(search_attribute,y_boxplot_attribute,'whisker', inf);
%set(hb2,'LineWidth',2);
%set(hb2,'Color',[0, 0.4470, 0.7410]);
% plot(1:1:19,avg_search_algoritmo2023,'--ob','MarkerSize',10,'MarkerFaceColor','b',LineWidth=0.5)
% plot(1:1:19,avg_search_attribute,'--ok','MarkerSize',10,'MarkerFaceColor','k',LineWidth=0.5)
%plot(1:1:19,avg_search_attribute,'--o','Color',[0.25, 0.25, 0.25],'MarkerSize',10,'MarkerFaceColor',[0.25, 0.25, 0.25],LineWidth=0.9)
lines = findobj(gcf, 'type', 'line', 'Tag', 'Median');
set(lines, 'Color', 'r');
up_adj = findobj(gca,'type', 'line', 'tag', 'Upper Whisker'); set(up_adj, 'Color', 'k','linewidth',1);% Setting the upper whiskers
low_adj= findobj(gca, 'type', 'line','tag', 'Lower Whisker'); set(low_adj, 'Color', 'k','linewidth',1);%Setting the lower whiskers
up = findobj(gca,'type', 'line', 'tag', 'Upper Adjacent Value'); set(up, 'Color', 'k','linewidth',1);%Setting the line betwwen percentile 75 and 95
low= findobj(gca, 'type', 'line','tag', 'Lower Adjacent Value'); set(low, 'Color', 'k','linewidth',1);%Setting the line betwwen percentile 25 and 5
set(gca,'FontSize',25,'FontName','Times New Roman')
set(gca, 'YScale', 'log')
legend('Average Search Time [algoritmo2023]','Location','northwest')
ylabel("Search Time [s]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
xlabel("Trapdoors [#]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
title("Workstation Box Plot Search and Average")
hold off

figure('Name', "Search and Average")
%hb = boxplot(search_algoritmo2023,y_boxplot_algoritmo2023);
%hb = boxplot(search_algoritmo2023,y_boxplot_algoritmo2023,'whisker', inf);
% set(hb,'LineWidth',2);
% set(hb,'Color', [0 0.5 0]);
% hold on
plot(vettore_trapdoor,avg_search_algoritmo2023,'--s','Color',[0.25, 0.25, 0.25],'MarkerSize',12,'MarkerFaceColor',[0.25, 0.25, 0.25],LineWidth=0.9)
grid on
%hb2 = boxplot(search_attribute,y_boxplot_attribute);
%hb2 = boxplot(search_attribute,y_boxplot_attribute,'whisker', inf);
%set(hb2,'LineWidth',2);
%set(hb2,'Color',[0, 0.4470, 0.7410]);
% plot(1:1:19,avg_search_algoritmo2023,'--ob','MarkerSize',10,'MarkerFaceColor','b',LineWidth=0.5)
% plot(1:1:19,avg_search_attribute,'--ok','MarkerSize',10,'MarkerFaceColor','k',LineWidth=0.5)
%plot(1:1:19,avg_search_attribute,'--o','Color',[0.25, 0.25, 0.25],'MarkerSize',10,'MarkerFaceColor',[0.25, 0.25, 0.25],LineWidth=0.9)
%lines = findobj(gcf, 'type', 'line', 'Tag', 'Median');
% set(lines, 'Color', 'r');
% up_adj = findobj(gca,'type', 'line', 'tag', 'Upper Whisker'); set(up_adj, 'Color', 'k','linewidth',1);% Setting the upper whiskers
% low_adj= findobj(gca, 'type', 'line','tag', 'Lower Whisker'); set(low_adj, 'Color', 'k','linewidth',1);%Setting the lower whiskers
% up = findobj(gca,'type', 'line', 'tag', 'Upper Adjacent Value'); set(up, 'Color', 'k','linewidth',1);%Setting the line betwwen percentile 75 and 95
% low= findobj(gca, 'type', 'line','tag', 'Lower Adjacent Value'); set(low, 'Color', 'k','linewidth',1);%Setting the line betwwen percentile 25 and 5
set(gca,'FontSize',25,'FontName','Times New Roman')
%set(gca, 'YScale', 'log')
ylim([0 1.5])
yticks(0:0.1:1.5)
xlim([0 501])
xticks(0:20:500)
xticklabels(0:20:500)
legend('Average Search Time [algoritmo2023]','Location','northwest')
ylabel("Search Time [s]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
xlabel("Trapdoors [#]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
title("Computer Lab Search Average")
hold off

singola_op = avg_search_algoritmo2023./vettore_trapdoor';

figure('Name', "Single Search and Average")
%hb = boxplot(search_algoritmo2023,y_boxplot_algoritmo2023);
%hb = boxplot(search_algoritmo2023,y_boxplot_algoritmo2023,'whisker', inf);
% set(hb,'LineWidth',2);
% set(hb,'Color', [0 0.5 0]);
% hold on
plot(vettore_trapdoor,singola_op,'--s','Color',[0.25, 0.25, 0.25],'MarkerSize',12,'MarkerFaceColor',[0.25, 0.25, 0.25],LineWidth=0.9)
grid on
%hb2 = boxplot(search_attribute,y_boxplot_attribute);
%hb2 = boxplot(search_attribute,y_boxplot_attribute,'whisker', inf);
%set(hb2,'LineWidth',2);
%set(hb2,'Color',[0, 0.4470, 0.7410]);
% plot(1:1:19,avg_search_algoritmo2023,'--ob','MarkerSize',10,'MarkerFaceColor','b',LineWidth=0.5)
% plot(1:1:19,avg_search_attribute,'--ok','MarkerSize',10,'MarkerFaceColor','k',LineWidth=0.5)
%plot(1:1:19,avg_search_attribute,'--o','Color',[0.25, 0.25, 0.25],'MarkerSize',10,'MarkerFaceColor',[0.25, 0.25, 0.25],LineWidth=0.9)
%lines = findobj(gcf, 'type', 'line', 'Tag', 'Median');
% set(lines, 'Color', 'r');
% up_adj = findobj(gca,'type', 'line', 'tag', 'Upper Whisker'); set(up_adj, 'Color', 'k','linewidth',1);% Setting the upper whiskers
% low_adj= findobj(gca, 'type', 'line','tag', 'Lower Whisker'); set(low_adj, 'Color', 'k','linewidth',1);%Setting the lower whiskers
% up = findobj(gca,'type', 'line', 'tag', 'Upper Adjacent Value'); set(up, 'Color', 'k','linewidth',1);%Setting the line betwwen percentile 75 and 95
% low= findobj(gca, 'type', 'line','tag', 'Lower Adjacent Value'); set(low, 'Color', 'k','linewidth',1);%Setting the line betwwen percentile 25 and 5
set(gca,'FontSize',25,'FontName','Times New Roman')
%set(gca, 'YScale', 'log')
ylim([0 0.015])
yticks(0:0.001:0.015)
xlim([0 501])
xticks(0:20:500)
xticklabels(0:20:500)
legend('Average Search Time [algoritmo2023]','Location','northwest')
ylabel("Search Time singola operazione [s]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
xlabel("Trapdoors [#]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
title("Computer Lab Search Average")
hold off


singola_op_var = var_search_algoritmo2023./vettore_trapdoor';


figure('Name', "Single Search and Variance")
%hb = boxplot(search_algoritmo2023,y_boxplot_algoritmo2023);
%hb = boxplot(search_algoritmo2023,y_boxplot_algoritmo2023,'whisker', inf);
% set(hb,'LineWidth',2);
% set(hb,'Color', [0 0.5 0]);
% hold on
plot(vettore_trapdoor,singola_op_var,'--s','Color',[0.25, 0.25, 0.25],'MarkerSize',12,'MarkerFaceColor',[0.25, 0.25, 0.25],LineWidth=0.9)
grid on
%hb2 = boxplot(search_attribute,y_boxplot_attribute);
%hb2 = boxplot(search_attribute,y_boxplot_attribute,'whisker', inf);
%set(hb2,'LineWidth',2);
%set(hb2,'Color',[0, 0.4470, 0.7410]);
% plot(1:1:19,avg_search_algoritmo2023,'--ob','MarkerSize',10,'MarkerFaceColor','b',LineWidth=0.5)
% plot(1:1:19,avg_search_attribute,'--ok','MarkerSize',10,'MarkerFaceColor','k',LineWidth=0.5)
%plot(1:1:19,avg_search_attribute,'--o','Color',[0.25, 0.25, 0.25],'MarkerSize',10,'MarkerFaceColor',[0.25, 0.25, 0.25],LineWidth=0.9)
%lines = findobj(gcf, 'type', 'line', 'Tag', 'Median');
% set(lines, 'Color', 'r');
% up_adj = findobj(gca,'type', 'line', 'tag', 'Upper Whisker'); set(up_adj, 'Color', 'k','linewidth',1);% Setting the upper whiskers
% low_adj= findobj(gca, 'type', 'line','tag', 'Lower Whisker'); set(low_adj, 'Color', 'k','linewidth',1);%Setting the lower whiskers
% up = findobj(gca,'type', 'line', 'tag', 'Upper Adjacent Value'); set(up, 'Color', 'k','linewidth',1);%Setting the line betwwen percentile 75 and 95
% low= findobj(gca, 'type', 'line','tag', 'Lower Adjacent Value'); set(low, 'Color', 'k','linewidth',1);%Setting the line betwwen percentile 25 and 5
set(gca,'FontSize',25,'FontName','Times New Roman')
%set(gca, 'YScale', 'log')
% ylim([0 0.015])
% yticks(0:0.001:0.015)
xlim([0 501])
xticks(0:20:500)
xticklabels(0:20:500)
legend('Varianza Search Time [algoritmo2023]','Location','northwest')
ylabel("Varianza Search Time singola operazione [s]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
xlabel("Trapdoors [#]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
title("Computer Lab Search Average")
hold off