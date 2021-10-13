by_average=1

inputId = getImageID();
inputTitle = getTitle();

Stack.getDimensions(width, height, channels, slices, frames);

for (i=1; i<=slices; i++){
	for (j=1; j<=frames; j++){
		Stack.setFrame(j)
		Stack.setSlice(i);
		getStatistics(area, mean, min, max, std, histogram);
		if (by_average){
			run("Divide...", "value="+mean+" slice");}
		else{
			run("Divide...", "value="+max+" slice");}
		}
	}
