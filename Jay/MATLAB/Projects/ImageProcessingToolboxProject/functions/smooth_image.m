function output = smooth_image(img)
    % Define the kernel size and standard deviation
    size = 5;  % Size of the kernel
    sigma = 2; % Standard deviation of the Gaussian

    % Create the Gaussian filter
    h = gaussian_kernel(size, sigma);
    
    % Apply the filter to the image
    output = imfilter(img, h, 'same', 'replicate');
    
    % Display the smoothed image
    figure, imshow(output);
    title('Smoothed Image');
end
