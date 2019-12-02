public class Bullet extends Floater
{
	private int mySize;
	public Bullet(double x, double y, double speedX, double speedY, double angle){
		myCenterX=x;
		myCenterY=y;
		myDirectionX=speedX;
		myDirectionY=speedY;
		myPointDirection=angle;
		mySize=3;
	}
	public void shoot(){
		double rads = myPointDirection*(Math.PI/180);
		myCenterX+=myDirectionX+40*Math.cos(rads)+14*Math.cos(rads);
		myCenterY+=myDirectionY+40*Math.sin(rads);
	}
	public void show(){
		fill(255);
		stroke(255);
		ellipse((float)myCenterX, (float)myCenterY, mySize, mySize);
	}
	public double getX(){return myCenterX;}
	public double getY(){return myCenterY;}
}