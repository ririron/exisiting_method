function f1_stat = firstStatM(target)
    
    f1_stat = zeros(size(target, 3), 1);
    
    for i = 1:size(target, 3)
        for j = 1:size(target, 1)
            for k = 1:size(target, 2)
                f1_stat(i) = f1_stat(i) + target(j, k, i)^2;
            end    
        end    
    end
    
end