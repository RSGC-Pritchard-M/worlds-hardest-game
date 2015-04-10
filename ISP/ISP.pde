//Matthew Pritchard
//ISP V1
//April 2 2015

int radius = 15, directionX = 1, directionY =0;
float x= 115, y=275, speed= 0.5;
void setup() {
  // Create a canvas with white background
  size(500, 500);
  background(150);
}

//This function runs repeatedly.
void draw() {
  // Clear prior screen
  background(150);
  //rectangle for leavel 1
  fill(190);
  rect(75, 175, 350, 200);
  

  x=x+speed*directionX;
  y=y+speed*directionY; 
  // check boundaries
  if ((x>width-radius) || (x<radius))
  {   
    directionX=-directionX;
  }
  if ((y>height-radius) || (y<radius))
  {   
    directionY=-directionY;
  } 
  // draw
  // if(direction==1)
  // rect(x, y, 20, 20);
  fill (color(222, 22, 22)); 
  rect (x, y, radius, radius);    // body
}
// =========================================================
void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == LEFT)
    {
      //if (directionX>0) { 
      directionX=-1;
      directionY=0;
      //}
    } else if (keyCode == RIGHT)
    {
      //if (directionX<0) {  
      directionX=1;
      directionY=0;
      //}
    } else if (keyCode == UP)
    {
      //if (directionY<0) {
      directionY=-1;
      directionX=0;
      //}
    } else if (keyCode == DOWN)
    {
      //if (directionY<0) { 
      directionY=1;
      directionX=0;
      //}
    }
  }
}


//need to figure this piese out
