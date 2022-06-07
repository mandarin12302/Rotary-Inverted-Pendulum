%load o040201.xlsx
%rawTable = readtable('o040201.xlsx','Sheet','Sheet1');
%x = rawTable.0; %: get the excel column, Header1 (header name)
%y = rawTable.B; %: get the excel column, Header2 (header name)

data = xlsread('o040201.xlsx');
x = data(:,1);
y = data(:,2);
plot(x,y,'x');
legend('0');
hold on;
x = data(:,3);
y = data(:,4);
plot(x,y,':');
legend('0.4');
hold on;
x = data(:,5);
y = data(:,6);
plot(x,y,'-.');
legend('0.2');
hold on;
x = data(:,7);
y = data(:,8);
plot(x,y);
legend('L2=0.33 m','L2=0.4 m','L2=0.2 m','L2=0.1 m');
ylabel('Angular Position of Pendulum (deg.)');
xlabel('Time (s)');
set(gca, 'Fontname', 'Times New Roman','FontSize',16,'linewidth',1);
set(gcf,'color','w');
hold on;
t1 = stepinfo(data(:,2),data(:,1),0,180,'SettlingTimeThreshold',0.05);
t2 = stepinfo(data(:,4),data(:,3),0,180,'SettlingTimeThreshold',0.05);
t3 = stepinfo(data(:,6),data(:,5),0,180,'SettlingTimeThreshold',0.05);
t4 = stepinfo(data(:,8),data(:,7),0,180,'SettlingTimeThreshold',0.05);
