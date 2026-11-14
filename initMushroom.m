function mushroom = initMushroom(n, probSpore)
%initMushroom
% returns an n-by-n grid of values: EMPTY (no mushroom), 
% SPORE
% Pre: n is the size (number of rows and columns) of the square grid and is positive.
% 	probSpore is the probability that a site is initially occupied by a spore.  
% Post:	 The n-by-n grid (matrix) of values is returned.

global EMPTY SPORE;

mushroom = EMPTY * ones(n);

spores = rand(n) < probSpore;

mushroom(spores) = SPORE;

end

