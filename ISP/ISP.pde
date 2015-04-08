//Matthew Pritchard
//ISP V1
//April 2 2015

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
  rect(75, 175, 350, 200);
}

//need to figure this piese out
void keyPressed() {
  if (keyCode==CODED) {
    if (keyCode==UP) {
      topY < Y-1;
    } else if (keyCode==DOWN) {
      bottomY> Y+1;
    } else if (keyCode==RIGHT) {
      rightX> X-1;
    } else if (keyCode==LEFT) {
      leftX< X+1;
    }
  }
}
