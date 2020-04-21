//Art 22 Spring 2020 Assignment 3
//April 20 2020
//author: Michelle Chambers

float x1, y1, x2, y2;//position variables
float xv, yv;//velocity variables
float stepX, stepY; //stepsize variables
float cSize, cFill; //variable for circle size and fill
int t;//time variable

void setup() {
  size(800, 600);
  colorMode(HSB);
  background(0);

  cSize=10;
  cFill=255;


  x1=random(0, width);
  y1=0;

  x2=x1+cSize;
  y2=height;

  xv=0;
  yv=0;

  stepX=5;
  stepY=5;

  t=0;
}



void draw() {

  fill(0, 255, cFill);//set fill brightness for red circle
  circle(x1, y1, cSize);//draw first circle
  fill(160, 255, cFill);//set fill brightness for blue circle
  circle(x2, y2, cSize);//draw second circle
  if (y2-y1>60||y1-y2>60) {//if dots are >60 pixels apart
    y1+=yv;//move circle one down
    y2-=yv;//move circle 2 up
    yv+=1/cSize;//move at a speed inverse to size
    t++;//increase timer
    //movement for beginning and ending, when dots are 60 pixels apart
  } else {
    x1+=random(-stepX, stepX);
    x2+=random(-stepX, stepX);
    y1+=random(-stepY, stepY);
    y2+=random(-stepY, stepY);//random walk for both dots
  }

  //movement for tangle
  if (t>500) { //upon completing a tangle
    cFill=random(50, 255);
    cSize=random(5, 40);//randomize size and fill
    stepX=random(3,8);//randomize speed of tangling dots
    stepY=stepX;

    x1=random(0, width);
    y1=0;
    x2=x1+cSize;
    y2=height;
    xv=0;
    yv=0;

    t=0;//reset everything else: position, speed, etc.
  }
}
