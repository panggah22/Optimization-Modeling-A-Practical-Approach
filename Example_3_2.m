%% Example 3.2 : Page 41
clear;
sdpvar x y z

Z = 15.6*x + 18.9*y + 12.7*z; % Minimizing
con = [
    4*x + 2*y + 4*z >= 440  % Fat limit
    2*x + 3*y + 1*z >= 150  % Carbohydrate Limit
    3*x + 1*y + 3*z >= 320  % Protein limit
    [x y z] >= 0            % Nonnegativity
    ];

optimize(con,Z)

fprintf('Quantity of foodstuff A : %.2f kg \n',value(x));
fprintf('Quantity of foodstuff B : %.2f kg \n',value(y));
fprintf('Quantity of foodstuff C : %.2f kg \n',value(z));