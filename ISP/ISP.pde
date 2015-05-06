//Matthew Pritchard
//ISP V1
//April 2 2015
int boundaryy = 179;
int boundaryx = 75;
int[][] board = new int[200][350];
int [] xPos = new int[6];
int [] yPos = new int[6];
int [] yFlip = new int[6];
int rowCounter;
int colCounter;
int radius = 15, directionX = 1, directionY =0;
float x= 100, y=275, speed= 3;
int blocker1Y = 0;
int blocker1YSpeed = 1;

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
  while (rowCounter < 110) {//end
    colCounter = 30;//start
    while (colCounter < 50) {//end
      board[rowCounter][colCounter] = 3;
      colCounter += 1;
    }
    rowCounter += 1;
  }

  //Blocker
  rowCounter = 0;//start
  while (rowCounter < 20) {//end
    colCounter = 110;//start
    while (colCounter < 130) {//end
      board[rowCounter][colCounter] = 5;
      colCounter += 1;
    }
    rowCounter += 1;
  }

  //Blocker 2
  rowCounter = 0;//start
  while (rowCounter < 20) {//end
    colCounter = 150;//start
    while (colCounter < 170) {//end
      board[rowCounter][colCounter] = 5;
      colCounter += 1;
    }
    rowCounter += 1;
  }

  //Blocker 3
  rowCounter = 0;//start
  while (rowCounter < 20) {//end
    colCounter = 190;//start
    while (colCounter < 210) {//end
      board[rowCounter][colCounter] = 5;
      colCounter += 1;
    }
    rowCounter += 1;
  }

  //Blocker 4

  rowCounter = 0;//start
  while (rowCounter < 20) {//end
    colCounter = 230;//start
    while (colCounter < 250) {//end
      board[rowCounter][colCounter] = 5;
      colCounter += 1;
    }
    rowCounter += 1;
  }

  //Blocker 5

  rowCounter = 179;//start
  while (rowCounter < 200) {//end
    colCounter = 130;//start
    while (colCounter < 150) {//end
      board[rowCounter][colCounter] = 5;
      colCounter += 1;
    }
    rowCounter += 1;
  }

  //Blocker 6

  rowCounter = 179;//start
  while (rowCounter < 200) {//end
    colCounter = 170;//start
    while (colCounter < 190) {//end
      board[rowCounter][colCounter] = 5;
      colCounter += 1;
    }
    rowCounter += 1;
  }

  //Blocker 7

  rowCounter = 179;//start
  while (rowCounter < 200) {//end
    colCounter = 210;//start
    while (colCounter < 230) {//end
      board[rowCounter][colCounter] = 5;
      colCounter += 1;
    }
    rowCounter += 1;
  }

  //Key
  rowCounter = 5;//start
  while (rowCounter < 15) {//end
    colCounter = 170;//start
    while (colCounter < 190) {//end
      board[rowCounter][colCounter] = 9;
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

  // make the block move
  if (blocker1Y > 0) {
    rowCounter = 20 + blocker1Y;//start
    colCounter = 110;
    while (colCounter < 130) {//end
      board[rowCounter][colCounter] = 5;
      colCounter += 1;
    }
    // clear at top
    rowCounter = blocker1Y;//start
    colCounter = 110;
    println(blocker1Y);
    while (colCounter < 130) {//end
      board[rowCounter][colCounter] = 0;
      colCounter += 1;
    }
  } else {
    rowCounter = 20 + blocker1Y;//start
    colCounter = 110;
    while (colCounter < 130) {//end
      board[rowCounter][colCounter] = 0;
      colCounter += 1;
    }
    // clear at top
    rowCounter = blocker1Y;//start
    colCounter = 110;
    println(blocker1Y);
    while (colCounter < 130) {//end
      board[rowCounter][colCounter] = 5;
      colCounter += 1;
    }
    
  }
  //update blocker 1 vertical position
  //update acording to speed
  blocker1Y = blocker1Y + blocker1YSpeed;
  // println(blocker1Y);
  if (blocker1Y > (158 + 20) || blocker1Y < (0)) {
    blocker1Y = blocker1Y - blocker1YSpeed;
    blocker1YSpeed = blocker1YSpeed * -1;
    println("Change Direction");
  }

  //END 1
  /*
    //Start 2
   rowCounter = 19 + frameCount;//start
   colCounter = 150;
   while (colCounter < 170) {//end
   board[rowCounter][colCounter] = 5;
   colCounter += 1;
   }
   // clear at top
   rowCounter = -1 + frameCount;//start
   colCounter = 150;
   while (colCounter < 170) {//end
   board[rowCounter][colCounter] = 0;
   colCounter += 1;
   }
   //End 2
   
   //Start 3
   rowCounter = 19 + frameCount;//start
   colCounter = 190;
   while (colCounter < 210) {//end
   board[rowCounter][colCounter] = 5;
   colCounter += 1;
   }
   // clear at top
   rowCounter = -1 + frameCount;//start
   colCounter = 190;
   while (colCounter < 210) {//end
   board[rowCounter][colCounter] = 0;
   colCounter += 1;
   }
   //END 3
   
   //Start 4
   rowCounter = 19 + frameCount;//start
   colCounter = 230;
   while (colCounter < 250) {//end
   board[rowCounter][colCounter] = 5;
   colCounter += 1;
   }
   // clear at top
   rowCounter = -1 + frameCount;//start
   colCounter = 230;
   while (colCounter < 250) {//end
   board[rowCounter][colCounter] = 0;
   colCounter += 1;
   }
   //END 4
   
   //Start 5
   rowCounter = 200 - frameCount;//start
   colCounter = 130;
   while (colCounter < 150) {//end
   board[rowCounter][colCounter] = 5;
   colCounter += 1;
   }
   // clear at top
   rowCounter = 200 - frameCount;//start
   colCounter = 130;
   while (colCounter < 150) {//end
   board[rowCounter][colCounter] = 0;
   colCounter += 1;
   }
   //END 5
   
   //Start 6
   rowCounter = 200 - frameCount;//start
   colCounter = 170;
   while (colCounter < 190) {//end
   board[rowCounter][colCounter] = 5;
   colCounter += 1;
   }
   // clear at top
   rowCounter = 200 - frameCount;//start
   colCounter = 170;
   while (colCounter < 190) {//end
   board[rowCounter][colCounter] = 0;
   colCounter += 1;
   }
   //END 6
   
   //Start 7
   rowCounter = 200 - frameCount;//start
   colCounter = 210;
   while (colCounter < 230) {//end
   board[rowCounter][colCounter] = 5;
   colCounter += 1;
   }
   // clear at top
   rowCounter = 200 - frameCount;//start
   colCounter = 210;
   while (colCounter < 230) {//end
   board[rowCounter][colCounter] = 0;
   colCounter += 1;
   }
   //END 7
   */
  //Draws board
  loadPixels();  
  // Loop through every pixel column
  for (int column = 75; column < width - 75; column++) {
    // Loop through every pixel row
    for (int row = 150; row < height - 150; row++) {

      // Use the formula to find the 1D location
      int loc = column + row * width;

      // Draw the board 
      if (board[row - 150][column - 75] == 3) { // player
        pixels[loc] = color(0, 80, 90);//red
      } else if (board[row - 150][column - 75] == 7) { // safe area 
        pixels[loc] = color(60, 80, 90);
      } else if (board[row - 150][column - 75] == 5) { // If we are an even column
        pixels[loc] = color(240, 80, 90);
      } else if (board[row - 150][column - 75] == 9) { // If we are an even column
        pixels[loc] = color(30, 80, 90);
      } else {          // If we are an odd column
        pixels[loc] = color(0);
      }
    }
  }
  updatePixels();
}


// //deaths text
// textSize(32);
// text("deaths", 170, 30);
// fill(0, 102, 153);

// //leavel text
// textSize(32);
// text("Level", 340, 30);
// fill(0, 102, 153);

// //Reset 
// //Button does not work
// textSize(32);
// text("Reset", 25, 30);
// fill(0, 102, 153);

// //rectangle for leavel 1
// fill(190);
// rect(boundaryx, 175, 350, 200);

// //start
// noStroke();
// fill(300, 250, 100);
// rect(76, 176, 70, 199);
// stroke(0);

// //finish
// noStroke();
// fill(300, 250, 100);
// rect(355, 176, 70, 199);
// stroke(0);
// //
// x=x+speed*directionX;
// y=y+speed*directionY;

// directionX=0;
// directionY=0;


// noStroke();
// fill (color(222, 22, 22)); 
// rect (x, y, radius, radius); 
// stroke(0);

// int all = 0;
// while (all < 6) {
//   yPos[all] += yFlip[all];
//   fill(0);
//   ellipse(xPos[all], yPos[all], 10, 10);
//   println("DONE");
//   all += 1;
// }

////  


void keyPressed()
{
  ////    if (key == CODED)
  // {
  //   if (keyCode == LEFT)
  //   {
  //     //if (directionX>0) { 
  //     directionX=-1;
  //     directionY=0;
  //     if (x < boundaryx + 5) {
  //       x = 79;
  //     }
  //     //}
  //   } else if (keyCode == RIGHT)
  //   {
  //     //if (directionX<0) {  
  //     directionX=1;
  //     directionY=0;
  //     if (x > boundaryx + 350 - 17) {
  //       x = boundaryx + 350 - 17;
  //     }
  //   } else if (keyCode == UP)
  //   {
  //     //if (directionY<0) {
  //     directionY=-1;
  //     directionX=0;
  //     if (y < boundaryy + 5) {
  //       y = 179;
  //     }
  //     //}
  //   } else if (keyCode == DOWN)
  //   {
  //     //if (directionY<0) { 
  //     directionY=1;
  //     directionX=0;
  //     println("y is: " + y);
  //     println("boundaryy is: " + boundaryy);
  //     if (y > boundaryy + 180 - 2) {
  //       y = boundaryy + 180 - 2;
  //       //}
  //     }
  //   }
  // }
}
