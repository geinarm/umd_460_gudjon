t = 1:25;
y = [ 5.0291 6.5099 5.3666 4.1272 4.2948
6.1261 12.5140 10.0502 9.1614 7.5677
7.2920 10.0357 11.0708 13.4045 12.8415
11.9666 11.0765 11.7774 14.5701 17.0440
17.0398 15.9069 15.4850 15.5112 17.6572];
y = y';
y = y(:);

%% Discard element
t(7) = [];
y(7) = [];

plot(t, y, 'o', 'color', 'blue'); hold on;
plot(7, 12.5140, '*', 'color', 'blue'); hold on;

A = ones(numel(t), 3);
A(:, 1) = sin(t);
A(:, 2) = t;
b = A\y;

plot_t = 1:0.1:25;
plot_pt = b(1)*sin(plot_t)+b(2).*plot_t+b(3);
plot(plot_t, plot_pt, 'color', 'red');
hold off;

pause
pt = b(1)*sin(t)+b(2).*t+b(3);
r = abs(pt' - y);
plot(t, r);



