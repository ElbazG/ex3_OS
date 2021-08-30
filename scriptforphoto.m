% Im = imread('C:\Users\Lital\Desktop\פרויקט גמר\תמונות\images4Lital_Gil\1 (1).jpg','jpg');
% subplot(2,6,1);
% imshow(Im)
% title('original image');
% subplot(2,6,2);
% outIm = modulateImColor2(Im,0);
% imshow(outIm)
% title('factor 0');
% subplot(2,6,3);
% outIm = modulateImColor2(Im,0.1);
% imshow(outIm);
% title('factor 0.1');
% subplot(2,6,4);
% outIm = modulateImColor2(Im,0.2);
% imshow(outIm);
% title('factor 0.2');
% subplot(2,6,5);
% outIm = modulateImColor2(Im,0.3);
% imshow(outIm)
% title('factor 0.3');
% subplot(2,6,6);
% outIm = modulateImColor2(Im,0.4);
% imshow(outIm)
% title('factor 0.4');
% subplot(2,6,7);
% outIm = modulateImColor2(Im,0.5);
% imshow(outIm)
% title('factor 0.5');
% subplot(2,6,8);
% outIm = modulateImColor2(Im,0.6);
% imshow(outIm)
% title('factor 0.6');
% subplot(2,6,9);
% outIm = modulateImColor2(Im,0.7);
% imshow(outIm)
% title('factor 0.7');
% subplot(2,6,10);
% outIm = modulateImColor2(Im,0.8);
% imshow(outIm)
% title('factor 0.8');
% subplot(2,6,11);
% outIm = modulateImColor2(Im,0.9);
% imshow(outIm)
% title('factor 0.9');
% subplot(2,6,12);
% outIm = modulateImColor2(Im,1);
% imshow(outIm)
% title('factor 1');
% T = readtable('ImagesToReplace.xlsx');
% T = readtable('ImagesToReplace.xlsx','Range','A2:A161')
% A=table2array(T)
% for i = 1:size(T)
% A(i)=T(i,:)
% end
% mkdir myfileshere
% A = [1 2]'
% 
% xlswrite('ex_251.xlsx',A)
A = [];
factor =0.50;
MYPATH = 'C:\Users\Lital\Desktop\final_project\exp_50'
%read multiple images
[picNames, pathName] = uigetfile('*.jpg','MultiSelect','on');
for factor = 0.50:0.50:0.50
    for i = 1:length(picNames)
        
        %iImage=imread([pathName '\' fileName{iFile}]);
        im = imread([pathName '\' picNames{i}]);%(picNames{i});
        outIm = modulateImColor2(im, factor);
        %imwrite(outIm,[pathName '\' picNames{i} '_f' num2str(factor*100) ],'ppm');
        imwrite(outIm,[MYPATH '\'  '_f' num2str(factor*100) '_f' picNames{i} ],'jpg');
        A{i}=(['ex_50' '/'  '_f' num2str(factor*100) '_f' picNames{i} '_f' '.jpg'])
        %to see the images all together
%         figure(1);
%         subplot(4,2,2*i-1); %subplot(#row,#colunm,i);
%         imshow(im);
%         subplot(4,2,2*i); %subplot(#row,#colunm,i);
%         imshow(outIm);
    end
B = A';
xlswrite('exp_50.xlsx',B)
end

%%
% %write image
% strPicName = 'the wanted name of the image';
% imwrite(im,strPicName,'ppm');



% A = [];
% factor =0.25;
% %read multiple images
% [picNames, pathName] = uigetfile('*.jpg','MultiSelect','on');
% for factor = 0.25:0.25:0.25
%     mkdir ex_25
%     for i = 1:length(picNames)
%         %iImage=imread([pathName '\' fileName{iFile}]);
%         im = imread([pathName '\' picNames{i}]);%(picNames{i});
%         outIm = modulateImColor2(im, factor);
%         %imwrite(outIm,[pathName '\' picNames{i} '_f' num2str(factor*100) ],'ppm');
%         imwrite(outIm,[pathName  'ex_25' '\'  '_f' num2str(factor*100) '_f' picNames{i}]);
%         
%         A{i}=(['ex_25' '/'  picNames{i} '_f' num2str(factor*100) '.jpg'])
%         %to see the images all together
% %         figure(1);
% %         subplot(4,2,2*i-1); %subplot(#row,#colunm,i);
% %         imshow(im);
% %         subplot(4,2,2*i); %subplot(#row,#colunm,i);
% %         imshow(outIm);
%     end
% end
%  B = A';
% xlswrite('ex_251.xlsx',B)
