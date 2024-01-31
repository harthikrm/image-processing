a = imread("/Users/harthikmallichetty/Downloads/grayscale.jpeg");
subplot(1,2,1);
imshow(a);
title("Greyscale Image");
[x,y] = size(a);
org = 0;
maxpix = max(max(a));
for i = 1:32
    if maxpix<(2^i)
        L=2^i;
        break;
    else
        i=i+1;
    end
end

r1 = 40;
r2 = 140;
s1 = 120;
s2 = 180;

alp = (s1 - org)/(r1 - org);
bet = (s2 - s1)/(r2 - r1);
gam = (L-1 - s2)/(L-1 - r2);

contstre = zeros(x,y);

for j = 1:x
    for k = 1:y
        pix = a(j,k);
        if and(pix > 0, pix < r1)
            contstre(j,k) = alp*pix;
        else if and(r1 <= pix, pix < r2)
                contstre(j,k) = (bet*(pix-r2)) + s1;
        else if and(r2 <= pix, pix <= r2)
                contstre(j,k) = (gam*(pix-r2)) + s2;
        end
        end
        end
    end
end

subplot(1,2,2);
imshow(contstre);
title("Contrast Stretching");
