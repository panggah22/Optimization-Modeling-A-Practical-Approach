%% Example 3.1 : Page 38
clear;
sdpvar T C              % Continuous variable

Z = -(100*T + 60*C);    % Maximizing is negative
con = [
    5*T + 2*C <= 270    % Machining
    4*T + 3*C <= 250    % Sanding
    3*T + 4*C <= 200    % Assembly
    [T C] >= 0          % Nonnegativity
    ];

optimize(con,Z)

fprintf('Table : %.4f \n',value(T));
fprintf('Chair : %.4f \n',value(C));