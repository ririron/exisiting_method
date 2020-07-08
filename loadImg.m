function imgSet = loadImg(path, list)
    for i= 1:length(list)
        imgSet(:, :, :, i) = imread(strcat(path, list(i).name));
    end
end