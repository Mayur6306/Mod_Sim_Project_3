function neighborMushroom = hasNeighbor(N, NE, E, SE, S, SW, W, NW)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
directions = [N, NE, E, SE, S, SW, W, NW]
neighborMushroom = 0
for i = directions
    member = ismember(i,[2,3,4,5])
    if member == 1
        neighborMushroom = 1;
    end
end

end