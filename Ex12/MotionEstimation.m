function MotionEstimation( refFrame, curFrame, sz, bsize, searchRadius )

    % pad to ensure the image size is divisible by the block size
    rframe = padarray(refFrame,[bsize-1 bsize-1],0,'post'); % padding at the end of the array element in both direction
    cframe = padarray(curFrame,[bsize-1 bsize-1],0,'post'); % padding at the end of the array element in both direction
    % initialize empty motion vector matrices
    vmotion = zeros(sz);
    hmotion = zeros(sz);
    for i=1:bsize:sz(1)
        for j=1:bsize:sz(2)
            % this is a block of the reference image
            rblock = rframe(i:i+bsize-1,j:j+bsize-1,:);
            % TO BE ADDED
            % initialization of error and motion vectors
            cblock = cframe(i:i+bsize-1,j:j+bsize-1,:);
            vbest = 0;
            hbest = 0;
            ebest = sum(sum(sum(abs(rblock-cblock))));
            % setting the bounds of the search region
            lbound = min([searchRadius, j-1]);
            rbound = min([searchRadius, sz(2)-j]);
            ubound = min([searchRadius, i-1]);
            dbound = min([searchRadius, sz(1)-i]);
            for vshift=-ubound:dbound
                for hshift=-lbound:rbound
                    % TO BE ADDED
                    % extracting the block from the current frame
                    % calculating and updating the current values for
                    % the error and motion vectors
                    cblock = cframe(i + vshift:i + bsize + vshift -1, j + hshift:j+bsize + hshift -1,:);
                    error = sum(sum(sum(abs(rblock - cblock))));
                    if error < ebest
                        ebest = error;
                        vbest = vshift;
                        hbest = hshift;
                    end
                end
            end
            % TO BE ADDED
            % updating the motion vectors based on the search result
            vmotion(i,j) = vbest;
            hmotion(i,j) = hbest;
        end
    end
    % produce a velocity plot of motion vectors (note the flipping of axis)
    quiver(flipud(hmotion),flipud(-vmotion),10)
    xlim([0 sz(2)])
    ylim([0 sz(1)])
end
