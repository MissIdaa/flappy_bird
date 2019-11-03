class Bird {
  float x, y; // Fuglens position
  float dy, ddy; // Fuglens hastighed og acceleration
  float s; // Fuglens størrelse
  boolean ready2flap;
  int score;
  PFont myFont;

     // Constructor til nye fugle
  Bird() {
    x = width/2;
    y = height/2;
    dy = 0;
    ddy = 0.33;
    s = 50;
    ready2flap = true;
    score = 0;
    textSize(50);
    myFont = createFont("FlappyRegular.ttf", 92);
    textFont(myFont);
  }

  // Afbild fuglen ved dens nuværende position
  void render() {
    fill(255);
    ellipse(x, y, s, s);
    if (jump == true) {
    textAlign(CENTER, CENTER);
    text(score, width/2, 50);
    }
    else {
    textAlign(CENTER, CENTER);
    textAlign(CENTER);
    textSize(50);
    text("GAME OVER", width/2, height/2 - 100);
    text(score, width/2, height/2);
    }
  }

  // Opdater fuglens position
  void update() {
    dy += ddy;
    y += dy;
    
    if (y >= height-s/2) {
      y = height - s/2;
      dy = 0;
    }
    if ((p.x < x && p.withPoint == true)) {
      score += 1;
      p.withPoint = false;
    }
    if ((p2.x < x && p2.withPoint == true)) {
      score += 1;
      p2.withPoint = false;
    }
  }

  // Bask med vingerne
  void flap() {
    if(ready2flap) {
      if (jump == true) {
      dy += -6.75;
      ready2flap = false;
      }
    }
  }
}
