clear all 


% 变量设置及上下界
vars = [
    optimizableVariable('para1',[-10, 10]), 
    optimizableVariable('para2',[-10, 10]),
    optimizableVariable('para3',[-10, 10]),
    optimizableVariable('para4',[-10, 10]),
    optimizableVariable('para5',[-10, 10]),
    optimizableVariable('para6',[-10, 10])
    ];


% 将initial_data中的数据补充完毕后，读取excel文件中的数据
initial_data = readtable('initial_data.xlsx','Sheet',1);
initialX = initial_data(:, 1:6);
initialObjective = table2array(initial_data(:, 7));


% Optimization & output
% MaxObj后的参数为总实验次数，包含initial_data
results = bayesopt(@(params) objective(params), vars, ...
     ...
    'InitialX', initialX, ...
    'InitialObjective', initialObjective,...
    'AcquisitionFunctionName', 'expected-improvement', ...
    'MaxObj', 23);

% test
%results = bayesopt(@(params) objective_functions(params), vars, ...
    %'AcquisitionFunctionName', 'expected-improvement', ...
    %'MaxObj', 100);