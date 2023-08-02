close all
clear
clc

%%
seed = 1000;

data_wang2021_1 = load("log_execution_search_1_wang2021.txt");
data_wang2021_10 = load("log_execution_search_10_wang2021.txt");
data_wang2021_20 = load("log_execution_search_20_wang2021.txt");
data_wang2021_30 = load("log_execution_search_30_wang2021.txt");
data_wang2021_40 = load("log_execution_search_40_wang2021.txt");
data_wang2021_50 = load("log_execution_search_50_wang2021.txt");

data_wang2021_60 = load("log_execution_search_60_wang2021.txt");
data_wang2021_70 = load("log_execution_search_70_wang2021.txt");
data_wang2021_80 = load("log_execution_search_80_wang2021.txt");
data_wang2021_90 = load("log_execution_search_90_wang2021.txt");
data_wang2021_100 = load("log_execution_search_100_wang2021.txt");
data_wang2021_150 = load("log_execution_search_150_wang2021.txt");

data_wang2021_200 = load("log_execution_search_200_wang2021.txt");
data_wang2021_250 = load("log_execution_search_250_wang2021.txt");
data_wang2021_300 = load("log_execution_search_300_wang2021.txt");
data_wang2021_350 = load("log_execution_search_350_wang2021.txt");
data_wang2021_400 = load("log_execution_search_400_wang2021.txt");
data_wang2021_450 = load("log_execution_search_450_wang2021.txt");
data_wang2021_500 = load("log_execution_search_500_wang2021.txt");

%%
singolo_search_wang2021 = data_wang2021_1(:,3)./1000;

vettore_trapdoor = [1,10:10:100,150:50:500];

search_wang2021_10 = data_wang2021_10(:,3)./1000;
search_wang2021_20 = data_wang2021_20(:,3)./1000;
search_wang2021_30 = data_wang2021_30(:,3)./1000;
search_wang2021_40 = data_wang2021_40(:,3)./1000;
search_wang2021_50 = data_wang2021_50(:,3)./1000;

search_wang2021_60 = data_wang2021_60(:,3)./1000;
search_wang2021_70 = data_wang2021_70(:,3)./1000;
search_wang2021_80 = data_wang2021_80(:,3)./1000;
search_wang2021_90 = data_wang2021_90(:,3)./1000;
search_wang2021_100 = data_wang2021_100(:,3)./1000;

search_wang2021_150 = data_wang2021_150(:,3)./1000;
search_wang2021_200 = data_wang2021_200(:,3)./1000;
search_wang2021_250 = data_wang2021_250(:,3)./1000;
search_wang2021_300 = data_wang2021_300(:,3)./1000;
search_wang2021_350 = data_wang2021_350(:,3)./1000;
search_wang2021_400 = data_wang2021_400(:,3)./1000;
search_wang2021_450 = data_wang2021_450(:,3)./1000;
search_wang2021_500 = data_wang2021_500(:,3)./1000;

search_wang2021 = vertcat(singolo_search_wang2021,search_wang2021_10,search_wang2021_20,search_wang2021_30,search_wang2021_40,search_wang2021_50,search_wang2021_60,search_wang2021_70,search_wang2021_80,search_wang2021_90,search_wang2021_100,search_wang2021_150,search_wang2021_200,search_wang2021_250,search_wang2021_300,search_wang2021_350,search_wang2021_400,search_wang2021_450,search_wang2021_500);
%%
avg_search_wang2021 = zeros(18,1);

%%

j = 1;
for i = 1:19
    avg_search_wang2021(i) = mean(search_wang2021(j:i*seed));
    j = j + 1000;
end


%%
var_search_wang2021 = zeros(18,1);

%%

z = 1;
for i = 1:19
    var_search_wang2021(i) = var(search_wang2021(z:i*seed));
    z = z + 1000;
end


%%

y_boxplot_wang2021_1 = repmat({'1'},length(singolo_search_wang2021),1);
y_boxplot_wang2021_10 = repmat({'10'},length(search_wang2021_10),1);
y_boxplot_wang2021_20 = repmat({'20'},length(search_wang2021_20),1);
y_boxplot_wang2021_30 = repmat({'30'},length(search_wang2021_30),1);
y_boxplot_wang2021_40 = repmat({'40'},length(search_wang2021_40),1);
y_boxplot_wang2021_50 = repmat({'50'},length(search_wang2021_50),1);

y_boxplot_wang2021_60 = repmat({'60'},length(search_wang2021_50),1);
y_boxplot_wang2021_70 = repmat({'70'},length(search_wang2021_10),1);
y_boxplot_wang2021_80 = repmat({'80'},length(search_wang2021_20),1);
y_boxplot_wang2021_90 = repmat({'90'},length(search_wang2021_30),1);
y_boxplot_wang2021_100 = repmat({'100'},length(search_wang2021_40),1);
y_boxplot_wang2021_150 = repmat({'150'},length(search_wang2021_50),1);

y_boxplot_wang2021_200 = repmat({'200'},length(search_wang2021_40),1);
y_boxplot_wang2021_250 = repmat({'250'},length(search_wang2021_50),1);
y_boxplot_wang2021_300 = repmat({'300'},length(search_wang2021_40),1);
y_boxplot_wang2021_350 = repmat({'350'},length(search_wang2021_50),1);
y_boxplot_wang2021_400 = repmat({'400'},length(search_wang2021_40),1);
y_boxplot_wang2021_450 = repmat({'450'},length(search_wang2021_50),1);
y_boxplot_wang2021_500 = repmat({'500'},length(search_wang2021_40),1);




y_boxplot_wang2021 = vertcat(y_boxplot_wang2021_1,y_boxplot_wang2021_10,y_boxplot_wang2021_20,y_boxplot_wang2021_30,y_boxplot_wang2021_40,y_boxplot_wang2021_50,y_boxplot_wang2021_60,y_boxplot_wang2021_70,y_boxplot_wang2021_80,y_boxplot_wang2021_90,y_boxplot_wang2021_100,y_boxplot_wang2021_150,y_boxplot_wang2021_200,y_boxplot_wang2021_250,y_boxplot_wang2021_300,y_boxplot_wang2021_350,y_boxplot_wang2021_400,y_boxplot_wang2021_450,y_boxplot_wang2021_500);

%%

clearvars -except search_wang2021 search_attribute y_boxplot_wang2021 y_boxplot_attribute vettore_trapdoor singolo_search_wang2021 singolo_search_attribute avg_search_wang2021 var_search_wang2021
% %%
% 
% figure('Name', "Box Plot Search [Wang2021]")
% hb = boxplot(search_wang2021,y_boxplot_wang2021);
% %hb = boxplot(search_wang2021,y_boxplot_wang2021,'whisker', inf);
% set(hb,'LineWidth',1.5);
% %hold on
% grid on
% %plot(1:1:19,avg_search_wang2021,'--ok','MarkerSize',10,'MarkerFaceColor','k',LineWidth=0.5)
% %legend('Average Search Time [WANG2021]')
% set(gca,'FontSize',25,'FontName','Times New Roman')
% set(gca, 'YScale', 'log')
% %ylim([0.01 0.50])
% %yticks(0:0.05:0.50)
% xticklabels(vettore_trapdoor)
% ylabel("Search Time [s]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
% xlabel("Trapdoors [#]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
% title("Workstation Box Plot Search [Wang2021]")
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
% figure('Name', "Box Plot Search and Average Wang2021")
% hb = boxplot(search_wang2021,y_boxplot_wang2021);
% %hb = boxplot(search_wang2021,y_boxplot_wang2021,'whisker', inf);
% set(hb,'LineWidth',1.5);
% hold on
% grid on
% plot(1:1:19,avg_search_wang2021,'--ok','MarkerSize',10,'MarkerFaceColor','k',LineWidth=0.5)
% legend('Average Search Time [WANG2021]','Location','northwest')
% set(gca,'FontSize',25,'FontName','Times New Roman')
% set(gca, 'YScale', 'log')
% %ylim([0.01 0.50])
% %yticks(0:0.05:0.50)
% xticklabels(vettore_trapdoor)
% ylabel("Search Time [s]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
% xlabel("Trapdoors [#]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
% title("Workstation Box Plot Search and Average Wang2021")
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
% y = [mean(singolo_search_wang2021)];
% 
% figure('Name', "Average Single Search Time Value")
% b1 = bar(x,y);
% grid on
% legend('[wang2021]','Location','northeast')
% set(gca,'FontSize',25,'FontName','Times New Roman')
% %ylim([0 0.035])
% %yticks(0:0.005:0.035)
% xticklabels(1)
% ylabel("Average Search Time [s]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
% xlabel("Search Operation [#]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
% title("Workstation Average Single  Search Time Value")

%%
figure('Name', "Box Plot Search and Average")
%hb = boxplot(search_wang2021,y_boxplot_wang2021);
hb = boxplot(search_wang2021,y_boxplot_wang2021,'whisker', inf);
set(hb,'LineWidth',2);
set(hb,'Color', [0 0.5 0]);
hold on
plot(1:1:19,avg_search_wang2021,'--s','Color',[0.25, 0.25, 0.25],'MarkerSize',12,'MarkerFaceColor',[0.25, 0.25, 0.25],LineWidth=0.9)
grid on
%hb2 = boxplot(search_attribute,y_boxplot_attribute);
%hb2 = boxplot(search_attribute,y_boxplot_attribute,'whisker', inf);
%set(hb2,'LineWidth',2);
%set(hb2,'Color',[0, 0.4470, 0.7410]);
% plot(1:1:19,avg_search_wang2021,'--ob','MarkerSize',10,'MarkerFaceColor','b',LineWidth=0.5)
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
legend('Average Search Time [wang2021]','Location','northwest')
ylabel("Search Time [s]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
xlabel("Trapdoors [#]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
title("Workstation Box Plot Search and Average")
hold off

figure('Name', "Search and Average")
%hb = boxplot(search_wang2021,y_boxplot_wang2021);
%hb = boxplot(search_wang2021,y_boxplot_wang2021,'whisker', inf);
% set(hb,'LineWidth',2);
% set(hb,'Color', [0 0.5 0]);
% hold on
plot(vettore_trapdoor,avg_search_wang2021,'--s','Color',[0.25, 0.25, 0.25],'MarkerSize',12,'MarkerFaceColor',[0.25, 0.25, 0.25],LineWidth=0.9)
grid on
%hb2 = boxplot(search_attribute,y_boxplot_attribute);
%hb2 = boxplot(search_attribute,y_boxplot_attribute,'whisker', inf);
%set(hb2,'LineWidth',2);
%set(hb2,'Color',[0, 0.4470, 0.7410]);
% plot(1:1:19,avg_search_wang2021,'--ob','MarkerSize',10,'MarkerFaceColor','b',LineWidth=0.5)
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
legend('Average Search Time [wang2021]','Location','northwest')
ylabel("Search Time [s]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
xlabel("Trapdoors [#]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
title("Computer Lab Search Average")
hold off

singola_op = avg_search_wang2021./vettore_trapdoor';

figure('Name', "Single Search and Average")
%hb = boxplot(search_wang2021,y_boxplot_wang2021);
%hb = boxplot(search_wang2021,y_boxplot_wang2021,'whisker', inf);
% set(hb,'LineWidth',2);
% set(hb,'Color', [0 0.5 0]);
% hold on
plot(vettore_trapdoor,singola_op,'--s','Color',[0.25, 0.25, 0.25],'MarkerSize',12,'MarkerFaceColor',[0.25, 0.25, 0.25],LineWidth=0.9)
grid on
%hb2 = boxplot(search_attribute,y_boxplot_attribute);
%hb2 = boxplot(search_attribute,y_boxplot_attribute,'whisker', inf);
%set(hb2,'LineWidth',2);
%set(hb2,'Color',[0, 0.4470, 0.7410]);
% plot(1:1:19,avg_search_wang2021,'--ob','MarkerSize',10,'MarkerFaceColor','b',LineWidth=0.5)
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
legend('Average Search Time [wang2021]','Location','northwest')
ylabel("Search Time singola operazione [s]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
xlabel("Trapdoors [#]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
title("Computer Lab Search Average")
hold off


singola_op_var = var_search_wang2021./vettore_trapdoor';


figure('Name', "Single Search and Variance")
%hb = boxplot(search_wang2021,y_boxplot_wang2021);
%hb = boxplot(search_wang2021,y_boxplot_wang2021,'whisker', inf);
% set(hb,'LineWidth',2);
% set(hb,'Color', [0 0.5 0]);
% hold on
plot(vettore_trapdoor,singola_op_var,'--s','Color',[0.25, 0.25, 0.25],'MarkerSize',12,'MarkerFaceColor',[0.25, 0.25, 0.25],LineWidth=0.9)
grid on
%hb2 = boxplot(search_attribute,y_boxplot_attribute);
%hb2 = boxplot(search_attribute,y_boxplot_attribute,'whisker', inf);
%set(hb2,'LineWidth',2);
%set(hb2,'Color',[0, 0.4470, 0.7410]);
% plot(1:1:19,avg_search_wang2021,'--ob','MarkerSize',10,'MarkerFaceColor','b',LineWidth=0.5)
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
legend('Varianza Search Time [wang2021]','Location','northwest')
ylabel("Varianza Search Time singola operazione [s]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
xlabel("Trapdoors [#]","FontSize",30,"FontWeight","bold",'FontName','Times New Roman')
title("Computer Lab Search Average")
hold off