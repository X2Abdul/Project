class Ball {
  int ballColour;
  float ballSize;
  float xPos;
  float yPos;
  PVector position;
  PVector velocity;
  boolean click;
  Ball() {
    ballSize = 30;
    ballColour = color(random(255),random(255),random(255));
    xPos = width;
    yPos = height;
    position =  new PVector(random(400), random(500,600));
    velocity = new PVector(3, 3);
  }
  void draw() {

   
    fill (ballColour);
    
    circle (position.x, position.y, ballSize);
    if (key == 'g'){
    position.x = position.x + velocity.x;
    position.y = position.y + velocity.y;
    }
    else if (key == 's'){
    position.x = position.x;
    }
    if (position.x - ballSize < 0 && velocity.x < 0)
    {
      // Escaping to the left, start moving right.
      velocity.x = -1*velocity.x;
      background(255,0,0);
    } else if (position.x + ballSize > width && velocity.x > 0)
    {
      // Escaping to the right, start moving left.
      velocity.x = -1*velocity.x;
      background(0,255,0);
    }

    if (position.y - ballSize < 0 && velocity.y < 0)
    {
      // Escaping upwards, start moving down.
      velocity.y = -1*velocity.y;
      background(0,0,255);
    } else if (position.y + ballSize > height && velocity.y > 0)
    {
      // Escaping downwards, start moving up.
      velocity.y = -1*velocity.y;
      background(#F1FA05);
    }
 
  }
  

}
