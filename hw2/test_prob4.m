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
    [L1, U1, p1] = lutx(M);
    [L2, U2, p2] = explutx(M);
    
    % Compare each of the returned values
    % Allow for errors less than eps
    l_pass = sum(abs(L1(:) - L2(:))) < eps;
    u_pass = sum(abs(U1(:) - U2(:))) < eps;
    p_pass = isequal(p1, p2);
    
    pass_i = (l_pass && u_pass && p_pass);
    pass = pass + pass_i;
end

% Display fraction of tests passed
disp([int2str(pass), '/', int2str(numel(TestSet)), ' Passed']);