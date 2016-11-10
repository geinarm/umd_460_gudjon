load longley.dat;
y = longley(:,1);
X = longley(:,2:7);

[R,P,RLO,RUP]=corrcoef(X);