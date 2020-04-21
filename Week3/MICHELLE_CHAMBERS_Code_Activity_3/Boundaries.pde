void boundaries() {

  if (xPos>width||xPos<0) {
    ;//change direction to opposite when at left or right edge
    xDirection=-1*xDirection;
    c=random(0, 255);
  }
  if (yPos>height||yPos<0) {
    ;//change direction to opposite when at left or right edge
    yDirection=-1*yDirection;//change direction at edge of screen
    c=random(0, 255);
  }
}
