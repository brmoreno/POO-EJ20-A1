class Particula{
  float x,y;
  float dx,dy;
  float r;
  color c;
  
  Particula(float x_, float y_, float r_, color c_){
    x = x_;
    y = y_;
    dx = random(-1,1);
    dy = random(-1,1);
    r = r_;
    c = c_;
  }
  
  void display(){
    noStroke();
    fill(c);
    ellipse(x,y,r*2,r*2);
  }
  
  void mover(){
    x+=dx;
    y+=dy;
    if(x<0+r || x>width-r){
      dx *=-1;
    }
    if(y<0+r || y>height-r){
      dy *=-1;
    }
  }
}

class Avatar{
  float x,y;
  float velocidad;
  float direccion;
  float t;
  
  Avatar(){
    x = width/2;
    y = height/2;
    velocidad = 3;
    direccion = 0;
    t = 10;
  }
  
  void display(){
    //ellipse(x,y,t*2,t*2);
    pushMatrix();
    translate(x,y);
    rotate(direccion);
    //scale();
    fill(255,0,0);
    noStroke();
    ellipse(0,0,t*2,t*2);
    stroke(0);
    line(0,0,t*2,0);
    popMatrix();
  }
  
  void mover(){
    if(keyPressed){
      if(key == 'a'){
        direccion -= 0.1;
      }
      if(key == 'd'){
        direccion += 0.1;
      }
      
      if(key == 's'){
        x+= cos(direccion)*velocidad;
        y+= sin(direccion)*velocidad;
      }
    }
  }
  
  void colision(Particula p){
    float  distancia = dist(x,y,p.x, p.y);
    float sumaDeRadios = t + p.r;
    if(distancia<sumaDeRadios){
      println("collision!");
    }
    else{
      println();
    }
    
  }
  
}

Particula una;
Avatar elAvatar;
ArrayList <Particula> particulas;

void setup(){
  size(400,400);
  una = new Particula(100,100,50,color(255,0,0));
  particulas = new ArrayList<Particula>();
  
  for(int i = 0; i<10; i++){
    particulas.add(new Particula(random(400),random(400),random(10,50),color(random(255),random(255),random(255))));
  }
  elAvatar = new Avatar();
}

void draw(){
  background(255);
   una.display();
   una.mover(); 
   
   for(Particula p : particulas){
     p.display();
     p.mover();
     elAvatar.colision(p);
   }
   elAvatar.display();
   elAvatar.mover();
   
  
}

void mousePressed(){
  particulas.add(new Particula(mouseX,mouseY,random(10,50),color(random(255),random(255),random(255))));
}
