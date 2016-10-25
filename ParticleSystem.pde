class ParticleSystem {
  ArrayList<Particle> particles;
  PVector loc;
  PImage img1;
  
  ParticleSystem(PVector location_){
    loc= new PVector(location_.x,location_.y);
   
    particles = new ArrayList<Particle>();
  }
  
  void addParticle(){
    //if(particles.size()<100){
    //particles.add(new Particle(loc,img1));
   // }
  }
  void run(){
   for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
     // p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
     
  }
}
