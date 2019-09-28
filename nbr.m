function ans = nbr(b5,b7)
figure(2)
r1 = [0 1];
g1 = [0 1];
b1 = [0 1];
rgb1 = [r1; g1; b1]';
rgbt = interp1([1 2],rgb1, linspace(1,2,32+6.4 ));

r1 = [ 1 1];
g1 = [1 0];
b1 =  [0 0];
rgb2 = [r1; g1; b1]';
rgbb= interp1([1 2],rgb2, linspace(1,2,32-6.4 ));
newEVI = [rgbt;rgbb];
    nir = imread(b5);
    swir = imread(b7);
    b5_norm = im2double(nir);
    b7_norm = im2double(swir);
    ans = (b5_norm - b7_norm)./(b5_norm + b7_norm);
     imagesc(ans);
 colormap(newEVI);
 colorbar;
 
    

