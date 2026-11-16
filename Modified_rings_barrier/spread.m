%function newSite = spread(site, N, E, S, W, probSporeToHyphae, probSpread, probMushroom)
%function newSite = spread(site, N, NE, E, SE, S, SW, W, NW, probSporeToHyphae, probSpread, probMushroom)
function newSite = spread(site, N, NE, E, SE, S, SW, W, NW, probSporeToHyphae, probSpread, probMushroom)
% spread

%global EMPTY SPORE YOUNG MATURING MUSHROOMS OLDER DECAYING DEAD1 DEAD2 INERT;
%global EMPTY SPORE YOUNG MATURING MUSHROOMS OLDER DECAYING DEAD1 DEAD2 INERT;
global EMPTY SPORE YOUNG MATURING MUSHROOMS OLDER DECAYING DEAD1 DEAD2 INERT BARRIER;

switch site
    case EMPTY
        if (N == YOUNG || E == YOUNG || S == YOUNG || W == YOUNG || NE == YOUNG || SE == YOUNG || SW == YOUNG|| NW == YOUNG) && rand < probSpread
            newSite = YOUNG;
        else
            newSite = EMPTY;
        end

    case SPORE
        if (rand < probSporeToHyphae)
            newSite = YOUNG;
        else
            newSite = SPORE;
        end

    case YOUNG
        newSite = MATURING;

    case MATURING
        if rand < probMushroom
            newSite = MUSHROOMS;
        else
            newSite = OLDER;
        end

    case {MUSHROOMS, OLDER}
        newSite = DECAYING;

    case DECAYING
        newSite = DEAD1;

    case DEAD1
        newSite = DEAD2;

    case DEAD2
        newSite = EMPTY;

    case INERT;
        newSite = INERT;

    case BARRIER;
        newSite = BARRIER;
    end


end