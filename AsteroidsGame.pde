//your variable declarations here
boolean rightPressed = false;
boolean leftPressed = false;
boolean spacePressed = false;
Spaceship bob;

public void setup() 
{
	size(800,800);
	bob = new Spaceship();
	bob.setX(400);
  	bob.setY(400);
}
public void draw() 
{
  background(0);
  bob.setColor(255);
  bob.move();
  bob.show();
  if(rightPressed == true){
  	bob.turn(5);
  }
  if(leftPressed==true){
  	bob.turn(-5);
  }
  if(spacePressed==true){
  	bob.accelerate(.25);
  	System.out.println("lmao");
  }
}
void keyPressed(){
	if(keyCode==RIGHT){
		rightPressed = true;
	}else if(keyCode==LEFT){
		leftPressed=true;
	}else if(key==32){
		spacePressed=true;
	}
}
void keyReleased(){
	if(keyCode==RIGHT){
		rightPressed = false;
	}else if(keyCode==LEFT){
		leftPressed=false;
	}else if(keyCode==32){
		spacePressed=false;
	}
}
