function extlat = absorbingLat(lat, n)
% absorbingLat 
% returns extended lattice with absorbing boundary conditions
% Boundaries are set to EMPTY

extendRows = [zeros(1,n); lat; zeros(1,n)];
extlat = [zeros(n+2,1) extendRows zeros(n+2,1)];

end