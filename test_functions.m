function obj = test_functions(params)
    % 简单的测试函数 运行test进行展示
    disp(params)
    x = params.para1;
    y = params.para2;
    z = params.para3;
    a = params.para4;
    b = params.para5;
    c = params.para6;
    % 计算目标函数值
    obj = x^2 + y^2 + z^2 + a^2 + b^2 + c^2;
end

