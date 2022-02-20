class Rabbit extends Mover {
  
  Rabbit() {
    location = new PVector(width/2 + random(100),height/2 + random(100));
    velocity = new PVector(0,0);
    acceleration = new PVector(0.003, 0.03);
    velocity.limit(1);
  }
  
  
  void update(){
   velocity.add(acceleration);
   location.add(velocity);
  }
  
  
  void display() {
    stroke(0);
    fill(150);
    ellipse(location.x,location.y,16,16);
  }
  
  void checkEdges() {
    if (location.x > width - 8) {
      velocity.x = velocity.x * -1;
      acceleration.x = acceleration.x * -1;
    } else if (location.x < 0) {
      velocity.x = velocity.x * -1;
      acceleration.x = acceleration.x * -1;
    }
 
    if (location.y > height - 8) {
      velocity.y = velocity.y * -1;
      acceleration.y = acceleration.y * -1;
    } else if (location.y < 8) {
      velocity.y = velocity.y * -1;
      acceleration.y = acceleration.y * -1;
    }
  }
  
}
