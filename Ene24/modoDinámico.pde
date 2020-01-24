//head
float posicionHorizontal;
float posicionVert;
float tamano;

//setup: condiciones de inicio;
void setup(){
  size(400,400);  
  posicionHorizontal = width/2;//ceil(random(20,300));
  tamano = random(20,100); 
  posicionVert = random(20,300);
  background(255);
}

//draw: se ejecuta una y otra vez 
void draw(){ 
  background(255);
  posicionHorizontal = posicionHorizontal - 0.4;
  ellipseMode(CORNER);
  noStroke();
  fill(random(255),random(255),random(255));
  ellipse(posicionHorizontal,posicionVert,tamano,tamano);
  fill(random(255),random(255),random(255));
  rect(posicionHorizontal,posicionVert+tamano,tamano,tamano);
}
