//your variable declarations here
boolean rightPressed = false;
boolean leftPressed = false;
boolean spacePressed = false;
boolean enterPressed = false;
Spaceship bob;
Star[] bimbo = new Star[1000];
public void setup() 
{
	size(800,800);
	bob = new Spaceship();
	bob.setX(400);
  	bob.setY(400);
  	for(int i = 0; i<1000; i++){
		bimbo[i] = new Star();
	}
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
  		bob.turn(6);
  	}
  	if(leftPressed==true){
  		bob.turn(-6);
  	}
  	if(spacePressed==true){
  		bob.accelerate(.25);
  	}
}
public void keyPressed(){
	if(keyCode==RIGHT){
		rightPressed = true;
	}else if(keyCode==LEFT){
		leftPressed=true;
	}else if(keyCode==UP){
		spacePressed=true;
	}else if(keyCode==ENTER){
		enterPressed=true;
	}
}
public void keyReleased(){
	if(keyCode==RIGHT){
		rightPressed = false;
	}else if(keyCode==LEFT){
		leftPressed=false;
	}else if(keyCode==UP){
		spacePressed=false;
	}else if(keyCode==ENTER){
		enterPressed=false;
	}
}
