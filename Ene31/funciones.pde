//head
float posicionHorizontal;
float posicionVert;
float tamano;
float delta;

//setup: condiciones de inicio;
void setup(){
  size(400,400);  
  posicionHorizontal = 0;//ceil(random(20,300));
  tamano = random(20,100); 
  posicionVert = random(20,300);
  background(255);
  delta = 2;
}

//draw: se ejecuta una y otra vez 
void draw(){ 
  if(posicionHorizontal > width - tamano){
    println("el mono se salió de la pantalla");
    delta = -2;
  }
  if(posicionHorizontal < 0){
    delta = 2;
  }
 
  posicionHorizontal = posicionHorizontal + delta;
  dibujaMono(posicionHorizontal,posicionVert,tamano);
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
