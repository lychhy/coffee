float x,y,d;
void setup(){
  size(400,400);
  x=100; y= 200; d=100;
  fill(173,216,230);
  strokeWeight(5);
  rect(x,y,d,0.6*d);
  line(x,y,x+d,y+0.6*d);
  line(x+d,y,x,y+0.6*d);
  fill(249,204,202);
  circle(x+0.5*d,y+0.3*d,0.2*d);
}
