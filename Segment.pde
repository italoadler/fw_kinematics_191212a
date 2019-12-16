class Segment {
   PVector a; 
   float len; 
   float angle;    
   float selfAngle;
   Segment parent = null; 
   Segment child = null;
   PVector b;
   
   float xoff = 0;
 
   
   Segment(Segment parent_, float len_, float angle_) {
     parent = parent_;
     // a = new PVector(parent.b.x, parent.b.y);  
     a = parent.b.copy();  
     len = len_;
     angle = angle_; 
     selfAngle = angle;
     calculateB();
    
   }
   
   Segment(float x, float y, float len_, float angle_) {
      a = new PVector(x,y);  
      len = len_;
      angle = angle_; 
      calculateB();
      parent = null;
   } 
   
   void wiggle() {
     float maxangle = PI/2;
     float minangle = -PI/2;
     selfAngle -= 0.01;
     selfAngle = map(sin(xoff),-1,1,maxangle,minangle);
     xoff += 0.03;
   }
   void update() {
     angle = selfAngle;
     if( parent != null ) {
      a = parent.b.copy(); 
      angle += parent.angle;
     } else {
       angle += PI/2; 
     }
    
     calculateB(); 
     
   }
   
   void calculateB() {
     float dx = len * cos(angle);
     float dy = len * sin(angle); 
     b = new PVector(a.x+dx,  a.y+dy); 
   
   }
   
   void show() {
    //stroke(255,0,0);
    strokeWeight(2);
    line(a.x,a.y,b.x,b.y); 
   }
}
