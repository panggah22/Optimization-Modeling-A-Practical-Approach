%% Example 3.3 : Page 41
clear;
x = sdpvar(2,1);

Z = -(24*x(1) + 16*x(2));       % Maximizing is negative
con = [
    50*x(1) + 25*x(2) <= 4000   % Fuel limit
    3*x(1) + 9*x(2) <= 720      % Maintenance hour limit
    x(1) + x(2) <= 100          % Number limit on vehicles
    x >= 0                      % Nonnegativity
    ];

optimize(con,Z);

fprintf('Number of Mack vehicles : %.2f \n',value(x(1)));
fprintf('Number of Mercedes vehicles : %.2f \n',value(x(2)));
