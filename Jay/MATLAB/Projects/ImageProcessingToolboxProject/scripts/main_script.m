% Add functions folder to path
addpath('C:\Users\raval\OneDrive\Desktop\MATLAB\Projects\ImageProcessingToolboxProject\functions');


% Read and display an image
img = read_and_display('C:\Users\raval\OneDrive\Desktop\MATLAB\Projects\ImageProcessingToolboxProject\resources\example.jpg');

% Apply image smoothing
smooth_img = smooth_image(img);

% Apply image sharpening
sharpen_img = sharpen_image(img);

% Perform edge detection
edge_img = edge_detection(img);
