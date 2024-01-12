function out = drawCells(m,n)

[X,Y]=meshgrid(1:m+1,1:n+1);
figure; hold on;
plot(X,Y,'Color',[0.5,0.5,0.5], 'LineWidth',2.2);
plot(Y,X,'Color',[0.5,0.5,0.5], 'LineWidth',2.2);axis off

out='This is the game board';

end