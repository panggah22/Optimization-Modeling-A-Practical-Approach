%% Example 3.6 : Page 43
% From now on, codes are written in vectorized form
clear;
x = binvar(5,1);            % Binary variables

% Z = -(18*x(1) + 16*x(2) + 12*x(3) + 25*x(4) + 15*x(5));
% OR it can be simplified into : 
Z = -([18 16 12 25 15]*x);  % Vectorized form
con = [6 18 10 9 4]*x <= 30;

optimize(con,Z);

st = {
    'After-school program'
    'Road security'
    'Crime reduction'
    'Road extension'
    'Child care facility'
    };

for ii = 1:length(st)
    fprintf('\n%s = %d ',st{ii},value(x(ii)));
end