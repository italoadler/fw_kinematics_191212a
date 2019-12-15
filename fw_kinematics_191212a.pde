Segment seg;
Segment seg2;
void setup() {
  size(600, 400);
  seg = new Segment(300, 200, 100, radians(90));
  seg2 = new Segment(seg, 10, radians(-PI/4));
}

void draw() {

  background(51);
  seg.update();
  seg.show();

  seg2.update();
  seg2.show();
}
