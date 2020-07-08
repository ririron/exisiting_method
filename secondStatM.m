function f2_stat = secondStatM(target)
    
    f2_stat = zeros(size(target, 3), 1);
    
    for i = 1:size(target, 3)
        mu_x = mean(sum(target(:, :, i), 2));
        mu_y = mean(sum(target(:, :, i)));
        var_x = var(sum(target(:, :, i), 2));
        var_y = var(sum(target(:, :, i)));
        
        for j = 1:size(target, 1)
            for k = 1:size(target, 2)
                f2_stat(i) = f2_stat(i) + ((j * k) * target(j, k, i) - (mu_x * mu_y));
            end
        end
        f2_stat(i) = f2_stat(i) / (var_x * var_y);
    end

end

