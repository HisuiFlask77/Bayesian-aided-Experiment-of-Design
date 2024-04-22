% row设置为起始实验次数，column设置为自变量个数
% ub lb 代表自变量的上界与下界
clear all
row= 20;
column= 6;  
ub=[20 30 40 50 60 70];
lb=[10 20 30 40 50 -60];
initial_data = lhsdesign(row,column);

% denormalization
for i = 1:column
    initial_data(:,i) = (ub(i)-lb(i))*initial_data(:,i) + lb(i);
end

% save
filename = 'initial_data.xlsx';
writematrix(initial_data,filename,'Sheet',1)
