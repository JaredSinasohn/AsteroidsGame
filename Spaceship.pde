class Spaceship extends Floater//extends Floater  
{   
    private double myMouseAngle;
    public Spaceship(){
    	corners = 11;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[0] = 14;
    	yCorners[0] = 0;
    	xCorners[1] = 7;
    	yCorners[1] = 4;
    	xCorners[2] = -3;
    	yCorners[2] = 4;
    	xCorners[3] = -11;
    	yCorners[3] = 9;
    	xCorners[4] = -8;
    	yCorners[4] = 5;
    	xCorners[5] = -11;
    	yCorners[5] = 4;
    	xCorners[6] = -11;
    	yCorners[6] = -4;
    	xCorners[7] = -8;
    	yCorners[7] = -5;
    	xCorners[8] = -11;
    	yCorners[8] = -9;
    	xCorners[9] = -3;
    	yCorners[9] = -4;
    	xCorners[10] = 7;
    	yCorners[10] = -4;
    	myMouseAngle = Math.atan2((myCenterX-mouseX),(myCenterY-mouseY));
    }
    double getX(){return (double)myCenterX;}
    double getY(){return (double)myCenterY;}
    int getColor(){return myColor;}
    double getMouseAngle(){return myMouseAngle;}
    double getPointAngle(){return myPointDirection;}
    void setX(double x){myCenterX=x;}
    void setY(double y){myCenterY=y;}
    void setColor(int col){myColor = col;}
}
