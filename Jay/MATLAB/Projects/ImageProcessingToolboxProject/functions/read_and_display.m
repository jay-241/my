function img = read_and_display(filename)
    % Check if the file exists
    if exist(filename, 'file') ~= 2
        error('File does not exist.');
    end
    
    % Read the image from the provided file path
    img = imread(filename);
    
    % Display the image
    figure, imshow(img);
    title('Original Image');
end
