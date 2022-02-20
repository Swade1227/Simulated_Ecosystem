Mover mover;
Rabbit rabbit;
Snake snake;
Carrot carrot;

void setup() {
  size(640,360);
  rabbit = new Rabbit();
  snake = new Snake();
  carrot = new Carrot();
}




void draw() {
  background(255);
  rabbit.update();
  rabbit.checkEdges();
  rabbit.display();
  carrot.update();
  carrot.checkEdges();
  carrot.display();
  snake.update();
  snake.checkEdges();
  snake.display();
}
