function cocms = calcCocm(target)
    angle = [0 1]; % 0
    angle(:, :, 2) = [-1 1]; % 45
    angle(:, :, 3) = [-1 0]; % 90
    angle(:, :, 4) = [-1 -1]; % 135 
    
    for i = 1:size(target, 3)
        for j = 1:size(angle, 3)
            cocms(:, :, j, i) = graycomatrix(target(:, :, i), "Offset", angle(:, :, j), 'NumLevels', 64,'GrayLimits', []);  %Œ³˜_•¶‚æ‚è64*64
        end
    end
end
