void setup()
{
  //dice is 40x40
  size(600,600);
  noLoop();
  background(247, 193, 218);
}
void draw()
{
  //your code here
  for(int j = 130; j <= 430; j = j + 150){
    for(int i = 130; i <= 430; i += 150){
      Die cube = new Die(i,j);
      cube.show();
    }
  }
  
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int i;
  int j;
  int num;
  
  
  Die(int x, int y) //constructor
  {
    //variable initializations here
    roll();
    i = x;
    j = y;
  }
  void roll()
  {
    //your code here
    num = (int)(Math.random()*6+1);
  }
  void show()
  {
    //your code here
    noStroke();
    fill(255);
    //rect(i,j,40,40);
    beginShape();
    curveVertex(i,j);
    curveVertex(i,j);
    curveVertex(i+40,j);
    curveVertex(i+40,j+40);
    curveVertex(i,j+40);
    curveVertex(i,j);
    curveVertex(i+40,j);
    curveVertex(i+40,j+40);
    curveVertex(i+40,j+40);
    endShape();
    fill(0);
    if (num == 1){
      ellipse(i+20,j+20,5,5);
    } else if (num == 2){
      ellipse(i+15,j+20,5,5);
      ellipse(i+25,j+20,5,5);
    } else if (num == 3){
      ellipse(i+20,j+15,5,5);
      ellipse(i+15,j+25,5,5);
      ellipse(i+25,j+25,5,5);
    } else if (num == 4){
      ellipse(i+15,j+15,5,5);
      ellipse(i+25,j+15,5,5);
      ellipse(i+15,j+25,5,5);
      ellipse(i+25,j+25,5,5);
    } else if (num == 5){
      ellipse(i+20,j+20,5,5);
      ellipse(i+15,j+15,5,5);
      ellipse(i+25,j+15,5,5);
      ellipse(i+15,j+25,5,5);
      ellipse(i+25,j+25,5,5);
    } else{
      ellipse(i+15,j+25,5,5);
      ellipse(i+25,j+25,5,5);
      ellipse(i+15,j+20,5,5);
      ellipse(i+25,j+20,5,5);
      ellipse(i+15,j+15,5,5);
      ellipse(i+25,j+15,5,5);
    }
    textSize(20);
    fill(242, 53, 141);
    text("The total is: ", 200, 550);
    //int total = 0 + num;
    //text(total, 300, 550);
  }
}
