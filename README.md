This package contains five files.



Latin:

Using Latin hypercube sampling to obtain initial data points, running will generate initial_data.xlsx.

Each row represents a set of design variable combinations, conducting experiments, filling in the data in the table, and running main.



test:

A simple test program. Running will display the experimental progress chart and the experimental results.

Assuming the experiment speed is extremely fast, the experimental progress should be shown as a line graph.

test_function:

A simple test function.



main:

Carrying out Bayesian optimization based on the data from initial_data.xlsx, aiming to minimize the objective function by default.

Currently, the program can only be stopped based on the MaxObj parameter (maximum total number of experiments).

During each iteration, information such as the objective function value, expected objective function value, and historical best value will be output.



objective:

A function that requires manual input of experimental results.

New experimental data can be saved to initial_data.xlsx.

Even if the experiment is abandoned halfway, data can still be retained.












本包共包含五个文件。



latin：

使用拉丁超立方抽样获取初始数据点，运行后会获得initial_data.xlsx。

每行代表一组设计变量组合，进行实验，将数据补充至表格内，运行main。



test ：

简单的测试程序。运行后会显示实验进程图以及实验结果。

假设实验速度极快，实验进程应如折线图所示。



test_function：

简单的测试函数。



main：

基于initial_data.xlsx的数据进行贝叶斯优化，默认求目标函数的最小值。

目前只能根据MaxObj这一参数(最大总实验次数) 停止程序。

每次迭代时会输出目标函数值、预期目标函数值、历史最佳值等信息。



objective：

需手动输入实验结果的函数。

可将新实验数据保存至initial_data.xlsx。

即便实验半途而废，也能留下数据。
