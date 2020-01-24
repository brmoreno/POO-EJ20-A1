// se repite un dato; no sé el valor del dato; el dato va a cambiar su valor 
int posicionHorizontal;
float posicionVert;
float tamano;
posicionHorizontal = ceil(random(20,300));
tamano = random(20,100); 
posicionVert = random(20,300);
size(400,400);
background(255);
ellipseMode(CORNER);
fill(random(255),random(255),random(255));
ellipse(posicionHorizontal,posicionVert,tamano,tamano);
fill(random(255),random(255),random(255));
rect(posicionHorizontal,posicionVert+tamano,tamano,tamano);
