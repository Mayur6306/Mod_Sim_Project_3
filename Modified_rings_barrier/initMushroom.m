function mushroom = initMushroom(n, probSpore)
%initMushroom
% returns an n-by-n grid of values: EMPTY (no mushroom), 
% SPORE
% Pre: n is the size (number of rows and columns) of the square grid and is positive.
% 	probSpore is the probability that a site is initially occupied by a spore.  
% Post:	 The n-by-n grid (matrix) of values is returned.

global EMPTY SPORE BARRIER;
EMPTY = 0; SPORE = 1; BARRIER = 10;

mushroom = EMPTY * ones(n);

mid = round(n/2) + 1;
barrier1 = mid:n-1;
%spores = rand(n) < probSpore;

%mushroom(spores) = SPORE;

%spores = rand(n) < probSpore;

%mushroom(spores) = SPORE;
mushroom(mid, mid) = SPORE;
mushroom((mid - 5), barrier1) = BARRIER;

end

