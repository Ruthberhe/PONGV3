void gameover() {
  textSize(80);
  
  println(leftscore, rightscore);
  if (leftscore > rightscore) {
    fill(255);
    text("LEFT WINS", 20, 300);
  } else {
    fill(255);
    text("RIGHT WINS", 400, 300);
  }
  tactile(300, 450, 200, 100);
  fill(0);
  rect(300, 450, 200, 100);
  textSize(40);
  fill(255);
  text("RESTART", 320, 500);

  //exit
  tactile(710, 0, 90, 50);
  fill(255);
  rect(710, 0, 90, 50);
  fill(0);
  text("QUIT", 712, 30);
}


void gameoverClicks() {
  reset();
  if (mouseX>300 && mouseX<500 && mouseY>450 && mouseY<550) {
    mode=INTRO;
  }
  if (mouseX>710 && mouseX<800 && mouseY>0 && mouseY<50) {
    exit();
  }
}

void tactile(int x, int y, int w, int h) {
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
    stroke(black);
  } else {
    stroke(255);
  }
}
