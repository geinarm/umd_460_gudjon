
x = [-1.00, -0.96, -0.65, 0.10, 0.40, 1.00];
y = [-1.00, -0.1512, 0.3860, 0.4802, 0.8838, 1.00];

u = -1:0.01:1;

hold on;
%% piecelin
%plot
v = piecelin(x, y, u);
plot(u, v, 'color', 'yellow', 'LineWidth', 1);

% Evaluate at x = -0.3
t = piecelin(x, y, -0.3);
disp('piecelin');
disp(['p(-0.3) = ', num2str(t)]);

%%polyinterp
%plot
v = polyinterp(x, y, u);
plot(u, v, 'color', 'green', 'LineWidth', 1);

% Evaluate at x = -0.3
t = polyinterp(x, y, -0.3);
disp('polyinterp');
disp(['p(-0.3) = ', num2str(t)]);

%%splinetx
%plot
v = splinetx(x, y, u);
plot(u, v, 'color', 'red', 'LineWidth', 1);

% Evaluate at x = -0.3
t = splinetx(x, y, -0.3);
disp('splinetx');
disp(['p(-0.3) = ', num2str(t)]);

%%pchiptx
%plot
v = pchiptx(x, y, u);
plot(u, v, 'color', 'black', 'LineWidth', 1);

% Evaluate at x = -0.3
t = pchiptx(x, y, -0.3);
disp('pchiptx');
disp(['p(-0.3) = ', num2str(t)]);

%%Plot interpolation points
plot(x, y, 'or', 'color', 'blue', 'MarkerSize', 10, 'LineWidth', 2);

axis tight;
legend('piecelin','polyinterp','splinetx','pchiptx', 'interpolation points', 'location', 'southeast');
hold off;