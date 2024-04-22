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


% test 简单的优化过程展示
results = bayesopt(@(params) test_functions(params), vars, ...
    'AcquisitionFunctionName', 'expected-improvement', ...
    'MaxObj', 100);