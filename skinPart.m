im_orig = imread('(11).jpg');
im_orig = imresize(im_orig,[339,420]);
im_seg = imread('11.jpg');
%im_seg = imresize(im_seg,[329,410]);
originalImage = im_orig;
mask = im_seg>=100;
out = bsxfun(@times, originalImage, cast(mask, class(originalImage)));
imshow(im_orig)
figure
imshow(out)