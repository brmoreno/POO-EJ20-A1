class MonoConSombrero{
  //atributos
  float tamano;
  float dx,dy;
  float x,y;
  float r,g,b;
  
  //metodos
  MonoConSombrero(){
    tamano = random(10,50);
    dx = random(-1,1);
    dy = random(-1,1);
    x = random(400);
    y= random(400);
    r = random(255);
    g= random(255);
    b = random(255);
  }
  
  MonoConSombrero(float t_,float x_, float y_, float r_, float g_, float b_, float dx_, float dy_){
    tamano = t_;
    x = x_;
    y = y_;
    r = r_;
    g = g_;
    b = b_;
    dx = dx_;
    dy = dy_;
  }
  
  void mover(){
    x +=dx;
    y += dy;
  }
  
  void display(){
    float altura = conAltura(tamano);
    fill(r,g,b);
    noStroke();
    triangle(x+(tamano/2),y,x,y+altura,x+tamano,y+altura);
    ellipseMode(CORNER);
    ellipse(x,y+altura,tamano,tamano);
    rect(x,y+altura+tamano,tamano,tamano);
  }
  
  float conAltura(float t_){
  float altura = sqrt(sq(t_)-sq(t_/2));
  return(altura);
}  
}

MonoConSombrero uno; 
MonoConSombrero otro; 
MonoConSombrero aquel;

void setup(){
  size(400,400);
  uno = new MonoConSombrero();
  otro = new MonoConSombrero();
  aquel = new MonoConSombrero(30,200,200,255,0,0,1,0);
}
void draw(){
  background(255);
  uno.display();
  uno.mover();
  otro.mover();
  otro.display();
  aquel.display();
  aquel.mover();
}
