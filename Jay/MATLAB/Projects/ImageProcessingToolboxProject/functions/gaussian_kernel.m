function h = gaussian_kernel(size, sigma)
    % Create a grid of (x,y) coordinates
    [x, y] = meshgrid(-floor(size/2):floor(size/2), -floor(size/2):floor(size/2));

    % Compute the Gaussian kernel
    h = exp(-(x.^2 + y.^2) / (2*sigma^2));
    
    % Normalize the kernel so that the sum of all elements is 1
    h = h / sum(h(:));
end
