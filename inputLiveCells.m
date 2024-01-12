function [R,C]=inputLiveCells(m,n)

while 1
    hText=title ('Click on the cells you wish to make live. Press <Enter> when done.');
    [m,n,Button]=ginput(1);
    m=floor(m);
    n=floor(n);
    R=n;
    C=m;

    if Button==1
        V(m,n)=1;
        fill([m m+1 m+1 m],[n n n+1 n+1],'k')
    else
        delete(hText)
        break
    end
end

s=0;


