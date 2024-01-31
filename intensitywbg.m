a = imread("/Users/harthikmallichetty/Downloads/grayscale.jpeg");
subplot(1,2,1);
imshow(a);
title("Greyscale Image");
[x,y] = size(a);
r1 = 20;
r2 = 180;
intsliwbg = zeros(x,y);

maxpix = max(max(a));
for i = 1:32
    if maxpix<(2^i)
        L=2^i;
        break;
    else
        i=i+1;
    end
end

for j = 1:x
    for k = 1:y
        if and(a(j,k) >= r1, a(j,k) <= r2)
            intsliwbg(j,k) = L-1;
        end
    end
end

subplot(1,2,2);
imshow(intsliwbg);
title("Instensity slicing with background");
