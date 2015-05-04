//Matthew Pritchard
//ISP V1
//April 2 2015
int boundaryy = 179;
int boundaryx = 75;
int[][] board = new int[200][350];
int [] xPos = new int[6];
int [] yPos = new int[6];
int rowCounter;
int colCounter;
int radius = 15, directionX = 1, directionY =0;
float x= 100, y=275, speed= 3;

void setup() {
  // Create a canvas with white background
  size(500, 500);
  background(150);

  //Start safe area
  rowCounter = 0; // start
  while (rowCounter < 200) { // end 
    colCounter = 0;//start
    while (colCounter < 70) {//end
      board[rowCounter][colCounter] = 7;
      colCounter += 1;
    }
    rowCounter += 1;
  }

  //Safe finish area

  rowCounter = 0;//start
  while (rowCounter < 200) {//end
    colCounter = 280;//start
    while (colCounter < 350) {//end
      board[rowCounter][colCounter] = 7;
      colCounter += 1;
    }
    rowCounter += 1;
  }

  //Player
   
  rowCounter = 90;//start
    while(rowCounter < 110){//end
      colCounter = 30;//start
        while(colCounter < 50){//end
          board[rowCounter][colCounter] = 3;
            colCounter += 1;
        }
      rowCounter += 1;
    }
    
  //Blocker
  rowCounter = 0;//start
    while(rowCounter < 20){//end
      colCounter = 110;//start
        while(colCounter < 130){//end
          board[rowCounter][colCounter] = 5;
            colCounter += 1;
        }
      rowCounter += 1;
    }
  
  //Blocker 2
  rowCounter = 0;//start
    while(rowCounter < 20){//end
      colCounter = 150;//start
        while(colCounter < 170){//end
          board[rowCounter][colCounter] = 5;
            colCounter += 1;
        }
      rowCounter += 1;
    }
  
}
//Blocker 3
{
  rowCounter = 0;//start
    while(rowCounter < 20){//end
      colCounter = 190;//start
        while(colCounter < 210){//end
          board[rowCounter][colCounter] = 5;
            colCounter += 1;
        }
      rowCounter += 1;
    }
  
}
//Blocker 4
{
  rowCounter = 0;//start
    while(rowCounter < 20){//end
      colCounter = 230;//start
        while(colCounter < 250){//end
          board[rowCounter][colCounter] = 5;
            colCounter += 1;
        }
      rowCounter += 1;
    }
  
}
//Blocker 5
{
  rowCounter = 179;//start
    while(rowCounter < 199){//end
      colCounter = 130;//start
        while(colCounter < 150){//end
          board[rowCounter][colCounter] = 5;
            colCounter += 1;
        }
      rowCounter += 1;
    }
  
}
//Blocker 6
{
  rowCounter = 179;//start
    while(rowCounter < 199){//end
      colCounter = 190;//start
        while(colCounter < 210){//end
          board[rowCounter][colCounter] = 5;
            colCounter += 1;
        }
      rowCounter += 1;
    }
  
}
//Blocker 6
{
  rowCounter = 179;//start
    while(rowCounter < 199){//end
      colCounter = 210;//start
        while(colCounter < 230){//end
          board[rowCounter][colCounter] = 5;
            colCounter += 1;
        }
      rowCounter += 1;
    }
  
}
//Key
{
  rowCounter = 5;//start
    while(rowCounter < 15){//end
      colCounter = 170;//start
        while(colCounter < 190){//end
          board[rowCounter][colCounter] = 9;
            colCounter += 1;
        }
      rowCounter += 1;
    }
  
}

//This function runs repeatedly.
void draw() {
  // Clear prior screen
  background(150);

  //deaths text
  textSize(32);
  text("deaths", 170, 30);
  fill(0, 102, 153);

  //leavel text
  textSize(32);
  text("Level", 340, 30);
  fill(0, 102, 153);

  //Reset 
  //Button does not work
  textSize(32);
  text("Reset", 25, 30);
  fill(0, 102, 153);

  //rectangle for leavel 1
  fill(190);
  rect(boundaryx, 175, 350, 200);

  //start
  noStroke();
  fill(300, 250, 100);
  rect(76, 176, 70, 199);
  stroke(0);

  //finish
  noStroke();
  fill(300, 250, 100);
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
      if (x < boundaryx + 5) {
        x = 79;
      }
      //}
    } else if (keyCode == RIGHT)
    {
      //if (directionX<0) {  
      directionX=1;
      directionY=0;
      if (x > boundaryx + 350 - 17) {
        x = boundaryx + 350 - 17;
      }
    } else if (keyCode == UP)
    {
      //if (directionY<0) {
      directionY=-1;
      directionX=0;
      if (y < boundaryy + 5) {
        y = 179;
      }
      //}
    } else if (keyCode == DOWN)
    {
      //if (directionY<0) { 
      directionY=1;
      directionX=0;
      println("y is: " + y);
      println("boundaryy is: " + boundaryy);
      if (y > boundaryy + 180 - 2) {
        y = boundaryy + 180 - 2;
        //}
      }
    }
  }
}
