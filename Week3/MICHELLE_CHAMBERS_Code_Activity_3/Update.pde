void update() {
  
  yVel=yVel*yDirection;//make sue yVel is in correct direction
  if (mousePressed){yPos-=yVel/3;}
    else {yPos-=yVel;}//add vel to pos, slowmo if mouse is clicked
  yVel-=yGrav;// add grav to velocity

  xVel=xVel*xDirection;//make sue yVel is in correct direction
   if (mousePressed){xPos+=xVel/3;}
    else {xPos+=xVel;}//add vel to pos
  
}
