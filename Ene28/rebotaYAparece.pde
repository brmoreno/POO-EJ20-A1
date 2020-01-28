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
  /*
  if(posicionHorizontal > width){
    println("el mono se salió de la pantalla");
    tamano = random(20,100); 
    posicionVert = random(20,300);
    posicionHorizontal = -tamano;
  }
  */
  if(posicionHorizontal > width - tamano){
    println("el mono se salió de la pantalla");
    delta = -2;
  }
  if(posicionHorizontal < 0){
    delta = 2;
  }
  
  
  //background(255);
  posicionHorizontal = posicionHorizontal + delta;
  ellipseMode(CORNER);
  noStroke();
  fill(random(255),random(255),random(255));
  ellipse(posicionHorizontal,posicionVert,tamano,tamano);
  fill(random(255),random(255),random(255));
  rect(posicionHorizontal,posicionVert+tamano,tamano,tamano);
}
