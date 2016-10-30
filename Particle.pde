class Particle{
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector loc;
  float lifespan,bright;
  PImage img;
  int e;
  
  Particle(PVector loc_,int e_){
    acceleration= new PVector(random(-0.008,0.008),random(0.02,0.027));
   
    location =new PVector(loc_.x,loc_.y);
    e=e_;
    lifespan=255;
    bright=loc_.z;
    //speed=speed_.get();
    //direction=dir.get();
    velocity = new PVector(random(-0.01,0.01),random(-5,-5.90));
    //friction=velocity.get();
    //friction.mult(-0.01);
  }
  void run(){
   update();
   display();
  }
  void update(){
    velocity.add(acceleration);
    location.add(velocity);
    lifespan-=1.5;
  }
  void display(){
    imageMode(CENTER);
    image(letter[e],location.x,location.y,12,15);
    
    //rotate(10);
    //if(bright>200){
    ////image(img,x,y,30,30);
    //strokeWeight(2.5);
    //stroke(255);
    //point(location.x,location.y);
    //}
  }
  boolean isDead(){
    if(location.x<0||location.y<100+random(-200,200)||location.x>width||lifespan<0){
      return true;
    }else{
      return false;
    }
  }
 float locationX(){
    return location.x;   
  }
 float locationY(){
    return location.y; 
  }
  int imgNum(){
    return e; 
  }
}