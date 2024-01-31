a = imread("/Users/harthikmallichetty/Downloads/grayscale.jpeg");
subplot(1,2,1);
imshow(a);
title("Greyscale Image");

filter = ones(3)/9;
avg = imfilter(a, filter, 'conv');

subplot(1,2,2);
imshow(avg);
title("Average spatial filter");
