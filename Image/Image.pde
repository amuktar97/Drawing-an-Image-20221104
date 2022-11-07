//Background Image Example
//
//Global Variables
int appWidth, appHeight;
float smallerDimension, largerDimension;
Boolean widthLarger=false, heightLarger;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
Boolean nightMode=false;
//
size(400, 400); //Landscape
//Copy Display Orientation
appWidth = width;
appHeight = height;
//
//Aspect Ratio Calcuations
//GeFvQkBbSLaMdpKXF1Zv_bigstock-Aerial-View-Of-Blue-Lakes-And--227291596.jpg
int picWidth = 1028;
int picHeight = 432;
//Image orientation: Landscape, Portrait, Square
if ( picWidth >= picHeight ) { //True if Landscape or Square
largerDimension = picWidth;
smallerDimension = picHeight;
widthLarger = true;
} else {I//False if Portrait
laragerDimension = picHeight;
smallerDimension = picWidth;
heightLarger = true;
}
//
if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
//
picWidthAdjusted = picWidth * imageWidthRatio;
picHeightAdjusted = picheight = imageHeightratio;
//
//Population
pic = loadImage("../Image Used/GeFvQkBbSLaMdpKXF1Zv_bigstock-Aerial-View-Of-Blue-Lakes-And--227291596.jpg");
imageBackgroundX = appWidth*0;
imageBackgroundY = appHeight*0;
imageBackgroundWidth = appWidth-1;
imageBackgroundHeight = appHeight-1;
//
//Rectangle Layout and Image drawing to CANVAS
rect(imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
//
//if () {} else {} for a Binaary Choice, no single IF
if (nightMode == false) tint(255, 128); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
if (nightMode == true) tint(128, 128, 128); //RGB: Night Mode
//
image(pic,imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
