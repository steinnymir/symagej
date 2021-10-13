by_average=1

inputId = getImageID();
inputTitle = getTitle();

Stack.getDimensions(width, height, channels, slices, frames);
minimum = 99999;
for (i=1; i<=slices; i++){
	for (j=1; j<=frames; j++){
		Stack.setFrame(j);
		Stack.setSlice(i);
		getStatistics(area, mean, min, max, std, histogram);
		if (min<minimum){
			minimum = min;
		}
//		if (by_average){
//			run("Divide...", "value="+mean+" slice");}
//		else{
//			run("Divide...", "value="+max+" slice");}
		}
	}
for (i=1; i<=slices; i++){
	for (j=1; j<=frames; j++){
		Stack.setFrame(j);
		Stack.setSlice(i);
		run("Divide...", "value="+minimum+" slice");
		}
	}
