//Matthew Pritchard
//ISP V1
//April 2 2015

int radius = 15, directionX = 1, directionY =0;
float x= 100, y=275, speed= 3;
void setup() {
  // Create a canvas with white background
  size(500, 500);
  background(150);

}

//This function runs repeatedly.
void draw() {
  // Clear prior screen
  background(150);
  
  //deaths text
  textSize(32);
  text("deaths",170, 30);
  fill(0, 102, 153);
  
  //leavel text
  textSize(32);
  text("Level",340, 30);
  fill(0, 102, 153);
  
  //Reset 
  //Button does not work
   textSize(32);
  text("Reset",25, 30);
  fill(0, 102, 153);
  
  //rectangle for leavel 1
  fill(190);
  rect(75, 175, 350, 200);
  
  //start
  noStroke();
  fill(300,250,100);
  rect(76, 176, 70, 199);
  stroke(0);
  
  //finish
  noStroke();
  fill(300,250,100);
  rect(355, 176, 70, 199);
  stroke(0);
  //
  x=x+speed*directionX;
  y=y+speed*directionY;
  
  directionX=0;
  directionY=0;


  noStroke();
  fill (color(222, 22, 22)); 
  rect (x, y, radius, radius); 
  stroke(0);
 
}
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
