%% Contributions by Nikhil Challa
clear;clc; close all;

%% Input 

% img = imread("CollectedImages/ScaleData_pandaset_0_seq001_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq002_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq003_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq004_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq005_00.jpg");  
% img = imread("CollectedImages/ScaleData_pandaset_0_seq006_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq011_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq012_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq013_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq015_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq017_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq018_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq019_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq021_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq023_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq024_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq027_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq028_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq029_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq030_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq032_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq033_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq034_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq035_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq037_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq038_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq040_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq041_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq042_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq043_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq044_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq045_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_0_seq047_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_1_seq048_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_1_seq050_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_1_seq051_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_1_seq052_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_1_seq053_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_1_seq054_00.jpg");
% img = imread("CollectedImages/ScaleData_pandaset_1_seq094_00.jpg");


% FOG PICTURES
% img = imread("RandomFoggyImages/foggy5.jpg");
% img = imread("RandomFoggyImages/foggy27.jpg");
% img = imread("RandomFoggyImages/foggy49.jpg"); % fails classification due to non-white fog
% img = imread("RandomFoggyImages/foggy57.jpg");  % fails classification due to non-white fog
% img = imread("RandomFoggyImages/foggy74.jpg");
% img = imread("RandomFoggyImages/foggy114.jpg");   % We are technically not in the fog, hence correct
% img = imread("RandomFoggyImages/foggy135.jpg");    
% img = imread("RandomFoggyImages/foggy136.jpg");
% img = imread("RandomFoggyImages/foggy148.jpg");    % We are technically not in the fog, hence correct
% img = imread("RandomFoggyImages/foggy153.jpg");   % Bad light, fails
% img = imread("RandomFoggyImages/foggy162.jpg");
% img = imread("RandomFoggyImages/foggy174.jpg");     % No object
% img = imread("RandomFoggyImages/foggy240.jpg");   % the visible car is quite clear, hence correct call
% img = imread("RandomFoggyImages/foggy271.jpg");   % We are technically not in the fog, hence correct
% img = imread("RandomFoggyImages/foggy290.jpg");     % poor color features hence failing
% img = imread("RandomFoggyImages/foggy294.jpg");
% img = imread("RandomFoggyImages/foggy297.jpg");   % Low features and bad color
% img = imread("RandomFoggyImages/foggy300.jpg");    % No features


% ACTIVE SNOWFALL PICTURES
% img = imread("SnowingImages/car-5973613_1920.jpg");
% img = imread("SnowingImages/pexels-avijit-singh-11351370.jpg");  % Fails due to no snow fall on objects under shade
% img = imread("SnowingImages/pexels-azeen-shah-10789990.jpg");
% img = imread("SnowingImages/pexels-beytlik-7522074.jpg");
% img = imread("SnowingImages/pexels-chris-peeters-12875.jpg");
% img = imread("SnowingImages/pexels-dmitrii-eremin-11716794.jpg");
% img = imread("SnowingImages/pexels-dmitriymir-)-10937265.jpg");   % Fails, difficult to solve
% img = imread("SnowingImages/pexels-syed-qaarif-andrabi-6685397.jpg");

% PICTURES WITH SNOW BUT NOT ACTIVE SNOW FALL
img = imread("ImagesWithPastSnow/pexels-gilmer-diaz-estela-6485549.jpg");
% img = imread("ImagesWithPastSnow/pexels-meum-mare-15894518.jpg");
% img = imread("ImagesWithPastSnow/pexels-roman-ska-6667632.jpg");  % incorrectly detects fog. Difficult to address due to bad colors in images
% img = imread("ImagesWithPastSnow/pexels-wandering-bo-11704351.jpg");


% RAIN PICTURES
% img = imread("RainyImages/rain1.jpg");
% img = imread("RainyImages/rain3.jpg");
% img = imread("RainyImages/rain8.jpg");
% img = imread("RainyImages/rain14.jpg");
% img = imread("RainyImages/rain54.jpg");
% img = imread("RainyImages/rain186.jpg");    % Very close to treshold limit, bright light is obscuring rain drops
% img = imread("RainyImages/rain285.jpg");
% img = imread("RainyImages/rain293.jpg");
% img = imread("RainyImages/rain294.jpg");
% img = imread("RainyImages/rain297.jpg");

%% Code begins from here

addpath("Dark-Channel-Haze-Removal")

name = "csp-darknet53-coco";
detector = yolov4ObjectDetector(name);

% Low pixel images are getting messed up with defogging
boxLimit = 50;

fogFlag = 0;
snowFlag = 0;
rainFlag = 0;



[bboxes,scores,labels] = detect(detector,img);

detectedImg = insertObjectAnnotation(img,"Rectangle",bboxes,labels);

numBoxes = size(bboxes,1);

figure(100)
imshow(detectedImg)
boxIndex = 0;


%% Fog detection

fprintf("\nInitiating fog detection\n")

for index = 1:numBoxes

    if bboxes(index,3) > boxLimit && bboxes(index,4) > boxLimit
        xRange = floor(bboxes(index,1)):floor(bboxes(index,1) + bboxes(index,3));
        yRange = floor(bboxes(index,2)):floor(bboxes(index,2) + bboxes(index,4));
        Test1_img = img(yRange,xRange,:);

        % Dehazing
        image = double(Test1_img)./255;
        result = dehaze(image, 0.90, 15);

        count = 1;
        xlen = size(Test1_img,1);
        ylen = size(Test1_img,2);
        std1 = zeros(xlen*ylen,1);
        std2 = zeros(xlen*ylen,1);
        for row = 1:xlen
            for column = 1:ylen
                std1(count) = std(double(Test1_img(row,column,:))./255);
                std2(count) = std(result(row,column,:));
                count = count + 1;
            end
        end



        figure(index)
        tcl = tiledlayout(2,2,'Padding','Compact');

        ax1 = nexttile;
        imshow(Test1_img)
        title("Image before defogging",'FontSize',18)        

        ax2 = nexttile;
        imshow(result)
        title("Image after defogging",'FontSize',18)

        ax3 = nexttile;
        histfit(std1)
        pd1 = fitdist(std1,'Normal');
        ylabel("Count")
        xlabel("Value")
        tempStr = "Histogram Plot of pixel STDs, mean:" + string(pd1.mu) + " std:" + string(pd1.sigma); 
        title(tempStr,'FontSize',18)
        set(gca,'FontSize',18)

        ax4 = nexttile;
        histfit(std2)
        pd2 = fitdist(std2,'Normal');
        ylabel("Count")
        xlabel("Value")
        tempStr = "Histogram Plot of pixel STDs, mean:" + string(pd2.mu) + " std:" + string(pd2.sigma); 
        title(tempStr,'FontSize',18)
        set(gca,'FontSize',18)

        pd1 = fitdist(std1,'Normal');
        pd2 = fitdist(std2,'Normal');
        boxIndex = boxIndex + 1;
        meanStdDiff(boxIndex,1) = pd1.mu;
        meanStdDiff(boxIndex,2) = pd1.sigma;
        meanStdDiff(boxIndex,3) = pd2.mu;
        meanStdDiff(boxIndex,4) = pd2.sigma;
        

    end
end


if boxIndex == 0

    disp("Sorry no large objects recognized. Difficult to determine foggyness")
    fogFlag = -1;

else

    label = string(1:boxIndex);
    
    figure(200)
    hold on
    x = meanStdDiff(:,1);
    y = meanStdDiff(:,2);
    scatter(x,y,"filled")
    labelpoints(x, y, label,'FontSize',18);
    
    x = meanStdDiff(:,3);
    y = meanStdDiff(:,4);
    scatter(x,y,"filled")
    labelpoints(x, y, label,'FontSize',18);

    ylabel("Mean value for each object")
    xlabel("STD value for each object")
    set(gca,'FontSize',18)

    title("Mean and STD plot for each object to visualize vectors",'FontSize',18)

    hold off


    distance = 0;
    for index = 1:boxIndex
        x1 = meanStdDiff(boxIndex,1);
        x2 = meanStdDiff(boxIndex,3);
        y1 = meanStdDiff(boxIndex,2);
        y2 = meanStdDiff(boxIndex,4);
        distance = distance + (x2 - x1) + 1i*(y2 - y1);
    end
    
    % in defogging, the mean and std both go up
    if real(distance) < 0 || imag(distance) < 0
        distance = 0;
    end
    
    distance = abs(distance)/boxIndex;
    
    tempStr = "Average Distance vector length = "  + string(distance);
    disp(tempStr);



    % Threshold based checks
    if distance > 0.01 
        disp("Possibility of Fog detected")
        fogFlag = 1;
    else
        disp("Possibility of Fog not detected")
    end

end




%% Snow detection

fprintf("\nInitiating snowfall detection\n")

count = 0;
for index = 1:numBoxes
    if bboxes(index,3) > boxLimit && bboxes(index,4) > boxLimit
        xRange = floor(bboxes(index,1)):floor(bboxes(index,1) + bboxes(index,3));
        yRange = floor(bboxes(index,2)):floor(bboxes(index,2) + bboxes(index,4));
        Test1_img = img(yRange,xRange,:);
        xlen = size(Test1_img,1);
        ylen = size(Test1_img,2);

        result = boolean(zeros(xlen,ylen));

        for row = 1:xlen
            for column = 1:ylen
                if ( (nnz(Test1_img(row,column,:) > 128) == 3) && (std(double(Test1_img(row,column,:))) < 20 ) )
                    result(row,column) = 1;
                else
                    result(row,column) = 0;
                end
            end
        end

        % we need to determine the maximum size of connected pixel based on image size
        % If the image is too small, need to provide integer limit (10)
        UpperPixelLimit = max(10,column*row*0.0001); % 1 percent on each axis, hence 0.0001 
        result2 = bwareafilt(result,[1 UpperPixelLimit]); 
    
        discard = (result - result2);

        validCount = row*column - nnz(discard);
        countSnow = nnz(result2);

        figure(20 + index)
        tcl = tiledlayout(3,2,'Padding','Compact');
        ax1 = nexttile;
        imshow(Test1_img)
        title("Original object from image",'FontSize',18);

        ax2 = nexttile;
        imshow(result)
        title("Pixels selected that meet whiteness level",'FontSize',18);

        ax3 = nexttile;
        imshow(discard)
        title("Pixels discarded for percent calculations",'FontSize',18);

        ax4 = nexttile;
        imshow(result2)
        tempStr = "Snow percent before imclose = " + string(countSnow/validCount);
        title(tempStr,'FontSize',18);

        se = strel('disk',3);
        result3 = imclose(result2,se);
        result4 = bwareafilt(result3,[1 UpperPixelLimit]); 

        countSnow = nnz(result4);
        tempStr = "Snow percent after imclose = " + string(countSnow/validCount);
        ax5 = nexttile;
        imshow(result4)
        title(tempStr,'FontSize',18);


        count = count + 1;
        snowPercent(count) = countSnow/validCount;

    end
end

if (boxIndex == 0) 
    disp("Sorry no large objects recognized. Difficult to determine snowfall weather")
    snowFlag = -1;
else
    meanSnowPercent = mean(snowPercent);
    tempStr = "Average Snow Percent = "  + string(meanSnowPercent);
    disp(tempStr);

    % Threshold based checks
    if meanSnowPercent > 0.01
        disp("Possibility of SnowFall detected")
        snowFlag = 1;
    else
        disp("Possibility of SnowFall not detected")
    end

end



%% Rain

fprintf("\nInitiating rain detection\n")

Test1_img = img;

xlen = size(img,1);
ylen = size(img,2);

result = boolean(zeros(xlen,ylen));

for row = 1:xlen
    for column = 1:ylen
        if ( (nnz(Test1_img(row,column,:) > 100) == 3) && (nnz(Test1_img(row,column,:) < 200) == 3) && (std(double(Test1_img(row,column,:))) < 60 ) )
            result(row,column) = 1;
        else
            result(row,column) = 0;
        end
    end
end

% gray_img = rgb2gray(Test1_img);
gray_img = rgb2gray(img);

sobelGradient = imgradient(gray_img);

binaryGradient = sobelGradient;
binaryGradient(binaryGradient < 50) = 0;
binaryGradient = boolean(binaryGradient);

reducedGradient = bwareafilt(binaryGradient,[1 20]);

result2 = reducedGradient + bwareafilt(result,[1 20]); 

figure(40)
tcl = tiledlayout(4,2,'Padding','Compact');
ax1 = nexttile;
imshow(img)
title("Original image",'FontSize',16);

ax2 = nexttile;
imshow(result)
title("Pixels selected that meet grayness level",'FontSize',16);

ax3 = nexttile;
imshow(gray_img)
title("Gray scale version of original image",'FontSize',16);

ax4 = nexttile;
imshow(sobelGradient,[])
title("Sobel gradient from gray scale image",'FontSize',16);

ax5 = nexttile;
imshow(binaryGradient)
title("Sobel gradient from gray scale image",'FontSize',16);

ax6 = nexttile;
imshow(reducedGradient)
title("Pixel selection after applying gradient threshold",'FontSize',16);

ax7 = nexttile;
imshow(result2)
title("Combined pixels (grayness + gradient)",'FontSize',16);

numPixel = zeros(3,3);

x1 = 1:round(xlen/3);
x2 = round(xlen/3):round(2*xlen/3);
x3 = round(2*xlen/3):xlen;

y1 = 1:round(ylen/3);
y2 = round(ylen/3):round(2*ylen/3);
y3 = round(2*ylen/3):ylen;

numPixel(1,1) = nnz(result2(x1,y1));
numPixel(2,1) = nnz(result2(x2,y1));
numPixel(3,1) = nnz(result2(x3,y1));

numPixel(1,2) = nnz(result2(x1,y2));
numPixel(2,2) = nnz(result2(x2,y2));
numPixel(3,2) = nnz(result2(x3,y2));

numPixel(1,3) = nnz(result2(x1,y3));
numPixel(2,3) = nnz(result2(x2,y3));
numPixel(3,3) = nnz(result2(x3,y3));

plotDist = std(numPixel,1,'all');

percentRain = sum(numPixel,'all')/(xlen*ylen);

tempStr = "Standard Deviation of plot distribution = "  + string(plotDist) + " and Percent = " + string(percentRain);
disp(tempStr);

% Threshold based checks
if plotDist < 1000 && percentRain > 0.02
    disp("Possibility of Rain detected")
    rainFlag = 1;
else
    disp("Possibility of Rain not detected")
end


%% Final Results

% Using hierarchy based results, as some methods are more reliable than others
if snowFlag == 1
    fprintf("\n ## Final Conclusion : This image has snowfall ##");
elseif rainFlag == 1
    fprintf("\n ## Final Conclusion : This image has rainfall ##");
elseif fogFlag == 1
    fprintf("\n ## Final Conclusion : This image has fog ##");
else
    fprintf("\n ## Final Conclusion : This image has clear weather ##\n");
    if fogFlag == -1
        disp("Uncertainity in Fog and Snow")
    end
    
end

