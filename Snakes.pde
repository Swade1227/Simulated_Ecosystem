class Snake extends Mover {
  
  Snake() {
    location = new PVector(width/2 + random(100),height/2 + random(100));
    velocity = new PVector(0,0);
    acceleration = new PVector(-0.002, 0.02);
    velocity.limit(1);
  }
  
  
  void update(){
   velocity.add(acceleration);
   location.add(velocity);
  }
  
  void display() {
    stroke(0);
    fill(300);
    ellipse(location.x,location.y,16,16);
  }
  
  void checkEdges() {
    if (location.x > width) {
      velocity.x = velocity.x * -1;
      acceleration.x = acceleration.x * -1;
    } else if (location.x < 0) {
      velocity.x = velocity.x * -1;
      acceleration.x = acceleration.x * -1;
    }
 
    if (location.y > height) {
      velocity.y = velocity.y * -1;
      acceleration.y = acceleration.y * -1;
    } else if (location.y < 0) {
      velocity.y = velocity.y * -1;
      acceleration.y = acceleration.y * -1;
    }
  }
  
}
