public class Asteroid extends Floater{
	private int myRotSpeed;
	private int rand = (int)(Math.random()*10);
	Asteroid(){
		myRotSpeed=(int)(Math.random()*10);
		myColor=255;
		myCenterX = Math.random()*BACKGROUND_SIZE;
		myCenterY = Math.random()*BACKGROUND_SIZE;
		myDirectionX = (Math.random()*5)-3;
		myDirectionY = (Math.random()*5)-3;
		//xCorners = new int[8];
		//yCorners = new int[8];
		corners = 8;
		xCorners = new int[]{rand+15,rand+5,rand-5,rand-15,rand-15,rand-5,rand+5,rand+15};
		yCorners = new int[]{rand-5,rand-10,rand-10,rand-5,rand+5,rand+10,rand+10,rand+5};
		/*xCorners[0] = 15;
    	yCorners[0] = -5;
    	xCorners[1] = 5;
    	yCorners[1] = -10;
    	xCorners[2] = -5;
    	yCorners[2] = -10;
    	xCorners[3] = -15;
    	yCorners[3] = -5;
    	xCorners[4] = -15;
    	yCorners[4] = 5;
    	xCorners[5] = -5;
    	yCorners[5] = 10;
    	xCorners[6] = 5;
    	yCorners[6] = 10;
    	xCorners[7] = 15;
    	yCorners[7] = 10;*/
	}
	public void move(){
		super.turn(myRotSpeed);
		super.move();
	}
	public double getX(){return myCenterX;} 
	public double getY(){return myCenterY;} 
}