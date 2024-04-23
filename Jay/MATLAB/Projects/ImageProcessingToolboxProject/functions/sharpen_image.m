function output = sharpen_image(img)
    % Create a sharpening filter
    sharpening_filter = [0 -1 0; -1 5 -1; 0 -1 0];
    
    % Apply the sharpening filter to the image
    output = imfilter(img, sharpening_filter, 'replicate');
    
    % Display the sharpened image
    figure, imshow(output);
    title('Sharpened Image');
end
