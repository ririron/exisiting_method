path = './../../resource/manualTrim/target';
normalList = dir(strcat(path, '/normal/*.jpg'));
abnormalList = dir(strcat(path, '/abnormal/*.jpg'));

normal = loadImg(strcat(path, '/normal/'), normalList);
abnormal = loadImg(strcat(path, '/abnormal/'), abnormalList);

for i = 1:size(normal, 4)
   translated_normal(:, :, i) = transImg(normal(:, :, :, i), "Gray");
end

for j = 1:size(abnormal, 4)
    translated_abnormal(:, :, j) =  transImg(abnormal(:, :, :, i), "Gray");
end

%�ق�Ƃ�2��dwt������D�g���̂�d4,d5,d6�̂�
[n_cA, n_cH, n_cV, n_cD] = dwtImgs(translated_normal, "haar");
[ab_cA, ab_cH, ab_cV, ab_cD] = dwtImgs(translated_abnormal, "haar");

%{
tmp = [n_cA, n_cH, n_cV, n_cD];
result = reshape(tmp, 50, 50, 4, 2);
%}

%�����ŋ��N�s�񋁂߂�
n_cA_cocms = calcCocm(n_cA);

f1_n_cA = firstStatM(n_cA_cocms);

f2_n_cA = secondStatM(n_cA_cocms);

f3_n_cA = thirdStatM(n_cA_cocms);

f4_n_cA = fourthStatM(n_cA_cocms);

