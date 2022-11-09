//Background Image Example
//
//Global Variables
int appWidth, appHeight;
Boolean widthLarger=false, heightLarger=false;
float imageWidthRatio=0.0, imageHeightRatio=0.0;
float backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
Boolean nightMode=false;
//
void setup()
{
  size(1000, 800); //Landscape
  //Copy Display Orientation
  appWidth = width;
  appHeight = height;
  //
  //Aspect Ratio Calcuations
  //GeFvQkBbSLaMdpKXF1Zv_bigstock-Aerial-View-Of-Blue-Lakes-And--227291596.jpg
  int picWidth = 1028;
  int picHeight = 432;
  //
  float smallerDimension, largerDimension;
  //Image Orientation: Landscape, Portrait, Square
  if ( picWidth >= picHeight ) { //True if Landscape or Square
    largerDimension = picWidth;
    smallerDimension = picHeight;
    widthLarger = true;
  } else { //False if Portrait
    largerDimension = picHeight;
    smallerDimension = picWidth;
    heightLarger = true;
  }
  //
  float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
  //Teaching example, width is known to be larger
  //Better Image Stretch Algorithm, smaller image to larger CANVAS
  if ( appWidth >= picWidth ) {
    picWidthAdjusted = appWidth;
    //
    if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
    //
    if ( appHeight >= picHeight ) {
      if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
      picHeightAdjusted = picWidthAdjusted * imageHeightRatio;
      if (appHeight < picHeightAdjusted ) {
        println("STOP: image is too big for CANVAS");
        exit(); //stops any further use of APP
        //Remember: goal is 1:1 aspect ratio
      }
    } else {
      //Image smaller than CANVAS needs separate algorithm
    }
  } else {
    //Image smaller than CANVAS needs separate algorithm
  }
  //
  //Verifying Variable Values after algoroithm
  println("App Width:", appWidth, " and App Height:", appHeight);
  println("Larger Image dimension is:", largerDimension);
  println("Image dimensions are:", picWidth, picHeight);
  println("Adjusted Image dimesnions are (stretch is goal):", picWidthAdjusted, picHeightAdjusted);
  //
  //Population
  pic = loadImage("../Image Used/GeFvQkBbSLaMdpKXF1Zv_bigstock-Aerial-View-Of-Blue-Lakes-And--227291596.jpg");
  imageBackgroundX = appWidth*0;
  imageBackgroundY = appHeight*0;
  imageBackgroundWidth = appWidth-1;
  imageBackgroundHeight = appHeight-1;
  //
  //Rectangle Layout and Image drawing to CANVAS
  //rect(imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
  //
  //Background Image must be single executed code
  if (nightMode == false) tint(255, 50); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
  //image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
  //
}//End setup
//
void draw() 
{
  if (nightMode == true) {
    //RGB tint() works in draw()
    tint(64, 64, 40); //RGB: Night Mode
    image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
  }
}//End draw
void keyPressed() {
}//End keyPressed
void mousePressed() {
  if (mouseButton == LEFT) nightMode = true;
  if (mouseButton == RIGHT) nightMode = false;
}//End mousePressed
//
//End Main Program
