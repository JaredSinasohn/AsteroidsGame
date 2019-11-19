//your variable declarations here
boolean rightPressed = false;
boolean leftPressed = false;
boolean shootPressed = false;
boolean enterPressed = false;
boolean boostPressed = false;
Spaceship bob;
Star[] bimbo = new Star[1000];
ArrayList <Bullet> bullets;
int FRAME_RATE = 30;
public void setup() 
{
	size(800,800);
	bob = new Spaceship();
	bullets = new ArrayList <Bullet>();
	bob.setX(400);
  	bob.setY(400);
  	for(int i = 0; i<1000; i++){
		bimbo[i] = new Star();
	}
	frameRate(FRAME_RATE);
}
public void draw() 
{
	background(0);
	for(int i = 0; i<1000; i++){
		bimbo[i].show();
	}
  	bob.setColor(255);
  	bob.move();
  	bob.show();
  	bob.hyperSpace(enterPressed);
  	if(rightPressed == true){
  		bob.turn(6*2);
  	}
  	if(leftPressed==true){
  		bob.turn(-6*2);
  	}
  	if(boostPressed==true){
  		bob.accelerate(.25*2);
  	}
  	if(shootPressed==true){
  		Bullet calvin = new Bullet(bob.getX(),bob.getY(),bob.getSpeedX(),bob.getSpeedY(),bob.getPointAngle());
  		if(frameCount%(FRAME_RATE/15)==0){
  			bullets.add(calvin);
  		}
  	}
  	for(int i = 0; i<bullets.size(); i++){
  		bullets.get(i).shoot();
  		bullets.get(i).show();
  		if((bullets.get(i).getX()>800||bullets.get(i).getX()<0)||(bullets.get(i).getY()>800||bullets.get(i).getY()<0)){
  			bullets.remove(i);
  		}
  	}

}
public void keyPressed(){
	if(key==100){
		rightPressed = true;
	}
	if(key==97){
		leftPressed=true;
	}
	if(keyCode==ENTER){
		enterPressed=true;
	}
	if(key==119){
		boostPressed=true;
	}
}

public void keyReleased(){
	if(key==100){
		rightPressed = false;
	}
	if(key==97){
		leftPressed=false;
	}
	if(keyCode==ENTER){
		enterPressed=false;
	}
	if(key==119){
		boostPressed=false;
	}
}
public void mousePressed(){
	shootPressed=true;
}
public void mouseReleased(){
	shootPressed=false;
}