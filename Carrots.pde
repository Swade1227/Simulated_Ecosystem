class Carrot extends Mover {
  
  Carrot() {
    location = new PVector(width/2 + random(100),height/2 + random(100));
    velocity = new PVector(0,0);
    acceleration = new PVector(-0.000, 0.00);
    velocity.limit(0);
  }
  
  
  void update(){
   velocity.add(acceleration);
   location.add(velocity);
  }
  
  void display() {
    stroke(0);
    fill(100);
    ellipse(location.x,location.y,16,16);
  }
  
  void checkEdges() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
 
    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
  
}
