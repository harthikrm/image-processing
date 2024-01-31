a = imread("/Users/harthikmallichetty/Downloads/grayscale.jpeg");
subplot(1,2,1);
imshow(a);
title("Greyscale Image");

filter = [1 1 1; 1 2 1; 1 1 1]/10;
lowavg = imfilter(a, filter, 'conv');

subplot(1,2,2);
imshow(lowavg);
title("Low pass spatial filter");
