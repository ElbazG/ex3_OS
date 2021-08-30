function outIm = modulateImColor2(Im, factor)
outIm=Im;
%factor = 0.25;
Rf = 0.2989 ; %0.3;
Gf = 0.5870 ;%0.59;
Bf = 0.1140 ;%0.11;
[nrows, ncols, dims] =size(outIm);
if dims ~= 3 
    error('Image not with 3 color channels, aborting...');
end
for irow=1:nrows
    for icol=1:ncols
        outIm(irow,icol,1) = (1-(1-Rf)*factor)*Im(irow,icol,1) + Gf*(factor)*Im(irow,icol,2) + Bf*(factor)*Im(irow,icol,3);
        outIm(irow,icol,2) = Rf*(factor)*Im(irow,icol,1)+ (1-(1-Gf)*factor)*Im(irow,icol,2) + Bf*factor*Im(irow,icol,3);
        outIm(irow,icol,3) = Rf*(factor)*Im(irow,icol,1)+ Gf*factor*Im(irow,icol,2) + (1-(1-Bf)*factor)*Im(irow,icol,3);
    end
end 
