class ParticleSystem {
  ArrayList<Particle> parts = new ArrayList();

  ParticleSystem() {
  }

  void add(int num) {
    for (int i=0; i<num; i++)
      parts.add(new Particle(mouseX, mouseY));
  }

  void add() {
    parts.add(new Particle(mouseX, mouseY));
  }

  void update() {
    for (int i=0; i<parts.size(); i++) {
      Particle p = parts.get(i);
      p.update();
      if(p.lifespan == 0)
        parts.remove(p);
    }
  }
}
