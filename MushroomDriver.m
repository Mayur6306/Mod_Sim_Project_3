% Mushroom Fairy Rings

%% Simulate Mushroom Fairy Rings - Example 1

% Clear workspace
clear all; close all;

% Example: Simulates Mushroom Fairy Rings

rand('seed', 1);

n = 50;

probSpore = 0.001;
probSporeToHyphae = 0.8;
probMushroom = 0.5;
probSpread = 0.8;

num_timesteps = 50;

global EMPTY SPORE YOUNG MATURING MUSHROOMS OLDER DECAYING DEAD1 DEAD2 INERT;

EMPTY = 0;
SPORE = 1;
YOUNG = 2;
MATURING = 3;
MUSHROOMS = 4;
OLDER = 5;
DECAYING = 6;
DEAD1 = 7;
DEAD2 = 8;
INERT = 9;

grids = mushroomSim(n, probSpore, probSporeToHyphae, ...
    probSpread, probMushroom, num_timesteps);

%% Animate Results in Color
MColor = animMushroom(grids);

%% Play animation
movie(figure(), MColor, 1, 1);

% Save a movie of the fairy rings
%saveMovie(MColor, 'Mushroom', 1);