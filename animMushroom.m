function M = animMushroom(graphList)
% animMushroom
% Function to return movie visualization of grids in graphList
% Returns an array of frames that can be played as a movie again or saved
% in a video
;

set(0,'DefaultFigureVisible','off');

map = [
    0.70 0.90 0.70;   % EMPTY - Light green
    0.00 0.00 0.00;   % SPORE - Black
    0.30 0.30 0.30;   % YOUNG - Dark grey
    0.75 0.75 0.75;   % MATURING - Light grey
    1.00 1.00 1.00;   % MUSHROOMS - White
    0.75 0.75 0.75;   % OLDER - Light grey
    0.82 0.71 0.55;   % DECAYING - Tan
    0.50 0.30 0.17;   % DEAD1 - Brown
    0.12 0.38 0.16;   % DEAD2 - Dark green
    1.00 1.00 0.00    % INERT - Yellow
];

colormap(map);

numGrids = size(graphList, 3);

for k = 1:numGrids
    g = graphList(:, :, k);
    image(g + 1);
    colormap(map);

    axis square;
    axis off;
    
    % Add plot title
    title(['Mushroom Fairy Rings (', num2str(k - 1), ' steps)', ...
        newline], 'fontsize', 20);
    M(k) = getframe(gcf);
    close;
end
set(0,'DefaultFigureVisible','on');
end