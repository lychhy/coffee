float x,y,d;
void setup(){
  size(400,400);
  x=100; y= 200; d=10;
  fill(173,216,230);
  strokeWeight(4);
  rect(x,y,10*d,6*d);
  line(x,y,x+10*d,y+6*d);
  line(x+10*d,y,10*d,y+6*d);
  fill(249,204,202);
  circle(x+5*d,y+3*d,2*d);
}
