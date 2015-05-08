//Matthew Pritchard
//ISP V1
//April 2 2015

// Global constants
private static final int WALL = 2;
private static final int PLAYER = 3;
private static final int BLOCKER = 5;
private static final int SAFE_ZONE = 7;
private static final int KEY = 11;
private static final int OPEN_SPACE = 13;

private static final int PLAYER_WIDTH = 20;
private static final int PLAYER_HEIGHT = 20;


// Global Variables
int boundaryy = 179;
int boundaryx = 75;
int[][] board = new int[200][350];
int [] xPos = new int[6];
int [] yPos = new int[6];
int [] yFlip = new int[6];
int rowCounter;
int colCounter;
int radius = 15, directionX = 1, directionY =0;
// Player current position and speed
int playerX = 30, playerY = 90, playerSpeed = 3;
// blocker position and speeds
int blocker1Y = 0;
int blocker1YSpeed = 1;
int blocker2Y = 0;
int blocker2YSpeed = 1;
int blocker3Y = 0;
int blocker3YSpeed = 1;
int blocker4Y = 0;
int blocker4YSpeed = 1;
int blocker5Y = 178;
int blocker5YSpeed = -1;
int blocker6Y = 178;
int blocker6YSpeed = -1;
int blocker7Y = 178;
int blocker7YSpeed = -1;

void setup() {
  // Create a canvas with white background
  size(500, 500);
  background(150);



  // set color mode
  colorMode(HSB, 360, 100, 100);

  // for (int all = 0; all < 6; all++) {
  //   xPos[all] = 120 + 20 * all;
  //   if (all %2 == 0) {
  //     yPos[all] = 190;
  //     yFlip[all] = -1;
  //   } else {
  //     yPos [all] = 1; 
  //     yFlip[all] = 1;
  //   }
  // }

  //draw background
  rowCounter = 0; // start
  while (rowCounter < 200) { // end 
    colCounter = 0;//start
    while (colCounter < 350) {//end
      board[rowCounter][colCounter] = OPEN_SPACE;
      colCounter += 1;
    }
    rowCounter += 1;
  }

  //Start safe area
  rowCounter = 0; // start
  while (rowCounter < 200) { // end 
    colCounter = 0;//start
    while (colCounter < 70) {//end
      board[rowCounter][colCounter] = SAFE_ZONE * OPEN_SPACE;
      colCounter += 1;
    }
    rowCounter += 1;
  }

  //Safe finish area

  rowCounter = 0;//start
  while (rowCounter < 200) {//end
    colCounter = 280;//start
    while (colCounter < 350) {//end
      board[rowCounter][colCounter] = SAFE_ZONE * OPEN_SPACE;
      colCounter += 1;
    }
    rowCounter += 1;
  }

  //Player
  rowCounter = playerY;//start
  while (rowCounter < playerY + PLAYER_HEIGHT) {//end
    colCounter = playerX;//start
    while (colCounter < playerX + PLAYER_WIDTH) {//end
      board[rowCounter][colCounter] = PLAYER * OPEN_SPACE * SAFE_ZONE;
      colCounter += 1;
    }
    rowCounter += 1;
  }

  //Blocker
  rowCounter = 0;//start
  while (rowCounter < 20) {//end
    colCounter = 110;//start
    while (colCounter < 130) {//end
      board[rowCounter][colCounter] = BLOCKER * OPEN_SPACE;
      colCounter += 1;
    }
    rowCounter += 1;
  }

  //Blocker 2
  rowCounter = 0;//start
  while (rowCounter < 20) {//end
    colCounter = 150;//start
    while (colCounter < 170) {//end
      board[rowCounter][colCounter] = BLOCKER * OPEN_SPACE;
      colCounter += 1;
    }
    rowCounter += 1;
  }

  //Blocker 3
  rowCounter = 0;//start
  while (rowCounter < 20) {//end
    colCounter = 190;//start
    while (colCounter < 210) {//end
      board[rowCounter][colCounter] = BLOCKER * OPEN_SPACE;
      colCounter += 1;
    }
    rowCounter += 1;
  }

  //Blocker 4

  rowCounter = 0;//start
  while (rowCounter < 20) {//end
    colCounter = 230;//start
    while (colCounter < 250) {//end
      board[rowCounter][colCounter] = BLOCKER * OPEN_SPACE;
      colCounter += 1;
    }
    rowCounter += 1;
  }

  //Blocker 5

  rowCounter = 179;//start
  while (rowCounter < 200) {//end
    colCounter = 130;//start
    while (colCounter < 150) {//end
      board[rowCounter][colCounter] = BLOCKER * OPEN_SPACE;
      colCounter += 1;
    }
    rowCounter += 1;
  }

  //Blocker 6

  rowCounter = 179;//start
  while (rowCounter < 200) {//end
    colCounter = 170;//start
    while (colCounter < 190) {//end
      board[rowCounter][colCounter] = BLOCKER * OPEN_SPACE;
      colCounter += 1;
    }
    rowCounter += 1;
  }

  //Blocker 7

  rowCounter = 179;//start
  while (rowCounter < 200) {//end
    colCounter = 210;//start
    while (colCounter < 230) {//end
      board[rowCounter][colCounter] = BLOCKER * OPEN_SPACE;
      colCounter += 1;
    }
    rowCounter += 1;
  }

  //Key
  rowCounter = 5;//start
  while (rowCounter < 15) {//end
    colCounter = 170;//start
    while (colCounter < 190) {//end
      board[rowCounter][colCounter] = KEY * OPEN_SPACE;
      colCounter += 1;
    }
    rowCounter += 1;
  }
} // END OF SETUP

//This function runs repeatedly.
void draw() {
  // Clear prior screen
  background(150);



  //Blocker 
  // moving down
  // add to bottom
  moveBlocker(110, blocker1YSpeed, blocker1Y);
  moveBlocker(150, blocker2YSpeed, blocker2Y);
  moveBlocker(190, blocker3YSpeed, blocker3Y);
  moveBlocker(230, blocker4YSpeed, blocker4Y);
  moveBlocker(130, blocker5YSpeed, blocker5Y);
  moveBlocker(170, blocker6YSpeed, blocker6Y);
  moveBlocker(210, blocker7YSpeed, blocker7Y);


  //update blocker 1 vertical position
  //update acording to speed
  blocker1Y = blocker1Y + blocker1YSpeed;
  // println(blocker1Y);
  if (blocker1Y > (158 + 20) || blocker1Y < (0)) {
    blocker1Y = blocker1Y - blocker1YSpeed;
    blocker1YSpeed = blocker1YSpeed * -1;
    println("Change Direction");
  }

  //update blocker 2 vertical position
  //update acording to speed
  blocker2Y = blocker2Y + blocker2YSpeed;
  // println(blocker2Y);
  if (blocker2Y > (158 + 20) || blocker2Y < (0)) {
    blocker2Y = blocker2Y - blocker2YSpeed;
    blocker2YSpeed = blocker2YSpeed * -1;
    println("Change Direction");
  }
  //update blocker 3 vertical position
  //update acording to speed
  blocker3Y = blocker3Y + blocker3YSpeed;
  // println(blocker3Y);
  if (blocker3Y > (158 + 20) || blocker3Y < (0)) {
    blocker3Y = blocker3Y - blocker3YSpeed;
    blocker3YSpeed = blocker3YSpeed * -1;
    println("Change Direction");
  }
  //update blocker 4 vertical position
  //update acording to speed
  blocker4Y = blocker4Y + blocker4YSpeed;
  // println(blocker4Y);
  if (blocker4Y > (158 + 20) || blocker4Y < (0)) {
    blocker4Y = blocker4Y - blocker4YSpeed;
    blocker4YSpeed = blocker4YSpeed * -1;
    println("Change Direction");
  }
  //update blocker 5 vertical position
  //update acording to speed


  blocker5Y = blocker5Y + blocker5YSpeed;
  // println(blocker5Y);
  if (blocker5Y > (158 + 20) || blocker5Y < (0)) {
    blocker5Y = blocker5Y - blocker5YSpeed;
    blocker5YSpeed = blocker5YSpeed * -1;
    println("Change Direction");
  }

  blocker6Y = blocker6Y + blocker6YSpeed;
  // println(blocker5Y);
  if (blocker6Y > (158 + 20) || blocker6Y < (0)) {
    blocker6Y = blocker6Y - blocker6YSpeed;
    blocker6YSpeed = blocker6YSpeed * -1;
    println("Change Direction");
  }
  blocker7Y = blocker7Y + blocker7YSpeed;
  // println(blocker5Y);
  if (blocker7Y > (158 + 20) || blocker7Y < (0)) {
    blocker7Y = blocker7Y - blocker7YSpeed;
    blocker7YSpeed = blocker7YSpeed * -1;
    println("Change Direction");
  }

  //Draws board
  loadPixels();  
  // Loop through every pixel column
  for (int column = 75; column < width - 75; column++) {
    // Loop through every pixel row
    for (int row = 150; row < height - 150; row++) {

      // Use the formula to find the 1D location
      int loc = column + row * width;

      // Draw the board 
      if (board[row - 150][column - 75] == PLAYER || board[row - 150][column - 75] == PLAYER * OPEN_SPACE * SAFE_ZONE) { // player
        pixels[loc] = color(0, 80, 90);//red
      } else if (board[row - 150][column - 75] == SAFE_ZONE * OPEN_SPACE) { // safe area 
        pixels[loc] = color(60, 80, 90);
      } else if (board[row - 150][column - 75] == BLOCKER * OPEN_SPACE || board[row - 150][column - 75] == BLOCKER * KEY * OPEN_SPACE) { // Blocker
        pixels[loc] = color(240, 80, 90);
      } else if (board[row - 150][column - 75] == KEY * OPEN_SPACE) { // key
        pixels[loc] = color(30, 80, 90);
      } else {          
        pixels[loc] = color(0);
      }
    }
  }
  updatePixels();
}



void keyPressed()
{
  //    if (key == CODED)
  {
    if (keyCode == LEFT)
    {
    } else if (keyCode == RIGHT)
    {
    } else if (keyCode == UP)
    {  
      //Moving up
      playerY -= 1;

      // add at bottom
      // println("moving down");
      int row = playerY + PLAYER_HEIGHT - 1;//start
      int col = playerX;
      while (col < playerX + PLAYER_WIDTH) {//end
        board[row][col] = board[row][col] / PLAYER;
        col += 1;
      }
      // clear at top
      row = playerY;//start
      col = playerX;
      while (col < playerX + PLAYER_WIDTH) {//end
        board[row][col] = board[row][col] * PLAYER;
        col += 1;
      }
    } else if (keyCode == DOWN)
    {


      //Updete players position
      playerY += 1;

      // add at bottom
      // println("moving down");
      int row = playerY + PLAYER_HEIGHT + 1;//start
      int col = playerX;
      while (col < playerX + PLAYER_WIDTH) {//end
        board[row][col] = board[row][col] * PLAYER;
        col += 1;
      }
      // clear at top
      row = playerY;//start
      col = playerX;
      while (col < playerX + PLAYER_WIDTH) {//end
        board[row][col] = board[row][col] / PLAYER;
        col += 1;
      }
    }
  }
}


// PURPOSE: move a blocker on the screen – currently supports moving up and down
void moveBlocker(int colStart, int ySpeed, int y) {

  int row = 0;
  int col = 0; 

  // make the block move
  // down
  if (ySpeed > 0) {
    // add at bottom
    // println("moving down");
    row = y + 21;//start
    col = colStart;
    while (col < colStart + 20) {//end
      board[row][col] = board[row][col] * BLOCKER;
      col += 1;
    }
    // clear at top
    row = y;//start
    col = colStart;
    println(y);
    while (col < colStart + 20) {//end
      board[row][col] = board[row][col] / BLOCKER;
      col += 1;
    }
  } else { // moving up
    //println("moving up");

    // clear at bottom
    row = y + 21;//start
    col = colStart;
    while (col < colStart + 20) {//end
      board[row][col] = board[row][col] / BLOCKER;
      col += 1;
    }
    // add at top
    row = y;//start
    col = colStart;
    println(y);
    while (col < colStart + 20) {//end
      board[row][col] = board[row][col] * BLOCKER;
      col += 1;
    }
  }
}
