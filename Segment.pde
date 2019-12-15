class Segment {
   PVector a; 
   float len; 
   float angle;    

   Segment parent; 
   PVector b;
 
   
    Segment(Segment parent_, float len_, float angle_) {
     parent = parent_;
     // a = new PVector(parent.b.x, parent.b.y);  
     a = parent.b.copy();  
      len = len_;
      angle = angle_; 
      calculateB();
    
   }
   
     Segment(float x, float y, float len_, float angle_) {
      a = new PVector(x,y);  
      len = len_;
      angle = angle_; 
      calculateB();
      parent = null;
   } 
   void update() {
     if( parent != null ) {
      a = parent.b.copy(); 
     }
     
     angle = angle + 0.01;
     calculateB(); 
     
   }
   
   void calculateB() {
     float dx = len * cos(angle);
     float dy = len * sin(angle); 
     b = new PVector(a.x+dx,  a.y+dy); 
   }
   
   void show() {
    stroke(255,0,0);
    strokeWeight(2);
    line(a.x,a.y,b.x,b.y); 
   }
}
