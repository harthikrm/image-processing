a = imread("/Users/harthikmallichetty/Downloads/grayscale.jpeg");
subplot(1,2,1);
imshow(a);
title("Greyscale Image");

medianmat = ordfilt2(a,5,ones(3,3));

subplot(1,2,2);
imshow(medianmat);
title("Median spacial filter");