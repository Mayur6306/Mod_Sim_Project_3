function saveMovie(M, title, framerate)
% saveMovie
% Creates a movie from a series of frames (M) with title (title) at
% framerate (framerate)

newVid = VideoWriter(title, 'MPEG-4');
newVid.FrameRate = framerate;
newVid.Quality = 100;
open(newVid);
for i = 1:length(M)
    writeVideo(newVid, M(i));
end
close(newVid)
end