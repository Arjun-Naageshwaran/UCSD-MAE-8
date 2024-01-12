%%drawCells

function out = drawCells(m,n)

[X,Y]=meshgrid(1:m+1,1:n+1);
figure; hold on;
plot(X,Y,'Color',[0.5,0.5,0.5], 'LineWidth',2.2);
plot(Y,X,'Color',[0.5,0.5,0.5], 'LineWidth',2.2);

out='This is the game board';

end

%%inputLiveCells

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

%%evolveState

function s = evolveState(m,n)

for i= 2:m-1
    for j=2:n-1
        sm=0;
        % count number of alive neighbors
        sm=sm+ B(i-1,j-1)+B(i-1,j)+B(i-1,j+1);
        sm=sm+ B(i,j-1)+B(i,j+1);
        sm=sm+ B(i+1,j-1)+B(i+1,j)+B(i+1,j+1);
        % compute the new state of the current cell
        s=B(i,j);
        if B(i,j)==1
            if (sm>1)&&(sm<4)
                   s=1;
            else
                   s=0;  
            end
        else
            if sm==3
                   s=1;
            end
        end
    end
end
end


