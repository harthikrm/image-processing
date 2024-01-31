a = imread("/Users/harthikmallichetty/Downloads/grayscale.jpeg");
subplot(1,2,1);
imshow(a);
title("Greyscale Image");

minmat = ordfilt2(a,1,ones(3,3));

subplot(1,2,2);
imshow(minmat);
title("Minimum spacial filter");