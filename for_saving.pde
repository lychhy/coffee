float x1,y1,d1,x2,y2,d2;
void setup(){
  size(800,800);
  x1=100; y1=300; d1=50;
  x2=300; y2=200; d2=20;
}
void draw(){
  background(255,255,255);
  lychhy(x1,y1,d1);
  redNose(x2,y2,d2);
}
void mouseReleased(){
  x1 = mouseX;
  y1 = mouseY;
}
void keyPressed(){
  if(key == 'd') x2+=4; // turn right 
  else if(key == 'a') x2-=4; // turn left
  else if(key == 'w') y2 +=4; // go up
  else if(key == 's') y2 -=4; // go down
  else{
    x2 = mouseX;
    y2 = mouseY;
  }
}

void lychhy(float x,float y,float d){
  fill(0);
  ellipse(x1-1.5*d1,y1+d1*2.9,d1/2,d1); //left leg
  ellipse(x1-0.5*d1,y1+d1*2.9,d1/2,d1); //right leg
  circle(x1-0.2*d1,y1-0.7*d1,d1-10); //right ear
  circle(x1-1.7*d1,y1-0.7*d1,d1-10); //left ear
  fill(255);
  ellipse(x1-d1,y1+1.5*d1,1.9*d1,3*d1); //body
  fill(0);
  bezier(x1-1.7*d1,y1+0.3*d1,x1-2.7*d1,y1+3*d1,x1-d1,y1+3*d1,x1-1.4*d1,y1+0.5*d1); //left hand
  bezier(x1-0.5*d1,y1+2*d1,x1-0.5*d1,y1+2.6*d1,x1+d1,y1+2.6*d1,x1-0.6*d1,y1-0.2*d1); //right hand
  fill(255);
  circle(x1-d1,y1,1.5*d1); //face
  fill(96);
  circle(x1-1.3*d1,y1-0.2*d1,0.4*d1); //left eye
  circle(x1-0.6*d1,y1-0.2*d1,0.4*d1); //right eye
  fill(0);
  ellipse(x1-d1,y1+0.2*d1,0.3*d1,0.2*d1); //nose
  stroke(0);
  circle(x1-1.2*d1,y1-0.1*d1,0.1*d1); //button left eye
  circle(x1-0.7*d1,y1-0.1*d1,0.1*d1); //button right eye
  noFill();
  arc(x1-d1,y1+0.35*d1,0.3*d1,0.3*d1,0,PI); //mouse
}
void redNose(float x, float y, float d){
  ellipse(x2,y2,10*d2,5*d2); // face
  fill(255,0,0);  // red
  circle(x2-5.5*d2,y2,d2); // nose
  fill(0); // black
  circle(x2-3*d2,y2-0.5*d2,d2); // eye
  fill(255); // white
  circle(x2-3*d2,y2-0.7*d2,0.3*d2); // reflection
  line(x2-3*d2,y2+d2,x2,y2+d2); // mouth
}
