class ParticleSystem {
  ArrayList<Particle> parts = new ArrayList<>();

  ParticleSystem() {
  }
  
  void add(int num){
    for(int i=0; i<num; i++)
      parts.add(new Particle());
  }
  
  void add(){
     parts.add(new Particle());
  }
}
