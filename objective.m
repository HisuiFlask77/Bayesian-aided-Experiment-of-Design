function obj = objective(params)
    disp(params)
    obj= input('请输入实验结果：');
    new_data = [params.para1 params.para2 params.para3 params.para4 params.para5 params.para6 obj];
    % 保存数据
    initial_data = readtable('initial_data.xlsx','Sheet',1);
    initial_data = table2array(initial_data);
    data = [initial_data;new_data];
    writematrix(data,'initial_data.xlsx','Sheet',1)
end

