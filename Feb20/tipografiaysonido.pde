import processing.sound.*;

PFont fuente;
PFont typo;
String s;

SoundFile cancion;

void setup(){
  size(400,400);
  fuente = createFont("Arial",40);
  typo = loadFont("AmericanTypewriter-48.vlw");
  s = "foo bar baz qux";
  cancion = new SoundFile(this, "paris.mp3" );
  cancion.loop();
}

void draw(){
  background(255);
  fill(random(255),0,0);
  textFont(typo);
  text("foo bar baz qux", mouseX,30);
  textFont(fuente);
  fill(0);
  text(s , 30, 80);
  cancion.amp(map(mouseX,0,400,0,1));
  cancion.rate(map(mouseY,0,400,0,4));
}

void mousePressed(){
  s = "otra cosa";
}
