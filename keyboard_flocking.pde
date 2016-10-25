//this program is inspired by Daniel Shiffman's code of flocking behavior, and I rewrite the code based on his original coding
//the program run in processing, and make a flocking behavior combines with typying


import ddf.minim.*;
Minim minim;
AudioSample press[]=new AudioSample[26];

float w=420;
float h=720;
float kk=0.46;
float changeX=0;
float changeY=506;
boolean t=false;
boolean r=false;
boolean e=false;
boolean y=false;
boolean a=false;

float keyloc[][]={{17,70},{322,135},{183,135},{152,69},{133,0},{219,69},{287,69},
                  {355,69},{474  ,0},{423,69},{490,69},{558,69},{456,135},{390,135},
                  {542,0},{610,0},{0,0},{201,0},{83,69},{271,0},{406,0},{253,135},
                  {66,0},{118,135},{337,0},{50,135}};


ArrayList<Particle> ps;

PImage []letter=new PImage[26];

PImage keyboard;
Flock flock;
void setup(){
  //keyboard=loadImage("keyboard.png");
 
  minim = new Minim(this);
  
   for(int i=0;i<26;i++){
    int f=i+1;
    letter[i]=loadImage(f+".png");
    press[i] = minim.loadSample( f+".mp3", // filename
                            100     // buffer size
                         );
  }
  fullScreen();
  //size(1480,860);
  flock = new Flock();
   for (int i = 0; i < 200; i++) {
     int uu=int(random(1,25));
    Boid b = new Boid(width/2,height/2,uu);
    flock.addBoid(b);
  }
  ps=new ArrayList<Particle>();
  
  //for(int x=0;x<w;x++){  //load pixels of T
  //  for(int y=0;y<h;y++){
  //    int loc=y*w+x;
  //    //float bright=brightness(T.pixels[loc]);
  //    tt [loc]=new PVector(x+400+changeX,y+changeY);  
  //  }
  //}
  //for(int x=0;x<w;x++){      ////load pixels of R
  //  for(int y=0;y<h;y++){
  //    int loc=y*w+x;
  //    float bright=brightness(R.pixels[loc]);
  //    rr [loc]=new PVector(x+336+changeX,y+136+changeY,bright);  
  //  }
  //}
  
  //for(int x=0;x<w;x++){      ////load pixels of E
  //  for(int y=0;y<h;y++){
  //    int loc=y*w+x;
  //    float bright=brightness(E.pixels[loc]);
  //    ee [loc]=new PVector(x+262+changeX,y+136+changeY,bright);  //location of latter
  //  }
  //}
  
  //for(int x=0;x<w;x++){      ////load pixels of E
  //  for(int y=0;y<h;y++){
  //    int loc=y*w+x;
  //    float bright=brightness(Y.pixels[loc]);   //need change
  //    yy [loc]=new PVector(x+470+changeX,y+136+changeY,bright);  //location of latter,yy need change
  //  }
  //}
}
void draw(){
  //scale(0.8);
  blendMode(ADD);
   // translate(0,50);
    background(0);
    
    
      run();
    
    flock.run();
}
void keyPressed(){
  
  if(key=='a'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[0][0]+w,kk*keyloc[0][1]+h); 
      ps.add(new Particle(s,0));
     t=true;
   }else{
     t=false;
   }
   
   if(key=='b'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[1][0]+w,kk*keyloc[1][1]+h); 
      ps.add(new Particle(s,1));
     t=true;
   }else{
     t=false;
   }
   if(key=='c'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[2][0]+w,kk*keyloc[2][1]+h); 
      ps.add(new Particle(s,2));
     t=true;
   }else{
     t=false;
   }
   if(key=='d'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[3][0]+w,kk*keyloc[3][1]+h); 
      ps.add(new Particle(s,3));
     t=true;
   }else{
     t=false;
   }
   if(key=='e'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[4][0]+w,kk*keyloc[4][1]+h); 
      ps.add(new Particle(s,4));
     t=true;
   }else{
     t=false;
   }
   if(key=='f'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[5][0]+w,kk*keyloc[5][1]+h); 
      ps.add(new Particle(s,5));
     t=true;
   }else{
     t=false;
   }
   if(key=='g'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[6][0]+w,kk*keyloc[6][1]+h); 
      ps.add(new Particle(s,6));
     t=true;
   }else{
     t=false;
   }
   if(key=='h'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[7][0]+w,kk*keyloc[7][1]+h); 
      ps.add(new Particle(s,7));
     t=true;
   }else{
     t=false;
   }
   if(key=='i'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[8][0]+w,kk*keyloc[8][1]+h); 
      ps.add(new Particle(s,8));
     t=true;
   }else{
     t=false;
   }
   if(key=='j'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[9][0]+w,kk*keyloc[9][1]+h); 
      ps.add(new Particle(s,9));
     t=true;
   }else{
     t=false;
   }
   if(key=='k'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[10][0]+w,kk*keyloc[10][1]+h); 
      ps.add(new Particle(s,10));
     t=true;
   }else{
     t=false;
   }
   if(key=='l'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[11][0]+w,kk*keyloc[11][1]+h); 
      ps.add(new Particle(s,11));
     t=true;
   }else{
     t=false;
   }
   if(key=='m'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[12][0]+w,kk*keyloc[12][1]+h); 
      ps.add(new Particle(s,12));
     t=true;
   }else{
     t=false;
   }
   if(key=='n'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[13][0]+w,kk*keyloc[13][1]+h); 
      ps.add(new Particle(s,13));
     t=true;
   }else{
     t=false;
   }
   if(key=='o'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[14][0]+w,kk*keyloc[14][1]+h); 
      ps.add(new Particle(s,14));
     t=true;
   }else{
     t=false;
   }
   if(key=='p'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[15][0]+w,kk*keyloc[15][1]+h); 
      ps.add(new Particle(s,15));
     t=true;
   }else{
     t=false;
   }
   if(key=='q'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[16][0]+w,kk*keyloc[16][1]+h); 
      ps.add(new Particle(s,16));
     t=true;
   }else{
     t=false;
   }
   if(key=='r'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[17][0]+w,kk*keyloc[17][1]+h); 
      ps.add(new Particle(s,17));
     t=true;
   }else{
     t=false;
   }
   if(key=='s'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[18][0]+w,kk*keyloc[18][1]+h); 
      ps.add(new Particle(s,18));
     t=true;
   }else{
     t=false;
   }
   if(key=='t'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[19][0]+w,kk*keyloc[19][1]+h); 
      ps.add(new Particle(s,19));
     t=true;
   }else{
     t=false;
   }
   if(key=='u'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[20][0]+w,kk*keyloc[20][1]+h); 
      ps.add(new Particle(s,20));
     t=true;
   }else{
     t=false;
   }
   if(key=='v'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[21][0]+w,kk*keyloc[21][1]+h); 
      ps.add(new Particle(s,21));
     t=true;
   }else{
     t=false;
   }
   if(key=='w'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[22][0]+w,kk*keyloc[22][1]+h); 
      ps.add(new Particle(s,22));
     t=true;
   }else{
     t=false;
   }
   if(key=='x'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[23][0]+w,kk*keyloc[23][1]+h); 
      ps.add(new Particle(s,23));
     t=true;
   }else{
     t=false;
   }
   if(key=='y'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[24][0]+w,kk*keyloc[24][1]+h); 
      ps.add(new Particle(s,24));
     t=true;
   }else{
     t=false;
   }
   if(key=='z'){                              //if "T" is Pressed, add PVector to particle system 
      PVector s=new PVector(kk*keyloc[25][0]+w,kk*keyloc[25][1]+h); 
      ps.add(new Particle(s,25));
     t=true;
   }else{
     t=false;
   }
 
}
 
void run(){
    for (int i = ps.size()-1; i >= 0; i--) {
    Particle p = ps.get(i);
    p.run();
    if (p.isDead()) {
      int v=p.imgNum();
      press[v].trigger();
      for(int j=0;j<10;j++){
       flock.addBoid(new Boid(p.locationX(),p.locationY(),v));
      }
      ps.remove(i);
    }
  }
}
