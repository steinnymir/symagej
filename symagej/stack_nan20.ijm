Stack.getDimensions(cols, rows, channels, slices, frames);
function NaN20(){
	newValue = 0.0;
	counter = 0;
	for (y = 0; y < getHeight(); y++){
	        for (x = 0; x < getWidth(); x++){
	                p = getPixel(x,y);
	                if (isNaN(p)) {
	                        setPixel(x, y, newValue);
	                        counter++;
	                }
	        }
	}
	print("" + counter + " pixels replaced"); 
}
for (i=1; i<=slices; i++){
	for (j=1; j<=frames; j++){
		Stack.setFrame(j)
		Stack.setSlice(i);
		NaN20();
	}
}