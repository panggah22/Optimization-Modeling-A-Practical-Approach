%% Example 3.7 : Page 44
clear;
x = binvar(4,1);            % Binary variables

Z = -([20 30 25 18]*x);  % Vectorized form
con = [3 5 4 2]*x <= 12;

optimize(con,Z);

st = {
    'I-A'
    'I-B'
    'I-C'
    'I-D'
    };

for ii = 1:length(st)
    fprintf('\n Item %s = %d ',st{ii},value(x(ii)));
end