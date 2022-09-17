figure;
hold('on');
axis([-1, 1, -1, 1])
axis('square');
axis('manual');
axis('off');
video = VideoWriter('for_loop_movie.avi');
open(video);
for i = 1 : 1000
    rand_x = -1 + 2*rand;
    rand_y = -1 + 2*rand;
    if (rand_x^2+rand_y^2)<1
        scatter(rand_x, rand_y, 'r', 'filled');
    else
        scatter(rand_x, rand_y, 'b', 'filled');
    end
    drawnow;
    writeVideo(video, getframe(gcf));
end
hold('off');
close(video);