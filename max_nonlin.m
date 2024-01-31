a = imread("/Users/harthikmallichetty/Downloads/grayscale.jpeg");
subplot(1,2,1);
imshow(a);
title("Greyscale Image");

maxmat = ordfilt2(a,9,ones(3,3));

subplot(1,2,2);
imshow(maxmat);
title("Maximum spacial filter");