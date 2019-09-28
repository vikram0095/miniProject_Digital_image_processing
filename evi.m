function ans = evi(b2,b4,b5)
figure(2)
blue = imread(b2);
red = imread(b4);
nir = imread(b5);
b2_norm = im2double(blue);
b4_norm = im2double(red);
b5_norm = im2double(nir);
r1 = [0 1];
g1 = [0 1];
b1 = [0 1];
rgb1 = [r1; g1; b1]';
rgbt = interp1([1 2],rgb1, linspace(1,2,32+6.4 ));

r1 = [ 1 0];
g1 = [1 0.5];
b1 =  [0.4 0.4];
rgb2 = [r1; g1; b1]';
rgbb= interp1([1 2],rgb2, linspace(1,2,32-6.4 ));

newEVI = [rgbb];
ans =2.5*((b5_norm - b4_norm)./(b5_norm  + b4_norm  - 0.5*b2_norm  + 1));
 imagesc(ans);
 colormap(newEVI);
 colorbar;
