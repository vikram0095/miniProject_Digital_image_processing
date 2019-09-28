function ans = ndvi(r1,nir1)
figure(2)
red = imread(r1);
nir = imread(nir1);
b5 = im2double(nir);
b4 = im2double(red);
ans = (b5 - b4)./(b5 + b4);

r1 = [0 1];
g1 = [0 1];
b1 = [0 1];
rgb1 = [r1; g1; b1]';
rgbt = interp1([1 2],rgb1, linspace(1,2,32));

r1 = [ 1 0];
g1 = [1 0.5];
b1 =  [0.4 0.4];
rgb2 = [r1; g1; b1]';
rgbb= interp1([1 2],rgb2, linspace(1,2,32 ));

newNDVI = [rgbt;rgbb];


 imagesc(ans);
 colormap(newNDVI);
 colorbar;
