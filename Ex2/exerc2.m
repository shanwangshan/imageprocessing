I=imread('lena_face.png');
% Split the image into eight levels by obtaining seven thresholds from multithresh.
for numLevels = 4:4:16
	thresh = multithresh(I, numLevels);
	% Construct the valuesMax vector such that the maximum value
	% in each quantization interval is assigned to the eight levels of the output image.
	valuesMax = [thresh max(I(:))];
	[quant8_I_max, index] = imquantize(I,thresh,valuesMax);
	valuesMin = [min(I(:)) thresh];
	quant8_I_min = valuesMin(index);
	
	% Display both eight-level output images side by side.
	figure;
	imshowpair(quant8_I_min,quant8_I_max,'montage')
	title('Minimum Interval Value           Maximum Interval Value')
	% Set up figure properties:
	% Enlarge figure to full screen.
	set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
	% Get rid of tool bar and pulldown menus that are along top of figure.
	set(gcf, 'Toolbar', 'none', 'Menu', 'none');
	% Give a name to the title bar.
	set(gcf, 'Name', 'Demo by ImageAnalyst', 'NumberTitle', 'Off')
end