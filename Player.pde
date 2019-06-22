class Player {
  float x;
  float y;
  int right;
  int left;
  float jumpStrengh;
  float yspeed;
  float yacc;
  float w = 30;
  float h = 30;
  boolean colide = false;
  Player() {
    x = 9;
    y = 9;
    jumpStrengh = 1;
    right = 0;
    left = 0;
    yspeed = 0;
  }

  void draw() {
    rect(mouseX, mouseY, w, h);
  }
  void update() {

    Solid first = new Solid();
    for (int i = 0; i < solids.size(); i++) {
      Solid s = solids.get(i);
      colide = checkCollision(s);
      if (colide) {
        first = s;
        
        print("colide", first.x, first.y);

        i =  solids.size();
      }
    }

    if (!colide) {
      if (y < height) {
        yacc += gravity;
      }
    } else {
      this.y = first.y-this.h;
      yacc = 0;
    }
    if (p.right == 1) {
      p.x+= 1;
    }
    if (p.left == 1) {
      p.x-= 1;
    }
    yspeed += yacc;
    y += yspeed;
  }


  void jump() {
    yacc = -jumpStrengh;
  }

  boolean checkCollision(Solid s) {
    //edges
    //1 - (x,y)
    //2 - (x+w,y)
    //3 - (x+w, y+h)
    //4 - (x, y+h)
    float offset = 20;
    if (this.y+this.h <= s.y && this.y+this.h+offset >= s.y) {
      if ( this.x+this.w > s.x && this.x+this.w < s.x + s.w) {

        return true;
      } else if ( this.x > s.x && this.x < s.x + s.w) {

        return true;
      }
    }

    return false;
  }
}
