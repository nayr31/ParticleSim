class Particle {
  PVector pos;
  PVector speed;
  float speedMod;
  int lifespan;

  int tick = 0;

  import java.awt.*;
  Color c;

  Particle(int posX, int posY) {
    pos = new PVector(posX, posY);
    speed = new PVector((int)(random(-3, 3)), -(int)(random(1, 3)));
    lifespan = 200;
    c = new Color(255, 153, 51);
    speedMod = .9;
  }

  void update() {
    tick++;

    updateSpeed();

    lifespan--;

    updateColor();

    drawPart();
  }

  void drawPart() {
    fill(c.getRed(), c.getGreen(), c.getBlue());
    ellipse(pos.x, pos.y, (int)(lifespan/4), (int)(lifespan)/4);
  }

  void updateSpeed() {
    pos.x += speed.x;
    pos.y += speed.y;

    if (tick%10 == 0) {

      speed.x = (int)(speed.x * speedMod);
      //speed.y = (int)(speed.y * speedMod);
    }
  }

  void updateColor() {
    c = new Color(c.getRed(), c.getGreen() - 1 >= 0 ? c.getGreen() -1 : 0, c.getGreen() > 51 || c.getBlue() == 0 ? c.getBlue() : c.getBlue() - 1);
  }
}
