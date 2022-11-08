//Background Image Example
//
//Global Variables
int appWidth, appHeight;
float smallerDimension, largerDimension;
Boolean widthLarger=false, heightLarger=false;
float imageWidthRatio=0.0, imageHeightRatio=0.0;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
Boolean nightMode=false;
//
size(800, 600); //Landscape
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
} else { //False if Portrait
 largerDimension = picHeight;
 smallerDimension = picWidth;
 heightLarger = true;
}
/* Older algorithm
 if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
 if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
 if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
 if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
 */
//Better Image Stretch Algorithm
float picWidthAdjusted, picHeightAdjusted;
//Better Iamge Stretch Algorithm
if ( appWidth >= picWidth ) {
  picWidthAdjusted = picWidth;
} else {
  if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
  if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
}
if ( appHeight >= picHeight ) {
  picWidthAdjusted = picWidth;
} else {
  if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
  if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
}
picWidthAdjusted = appWidth * imageWidthRatio;
picHeightAdjusted = appHeight * imageHeightRatio;
//
//Developer verified variables
println (appWidth, picWidth, picWidthAdjusted);
println (appHeight,picHeight, picHeightAdjusted);
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
