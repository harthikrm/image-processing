a = imread("/Users/harthikmallichetty/Downloads/grayscale.jpeg");
subplot(1,2,1);
imshow(a);
title("Greyscale Image");

filter = [1 2 1; 2 4 2; 1 2 1]/16;
weghavg = imfilter(a, filter, 'conv');

subplot(1,2,2);
imshow(weghavg);
title("Weighted average spatial filter");
