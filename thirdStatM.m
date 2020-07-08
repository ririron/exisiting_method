function f3_stat = thirdStatM(target)
    
    f3_stat = zeros(size(target, 3), 1);
    
    for i = 1:size(target, 3)
        for j = 1:size(target, 1)
            for k = 1:size(target, 2)
                f3_stat = f3_stat + ( target(j, k, i) / ( 1 + (j - k)^2 ) ); %Œ³˜_•¶‚Å‚Í^2‚ª”²‚¯‚Ä‚éD[66]‚Å‚Í^2‚ª‘¶İ‚µ‚Ä‚¢‚½‚½‚ß’Ç‰Á
            end
        end
    end

end