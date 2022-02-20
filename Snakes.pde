class Snake extends Mover {
  
  Snake() {
    location = new PVector(width/2 + random(100),height/2 + random(100));
    velocity = new PVector(0,0);
    acceleration = new PVector(-0.002, 0.002);
    velocity.limit(0.5);
    acceleration.limit(0.007);
  }
  
  
  void update(){
    if (keyPressed) {
    if (keyCode == UP) {
      PVector wind = new PVector(0.001,0);
      applyForce(wind);
    } else if (keyCode == DOWN) {
      PVector wind = new PVector(-0.001,0);
      applyForce(wind);
    }
   }
     velocity.add(acceleration);
     location.add(velocity);
  }
  
  
  void display() {
    stroke(0);
    fill(300);
    ellipse(location.x,location.y,16,16);
  }
  
  void checkEdges() {
    if (location.x > width - 8) {
      PVector temp = new PVector(width - 9, location.y);
      velocity.x = 0;
      location = temp;
    } else if (location.x < 8) {
      PVector temp = new PVector(9, location.y);
      velocity.x = 0;
      location = temp;
    }
 
    if (location.y > height - 8) {
      PVector temp = new PVector(location.x, height - 9);
      velocity.y = 0;
      location = temp;
    } else if (location.y < 8) {
      PVector temp = new PVector(location.x, 9);
      velocity.y = 0;
      location = temp;
    }
  }
  
}
