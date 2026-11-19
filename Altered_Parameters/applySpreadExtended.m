function newmat = applySpreadExtended(latExtended, probSporeToHyphae, probSpread, probMushroom)
% applySpreadExtended
% Function to apply spread(site, N, E, S, W, probSporeToHyphae, probSpread, probMushroom)
% to every interior site of square matrix latExt and to return the resulting
% matrix (non-extended)

n = size(latExtended, 1) - 2;
newmat = zeros(n);
%barrier_grid = Barrier_init(n);

% calculate one column at a time for efficiency because MATLAB is column-major
for j = 2:(n + 1)
    for i = 2:(n + 1)
        site = latExtended(i,   j);
        N    = latExtended(i-1, j);
        NE   = latExtended(i-1, j+1);
        E    = latExtended(i,   j+1);
        SE   = latExtended(i+1, j+1);
        S    = latExtended(i+1, j);
        SW   = latExtended(i+1, j-1);
        W    = latExtended(i,   j-1);
        NW   = latExtended(i-1,j-1);
        %newmat(i-1, j-1) = spread(site, N, NE, E, SE, S, SW, W, NW, probSporeToHyphae, probSpread, probMushroom);
        newmat(i-1, j-1) = spread(site, N, NE, E, SE, S, SW, W, NW, probSporeToHyphae, probSpread, probMushroom);
    end
end

end