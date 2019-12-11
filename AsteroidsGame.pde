//your variable declarations here
boolean rightPressed = false;
boolean leftPressed = false;
boolean shootPressed = false;
boolean enterPressed = false;
boolean boostPressed = false;
Spaceship bob;
int sizMult2 = 2;
Star[] bimbo = new Star[1000];
ArrayList <Bullet> bullets;
ArrayList <Asteroid> theAsteroids;
int FRAME_RATE = 60;
int BACKGROUND_SIZE=700;
public void setup() 
{
	size(700,700);
	bob = new Spaceship();
	bullets = new ArrayList <Bullet>();
	theAsteroids = new ArrayList <Asteroid>();
	bob.setX(BACKGROUND_SIZE/2);
  	bob.setY(BACKGROUND_SIZE/2);
  	for(int i = 0; i<1000; i++){
		bimbo[i] = new Star();
	}
	frameRate(FRAME_RATE);
}
public void draw() 
{
	background(0);
	//stars
	for(int i = 0; i<1000; i++){
		bimbo[i].show();
	}
	//spaceship functions
  	bob.setColor(255);
  	bob.move();
  	bob.show();
  	if(enterPressed == true && frameCount%FRAME_RATE==0){
  		bob.hyperSpace();
  	}
  	if(rightPressed == true){
  		bob.turn(9);
  	}
  	if(leftPressed==true){
  		bob.turn(-9);
  	}
  	if(boostPressed==true){
  		bob.accelerate(.25);
  	}
  	//spawning bullets, only 1 on the screen at a time
  	if(shootPressed==true){
  		Bullet calvin = new Bullet(bob.getX(),bob.getY(),bob.getSpeedX(),bob.getSpeedY(),bob.getPointAngle());
  		if(bullets.size()==0){
  			bullets.add(calvin);
  		}
  	}
  	//moving bullets
  	for(int i = 0; i<bullets.size(); i++){
  		bullets.get(i).shoot();
  		bullets.get(i).show();
  		if((bullets.get(i).getX()>BACKGROUND_SIZE||bullets.get(i).getX()<0)||(bullets.get(i).getY()>BACKGROUND_SIZE||bullets.get(i).getY()<0)){
  			bullets.remove(i);
  		}
  	}
  	//spawning asteroids
  	Asteroid deimos = new Asteroid();
  	if(theAsteroids.size()<5){
  		theAsteroids.add(deimos);
  	}
  	for(int i=0; i<theAsteroids.size(); i++){
  		theAsteroids.get(i).move();
  		theAsteroids.get(i).show();
  		//if((theAsteroids.get(i).getX()<=0||theAsteroids.get(i).getX()>=BACKGROUND_SIZE)||(theAsteroids.get(i).getX()<=0||theAsteroids.get(i).getX()>=BACKGROUND_SIZE)){
  			//theAsteroids.remove(i);
  		//}
  	}
  	//checking collision between bullets and asteroids
  	double dist;
  	for(int i=0; i<bullets.size(); i++){
  		for(int j=0; j<theAsteroids.size(); j++){
  			dist = abs(dist((float)bullets.get(i).getX(),(float)bullets.get(i).getY(),(float)theAsteroids.get(j).getX(),(float)theAsteroids.get(j).getY()));
  			if(dist<25*sizMult2){
  				theAsteroids.remove(j);
  				bullets.remove(i);
  				break;
  			}
  		}
  	}
  	for(int j=0; j<theAsteroids.size(); j++){
  		dist = abs(dist((float)bob.getX(),(float)bob.getY(),(float)theAsteroids.get(j).getX(),(float)theAsteroids.get(j).getY()));
  		if(dist<20*sizMult2){
  			theAsteroids.remove(j);
  			bob.hyperSpace();
  			background(255,0,0);
  			break;
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