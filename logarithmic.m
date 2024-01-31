a = imread("/Users/harthikmallichetty/Downloads/grayscale.jpeg");
subplot(1,2,1);
imshow(a);
title("Greyscale Image");

c = 0.2;
x = double(1+a);
logimg = c*log10(x);
subplot(1,2,2);
imshow(logimg);
title("Logarithmic Transform");