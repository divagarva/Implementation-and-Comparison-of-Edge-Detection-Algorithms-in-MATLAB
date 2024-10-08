% Step 1: Read the input image
image = imread('tiger.jpg'); % Replace 'your_image.jpg' with your file name

% Step 2: Convert the image to grayscale
grayImage = rgb2gray(image);

% Step 3: Apply Sobel edge detection
sobelEdges = edge(grayImage, 'sobel');

% Step 4: Apply Prewitt edge detection
prewittEdges = edge(grayImage, 'prewitt');

% Step 5: Apply Roberts edge detection
robertsEdges = edge(grayImage, 'roberts');

% Step 6: Apply Canny edge detection
cannyEdges = edge(grayImage, 'canny');

% Step 7: Display the original and edge-detected images
figure;
subplot(2, 3, 1), imshow(image), title('Original Image');
subplot(2, 3, 2), imshow(sobelEdges), title('Sobel Edge Detection');
subplot(2, 3, 3), imshow(prewittEdges), title('Prewitt Edge Detection');
subplot(2, 3, 4), imshow(robertsEdges), title('Roberts Edge Detection');
subplot(2, 3, 5), imshow(cannyEdges), title('Canny Edge Detection');
