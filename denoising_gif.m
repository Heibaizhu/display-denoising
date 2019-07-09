function denoising_gif(noise_img,denoised_img, file_name)
%denoising_gif: 将去噪过程做成gif动画,gif持续2.5s，演示效果为噪声图像从左侧开始变为去噪后图像
%   noise_img: 受到噪声污染的图像
%   denoised_img: 去噪后的图像
%   file_name: 生成的gif文件的保存路径


dim1 = ndims(noise_img);
dim2 = ndims(denoised_img);

if dim1 == 3
    [x1, map1] = rgb2ind(noise_img, 256);
    imwrite(x1, map1, file_name, 'gif', 'LoopCount', inf, 'DelayTime', 0.5,  'DisposalMethod','leaveInPlace');
elseif dim1 == 1
    imwrite(noise_img, file_name, 'gif', 'LoopCount', inf, 'DelayTime', 0.5,  'DisposalMethod','leaveInPlace');
else
    error('Fail to identify the noise_img');
end
    
if dim2 == 3
    [x2, map2] = rgb2ind(denoised_img, 256);
    [~, n] = size(x2);
    interval = 4;
    k = ceil(n/interval);
    for i = 1:k
        if i == k
            imwrite(x2, map2, file_name, 'gif', 'WriteMode', 'append', 'DelayTime' , 2/k);
        else
            imwrite(x2(:,1: i*interval), map2, file_name, 'gif', 'WriteMode', 'append', 'DelayTime' , 2/k);
        end
    end
elseif dim2 == 1
    [~, n] = size(denoised_img);
    interval = 4;
    k = ceil(n/interval);
    for i = 1:k
        if i == k
            imwrite(denoised_img, file_name, 'gif', 'WriteMode', 'append', 'DelayTime' , 2/k);
        else
            imwrite(denoised_img(:,1: i*interval), file_name, 'gif', 'WriteMode', 'append', 'DelayTime' , 2/k);
        end
    end
else
    error('Fail to identify the denoised_img');
end



   
end

