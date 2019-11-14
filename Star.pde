class Star //note that this class does NOT extend Floater
{
  private int myStarX, myStarY, myStarCol;
  public Star(){
  	myStarX = (int)(Math.random()*800);
  	myStarY = (int)(Math.random()*800);
  	myStarCol = 255;
  }
  public void show(){
  	fill(255,150);
  	stroke(255,150);
  	ellipse(myStarX,myStarY,1,1);
  }
}
