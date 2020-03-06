import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.* ;
import org.jbox2d.dynamics.* ;

Box2DProcessing mundo;
Caja una;
Limite suelo;
ArrayList <Caja> cajas;

void setup(){
  size(400,400);
  mundo = new Box2DProcessing(this);
  mundo.createWorld();
  una = new Caja(200,30,20,10);
  cajas = new ArrayList<Caja>();
  suelo = new Limite(200,380,400,20);
}

void draw(){
  background(255);
  mundo.step();
  una.display();
  for(Caja c:cajas){
    c.display();
  }
  suelo.display();
}

void mousePressed(){
  cajas.add(new Caja(mouseX,mouseY,random(5,10),random(5,10)));
}
