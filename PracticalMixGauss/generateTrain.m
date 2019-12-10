%I use this script to save the training data which works exactly the same 
    % as what I have written in the python. Matlab gives bettern UI for
    % saving files, that's why I write this.
clear;
apples1 = imread('apples/Apples_by_kightp_Pat_Knight_flickr.jpg');
apples1GT = imread('apples/Apples_by_kightp_Pat_Knight_flickr.png');
apples2 = imread('apples/ApplesAndPears_by_srqpix_ClydeRobinson.jpg');
apples2GT = imread('apples/ApplesAndPears_by_srqpix_ClydeRobinson.png');
apples3 = imread('apples/bobbing-for-apples.jpg');
apples3GT = imread('apples/bobbing-for-apples.png');
[row1,col1,dim1] = size(apples1);
apples1 = reshape(apples1,[row1*col1,dim1]);
apples1GT = reshape(apples1GT,[row1*col1,dim1]);
%apples1Positive = zeros(row*col,3);
%apples1Negative = zeros(row*col,3);
counterp = 1;
countern = 1;
for i= 1:(row1*col1)
    if apples1GT(i,:) == [255,255,255]
        apples1Positive(counterp,:) = apples1(i,:);
        counterp = counterp + 1;
    else
        apples1Negative(countern,:) = apples1(i,:);
        countern = countern + 1;
    end
end


[row2,col2,dim2] = size(apples2);
apples2 = reshape(apples2,[row2*col2,dim2]);
apples2GT = reshape(apples2GT,[row2*col2,dim2]);

counterp2 = 1;
countern2 = 1;
for i= 1:(row2*col2)
    if apples2GT(i,:) == [255,255,255]
        apples2Positive(counterp2,:) = apples2(i,:);
        counterp2 = counterp2 + 1;
    else
        apples2Negative(countern2,:) = apples2(i,:);
        countern2 = countern2 + 1;
    end
end








[row3,col3,dim3] = size(apples3);
apples3 = reshape(apples3,[row3*col3,dim3]);
apples3GT = reshape(apples3GT,[row3*col3,dim3]);

counterp3 = 1;
countern3 = 1;
for i= 1:(row3*col3)
    if apples3GT(i,:) == [255,255,255]
        apples3Positive(counterp3,:) = apples3(i,:);
        counterp3 = counterp3 + 1;
    else
        apples3Negative(countern3,:) = apples3(i,:);
        countern3 = countern3 + 1;
    end
end



positiveAll = [apples1Positive;apples2Positive;apples3Positive];
positiveAll = positiveAll';
negativeAll = [apples1Negative;apples2Negative;apples3Negative];
negativeAll = negativeAll';
temp = positveAll';
imshow(temp)