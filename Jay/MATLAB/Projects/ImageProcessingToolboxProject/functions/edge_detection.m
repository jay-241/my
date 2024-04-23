function output = edge_detection(img)
    % Convert the image to grayscale if it is not already
    if size(img, 3) == 3
        img = rgb2gray(img);
    end
    
    % Apply the Sobel edge detector to the grayscale image
    sobelFilter = fspecial('sobel');
    verticalEdges = imfilter(double(img), sobelFilter, 'replicate');
    horizontalEdges = imfilter(double(img), sobelFilter', 'replicate');
    
    % Combine the vertical and horizontal edges
    output = sqrt(verticalEdges.^2 + horizontalEdges.^2);
    
    % Convert the output to a proper grayscale image
    output = mat2gray(output);
    
    % Display the edge-detected image
    figure, imshow(output);
    title('Edge Detection');
end
