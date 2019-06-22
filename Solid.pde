class Solid {
  float x;
  float y;
  float w;
  float h;

  Solid() {
    x = random(width);
    y = random(height);
    w = random(30, 60);
    h = random(30, 60);
  }

  Solid(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void update() {
  }

  void draw() {
    rect(x, y, w, h);
  }
}
