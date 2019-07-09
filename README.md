# display-denoising
Make the denoising process into a gif.  
![image](https://github.com/Heibaizhu/display-denoising/blob/master/%E9%AB%98%E5%88%86-%E9%BB%84%E6%B2%B3%E5%8F%A3%E5%8E%BB%E5%99%AA.gif)  
# USUAGE
```
denoising_gif(noise_img, denoised_img, file_path)
```
Prepare two images:the noised_img is the noise image; the denoised_img is the denoised image; the file_path is the output path of the generated gif.  
![image](https://github.com/Heibaizhu/display-denoising/blob/master/noise%20image.jpg) ![image](https://github.com/Heibaizhu/display-denoising/blob/master/denoised%20image.jpg)
```
img1 = imread('noise_img.jpg');
img2 = imread('denoised_img.jpg');
output_path = 'denoising_gif.gif');
denoising_gif(img1, img2, output_path);
```
![image](https://github.com/Heibaizhu/display-denoising/blob/master/%E9%AB%98%E5%88%86-%E9%BB%84%E6%B2%B3%E5%8F%A3%E5%8E%BB%E5%99%AA.gif)  
