
%% Time explutx
t = 0;
n = 1000;
while t < 10
   M = rand(n);
   n = n + 10;
   tic
   [L U p] = explutx(M);
   t = toc;
end
disp(['explutx: ', int2str(n), ' ', num2str(t), 's']);

%% Time lutx
t = 0;
n = 0;
while t < 0.1
   n = n + 50;
   M = rand(n);
   tic
   [L U p] = lutx(M);
   t = toc;
end
disp(['lutx: ', int2str(n), ' ', num2str(t), 's']);

%% Time lu
t = 0;
n = 0;
while t < 0.1
   n = n + 50;
   M = rand(n);
   
   tic
   [L U p] = lu(M);
   t = toc;
end
disp(['lu: ', int2str(n), ' ', num2str(t), 's']);