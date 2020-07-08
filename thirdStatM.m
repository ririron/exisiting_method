function f3_stat = thirdStatM(target)
    
    f3_stat = zeros(size(target, 3), 1);
    
    for i = 1:size(target, 3)
        for j = 1:size(target, 1)
            for k = 1:size(target, 2)
                f3_stat = f3_stat + ( target(j, k, i) / ( 1 + (j - k)^2 ) ); %元論文では^2が抜けてる．[66]では^2が存在していたため追加
            end
        end
    end

end