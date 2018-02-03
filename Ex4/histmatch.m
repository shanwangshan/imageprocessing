function [C] = histmatch(Tar,Ref)
% cumulative distribution function
    function cdf =img_cdf (img)
        bins=0:255;
        H=hist(img(:),bins);
        cdf=cumsum(H)/sum(H);
    end
    cdf_Tar=img_cdf(Tar);
    cdf_Ref=img_cdf(Ref);
    for i=1:256
 % try to find the most matchable gray level
    [~,n]=min(abs(cdf_Ref-cdf_Tar(i)));
    M(i)=n;
    end
    %reconstruct the image
    C= M(Tar+1)/255;

end
