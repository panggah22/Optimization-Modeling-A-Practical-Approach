%% Example 3.1 with integer and revisit : Page 40 and 43
clear;
intvar T C              % Integer variable

Z = -(100*T + 60*C);    % Maximizing is negative
con = [
    5*T + 2*C <= 270    % Machining
    4*T + 3*C <= 250    % Sanding
    3*T + 4*C <= 200    % Assembly
    4*T - C == 0        % Additional
    [T C] >= 0          % Nonnegativity
    ];

optimize(con,Z)

fprintf('Table : %.4f \n',value(T));
fprintf('Chair : %.4f \n',value(C));