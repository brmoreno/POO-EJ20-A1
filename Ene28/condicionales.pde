int colorDerecho;
int colorIzquierdo;

void setup(){
  size(400,400);
  
}

void draw(){
  background(255);
  println(mouseX);
  
  // saber de que lado de la pantalla estoy 
  if(mouseX<width/2){
    colorIzquierdo = 0;
    colorDerecho = 255;
  }
  else if(mouseX == width/2){
    colorIzquierdo = 255;
    colorDerecho = 255;
  }
  else{
   colorIzquierdo = 255;
   colorDerecho = 0;
  }
  
  fill(colorIzquierdo);
  rect(0,0,200,400);
  fill(colorDerecho);
  rect(200,0,200,400);
}
