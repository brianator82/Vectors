//declare variables
//float x, y, velX, velY, diam;
PVector loc;
PVector vel;
PVector acc;
float diam;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  //x = width/2;
  //y = height/2;
  diam = 80;
  
  //velX = random(-5, 5);
  //velY = random(-5, 5);
  loc =new PVector(width/2,height/2);
  vel= new PVector(1,1);
  
}

void draw() {
  //draw background to cover previous frame
  background(0);
acc= PVector.random2D();
  //draw ball
  ellipse(loc.x, loc.y, diam, diam);

  //add velocity to position
  //x += velX;
  //y += velY;
      //vel= new PVector(random(-5,5),random(-5,5));
  vel.add(acc);
  vel.limit(5);
  loc.add(vel);
 


  //wrap the ball's position
  if (loc.x >= width) {
    loc.x =0;     
  } else if (loc.x <= 0) {
    loc.x = width ;
  }
  if (loc.y >= height) {
    loc.y =0 ;
  } else if (loc.y <= 0) {
    loc.y = height ;
  }
}