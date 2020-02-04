//
int posX;
int posY;
float colorDeRelleno[] = new float[500];
float x[] = new float[500];
float y[] = new float[500];
float w[] = new float[500];
float h[] = new float[500]; 
float dx[] = new float[500]; 
float dy[] = new float[500]; 


void setup(){
  size(400,400);
  
  for(int i= 0; i<500; i++){
    colorDeRelleno[i] = random(255);
    x[i] = random(400);
    y[i] = random(400);
    w[i] = random(10,100);
    h[i] = random(10,100);
    dx[i] = random(-1,1);
    dy[i] = random(-1,1);
  }
  posY = height/2;
  posX = width/2;
}

void draw(){   
  background(255);
  for(int i = 0; i<x.length;i++ ){
    noStroke();
    x[i] += dx[i];
    y[i] += dy[i];
    fill(colorDeRelleno[i]);
    dibujaMono(x[i],y[i],w[i]);
  }
  fill(255,0,0);
  dibujaMono(posX,posY,30);
}


void keyPressed(){
    switch(key){
      case 'w':
        posY--;
      break;
      case 's':
        posY++;
      break;
       case 'a':
        posX--;
      break;
      case 'd':
        posX++;
      break;
    } 
}

void dibujaMono(float x_, float y_, float t_){
  float altura = conAltura(t_);
  triangle(x_+(t_/2),y_,x_,y_+altura,x_+t_,y_+altura);
  ellipseMode(CORNER);
  ellipse(x_,y_+altura,t_,t_);
  rect(x_,y_+altura+t_,t_,t_);
}

float conAltura(float t_){
  float altura = sqrt(sq(t_)-sq(t_/2));
  return(altura);
}
