ParticleSystem system;

int tick = 0;

void setup() {
  size (1000, 800);
  system = new ParticleSystem();
  rectMode(CENTER);
  noStroke();
}

void draw() {
  tick++;
  background(255);
  system.update();
  
  if(tick%2 == 0)
    system.add();
}
