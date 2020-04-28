//Art 22 Spring 2020, extra credit
//April 27 2020
//author: Michelle Chambers

PImage img;
int colorbar;
int time;

void setup() {
  size (1452, 679);//size of image
  frameRate(80);//might mess with this later
  img=loadImage("astronaut.png");
  noStroke();

  loadPixels();
  for (int x=0; x<width; x++) {//nested loop to scan through all pixel locations and index them
    for (int y = 0; y<height; y++) {
      int index=x+y*width;//magic formula

      float r = red(img.pixels[index]);
      float g = green(img.pixels[index]);
      float b = blue(img.pixels[index]);//extract colors from image

      pixels[index] = color(r, g, b);//set pixel color for display
    }
  }
  updatePixels();
}

void draw() {

  float x1=random(0, width);//x location of copy
  float y1= 0;//y location of copy
  int w = 20;//width of section
  int h = height;//height of section
  float x2=x1+random(-5, 5);//paste pixel section at a random location up to 10 pixels away
  float y2=y1+random(-5, 5);//same for y

  if (time>40) {//give people a little time to see the actual picture
    copy(int(x1), int(y1), w, h, int(x2), int(y2), w, h);//copies and pastes section
    if (frameCount%80==0) {//every second
      int rectangles=int(random(1, 3));//create a random variable for number of rectangles
      for (int i=0; i<rectangles; i++) {//draw 1-3 rectangles
        fill(random(0, 255), random(50, 200));//of random shade and opacity
        rect(random(0, width), 0, random(2, 30), height);//draw rectangle
        colorbar++;//increase colorbar counter
      }
      if (colorbar%5==0) {//if the number of bars happens to be divisible by 5
        fill(255, 0, 255, random(100, 255));
        rect(mouseX, 0, random(1, 5), height);//draw magenta bar at mouseX
      }
      if (colorbar%6==0) {//if the number of bars happens to be divisible by 6
        fill(0, 255, 255, random(100, 255));
        rect(mouseX, 0, random(1, 5), height);//draw cyan bar at mouseX
      }
      if (colorbar%7==0) {//if the number of bars happens to be divisible by 7
        fill(255, 255, 0, random(100, 255));
        rect(mouseX, 0, random(1, 5), height);//draw yellow bar at mouseX
      }
    }
  }
  time++;//count up
  if (time>800) {
    textSize(50);
    text("NO SIGNAL_", width/2, height/2);//after 10 seconds display "no signal"
  }
}
