%% Test myinv
% Set of test matices
TestSet = cell(1, 5);
TestSet{1} = [1 -3 1; 2 -8 -15; -6 3 -15];
TestSet{2} = magic(3);
TestSet{3} = magic(5);
TestSet{4} = rand(5);
TestSet{5} = rand(10);

eps = 10^-8;
pass = 0;
for i = 1:numel(TestSet)
    M = TestSet{i};
    inv_m = inv(M);
    myinv_m = myinv(M);
    
    % Allow for errors less than eps
    pass_i = sum(abs(L1(:) - L2(:))) < eps;
    pass = pass + pass_i;
end

% Display fraction of tests passed
disp([int2str(pass), '/', int2str(numel(TestSet)), ' Passed']);