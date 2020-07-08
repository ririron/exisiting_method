function trsImg = transImg(img, target)
    if target == "RGB"
        trsImg = img
    elseif target == "Lab"
        trsImg = rgb2lab(img);
    elseif target== "Gray"
        trsImg = rgb2gray(img);
    else
        trsImg = img
    end
end
