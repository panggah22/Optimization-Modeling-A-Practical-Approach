%% Example 3.8 : Page 45
% clear;
sdpvar Xar Xbr Xao Xbo

Z1 = 8*Xar + 11*Xbr + 10*Xao + 12*Xbo;
Z2 = -(0.2*Xar + 0.25*Xbr);
con = [
    Xar + Xbr + Xao + Xbo == 300
    0.2*Xar <= 25
    0.25*Xbr <= 25
    0.2*Xao <= 30
    0.25*Xbo <= 30
    [Xar Xbr Xao Xbo] >= 0
    ];

rep = 0:0.05:1;
Z = zeros(length(rep),2);
X = zeros(length(rep),4);
c = 0;
for t = rep
    c = c+1;
    optimize(con,t*Z1+(1-t)*Z2)
    Z(c,1) = value(Z1); Z(c,2) = value(Z2);
    X(c,1) = value(Xar); X(c,2) = value(Xbr);
    X(c,3) = value(Xao); X(c,4) = value(Xbo);
end

T = array2table([rep',X,Z],...
    'VariableNames',{'t','Xar','Xbr','Xao','Xbo','Z1','Z2'})