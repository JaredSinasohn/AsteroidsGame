public class Spaceship extends Floater//extends Floater  
{   
    private double myMouseAngle;
    public Spaceship(){
    	corners = 11;
    	xCorners = new int[]{14,7,-3,-11,-8,-11,-11,-8,-11,-3,7};
    	yCorners = new int[]{0,4,4,9,5,4,-4,-5,-9,-4,-4};
    	//xCorners[0] = 14;
    	//yCorners[0] = 0;
    	//xCorners[1] = 7;
    	//yCorners[1] = 4;
    	//xCorners[2] = -3;
    	//yCorners[2] = 4;
    	//xCorners[3] = -11;
    	//yCorners[3] = 9;
    	//xCorners[4] = -8;
    	//yCorners[4] = 5;
    	//xCorners[5] = -11;
    	//yCorners[5] = 4;
    	//xCorners[6] = -11;
    	//yCorners[6] = -4;
    	//xCorners[7] = -8;
    	//yCorners[7] = -5;
    	//xCorners[8] = -11;
    	//yCorners[8] = -9;
    	//xCorners[9] = -3;
    	//yCorners[9] = -4;
    	//xCorners[10] = 7;
    	//yCorners[10] = -4;
    	myMouseAngle = Math.atan2((myCenterX-mouseX),(myCenterY-mouseY));
    }
    public void hyperSpace(boolean enter){
    	for(int i = 0; i<1; i++){
    		if(enter==true){
    			myDirectionX=0;
    			myDirectionY=0;
    			myCenterX=(Math.random()*350)+200;
    			myCenterY=(Math.random()*350)+200;
    			myPointDirection=Math.random()*360;
    		}
    	}
    }
    public double getX(){return (double)myCenterX;}
    public double getY(){return (double)myCenterY;}
    public int getColor(){return myColor;}
    public double getMouseAngle(){return myMouseAngle;}
    public double getPointAngle(){return myPointDirection;}
    public double getSpeedX(){return myDirectionX;}
    public double getSpeedY(){return myDirectionY;}

    public void setX(double x){myCenterX=x;}
    public void setY(double y){myCenterY=y;}
    public void setColor(int col){myColor = col;}
}
