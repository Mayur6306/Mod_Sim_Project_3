function grids = mushroomSim(n, probSpore, probSporeToHyphae, probSpread, probMushroom, num_timesteps)
% mushroomSim
% Mushroom simulation

%%% Initialize grid
mushroom  = initMushroom(n, probSpore);

%%% Perform simulation
grids = zeros(n, n, num_timesteps+1);
grids(:, :, 1) = mushroom;
for i = 2:(num_timesteps+1)
    % Extend matrix with periodic boundary conditions
    mushroomExtended = absorbingLat(mushroom, n);
    % Apply mushroom spreading function to each cell
    mushroom = applySpreadExtended(mushroomExtended, probSporeToHyphae, probSpread, probMushroom);
    % Save new matrix
    grids(:, :, i) = mushroom;
end

end