Segment tentacle;
//Segment seg2;
void setup()  {
  size(600, 400);
  tentacle = new Segment(width/2, height/2, 100, radians(90));
  Segment current = tentacle;
  for(int i = 0; i < 2; i++) {
       
        if( i == 2) {
          Segment next = new Segment(current,20 , 0);
        } else {
       Segment next = new Segment(current,100 , 0);

       current.child = next;
       current = next; 
        }
  }
  //seg2 = new Segment(seg, 100, radians(45));
}

void draw() {

  background(51);
  stroke(255);
  Segment next = tentacle; 
  while(next != null) {
     next.wiggle();
     next.update(); 
     next.show();
     next = next.child;
  }

  
  //stroke(255,100,100);
  //seg.wiggle();
  //seg.update();
  //seg.show();
  
  //stroke(255,255,100);
  //seg2.wiggle();
  //seg2.update();
  //seg2.show();
}
