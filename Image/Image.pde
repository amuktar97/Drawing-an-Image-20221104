//Background Image Example
//
//Global Variables
int appWidth, appHeight;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
//
size(700, 400); //Landscape
//Copy Display Orientation
appWidth = width;
appHeight = height;
//
//Population
pic = loadImage("../Image Used/Aliko_Dangote.jpg");
imageBackgroundX = appWidth*0;
imageBackgroundY = appHeight*0;
imageBackgroundWidth = appWidth-1;
imageBackgroundHeight = appHeight-1;
//
//Rectangle Layout and Image drawing to CANVAS
rect(imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
//
image(pic,imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
