function [cA, cH, cV, cD] = dwtImgs(target, w_name)
    [h,w,n] = size(target);
    cA = zeros(h/2, w/2, n);
    cH = zeros(h/2, w/2, n);
    cV = zeros(h/2, w/2, n);
    cD = zeros(h/2, w/2, n);
    
    for i = 1:n
        [cA(:,:,i), cH(:,:,i), cV(:,:,i), cD(:,:,i)] = dwt2(target(:,:,i),w_name);
        cA = cast(rescale(cA, 0, 255), 'uint8');
        cH = cast(rescale(cH, 0, 255), 'uint8');
        cV = cast(rescale(cV, 0, 255), 'uint8');
        cD = cast(rescale(cD, 0, 255), 'uint8');
    end

end