//Art 22 week 3 classwork 1
//April 19 2020
//author: Michelle Chambers

float xPos, yPos;//position variables for geometry
float xVel, yVel;//velocity variables 
float xDirection, yDirection;//direction variables
float xGrav, yGrav;//acceleration variables
float c;//variable for random color


void setup() {
  size(510, 510);
  init();//initialize
}

void draw() {
  render();//run render function

  update();//run update function

  boundaries();//run boundaries function
  
  interaction();//run interaction
//println(xVel); //check if im actually insane
  
}
