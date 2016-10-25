class Flock {
  ArrayList<Boid> boids; // An ArrayList for all the boids

  Flock() {
    boids = new ArrayList<Boid>(); // Initialize the ArrayList
  }

  void run() {
    for (Boid b : boids) {
      b.run(boids);  // Passing the entire list of boids to each boid individually
    }
    if(boids.size()>100){
      boids.remove(0);
      boids.remove(1);
     boids.remove(2);
    }
  }

  void addBoid(Boid b) {
    boids.add(b);
  }

}
