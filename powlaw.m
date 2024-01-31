a = imread("/Users/harthikmallichetty/Downloads/grayscale.jpeg");
subplot(1,2,1);
imshow(a);
title("Greyscale Image");

c = 0.2;
g = 0.2;
powerlaw = c*(double(a).^g);
subplot(1,2,2);
imshow(powerlaw);
title("Power law transform");