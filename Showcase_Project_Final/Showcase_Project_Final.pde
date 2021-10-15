Ball b;
Target t;
String text;



void setup() {
  size(400, 600);
  b = new Ball();
  t = new Target();
  text = "Press 'g' to start";
 
  
}

void draw() {
  background(255);
  b.draw();
  textSize(20);
  fill(0);
  textAlign(CENTER,CENTER);
  text(text, width/2,height/2);
  
  
}
