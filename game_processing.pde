float gravity = 0.01;
Player p;
float size = 5;
//grid[][]
ArrayList<Solid> solids = new ArrayList<Solid>();
Solid s;

int len = 0;
void setup() {
  size(800, 600);
  p = new Player();
  for(int i = 0; i < 100; i++){
    solids.add(new Solid());
  }
  background(0);
}

void draw() {

  background(0);
  //rotate(PI);
 // rectMode(CENTER);
 
  for (int i = 0; i < solids.size(); i++) {
    Solid s = solids.get(i);
    s.draw();
  }
  p.update();
  p.draw();
}
void keyReleased() {
  if (key == 'd' || key == 'D' || keyCode == RIGHT) {
    p.right = 0;
  }
  if (key == 'a' || key == 'A' || keyCode == LEFT) {
    p.left = 0;
  }
}
void keyPressed() {
  if (key == 'd' || key == 'D' || keyCode == RIGHT) {
    p.right = 1;
  }
  if (key == 'a' || key == 'A' || keyCode == LEFT) {
    p.left = 1;
  }

  if (key == 'w' || key == 'W' || keyCode == UP) {
    p.jump();
  }
}


void mousePressed() {
  if (mouseButton == LEFT) {
    solids.add(new Solid(mouseX, mouseY, 30, 30));
  }

  if (mouseButton == RIGHT) {
    Solid s = solids.get(0);
    solids.remove(s);
  }
}
