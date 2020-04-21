void interaction() {
  if (keyPressed) { //check if a key is pressed
    if (key=='x') { //is it the x key
      xVel=random(1, 10); //set xvel to a number 1-9
      println("xVel=", xVel);
    }
    if (key=='y') { //is it the y key
      yVel=random(1, 10);
      println("yVel=", yVel);//set xvel to a number 1-9
    }
    if (key=='r') {
      init();
    }
  }
}
