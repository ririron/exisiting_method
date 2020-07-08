function f4_stat =  fourthStatM(target)
    
    f4_stat = zeros(size(target, 3), 1);
    
    for i =  1:size(target, 3)
        for j = 1:size(target, 1)
            for k = 1:size(target, 2)
                if target(j, k, i) ~= 0
                    f4_stat = f4_stat + target(j, k, i) * log(target(j, k, i));
                end
            end    
        end
        f4_stat = -1 * f4_stat;
    end
end