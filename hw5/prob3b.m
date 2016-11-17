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

A = ones(numel(t), 2);
A(:, 1) = t;
b = A\y;

pt = b(2)+b(1).*t;
plot(t, pt, 'color', 'red');
hold off;

pause
r = abs(pt' - y);
plot(t, r);