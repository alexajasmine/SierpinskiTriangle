int x = 0;
int y = 399;
int len = 0;

public void setup()
{
  size(400,400); 
}
public void draw()
{
  background(0); 
  stroke(mouseX); 
  fill(0); 
  mouseDragged(); 
  sierpinski(x,y,len); 

}
public void mouseDragged()//optional
{
  len = mouseX; 
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 20) {
    triangle(x,y,x+len,y,x+len/2,y-len); 
  } 
  else {
    stroke(255,250,250);
    fill(219,112,147); 
    sierpinski(x, y, len/2); 
    sierpinski(x+len/2, y, len/2); 
    fill(255,192,203); 
    sierpinski(x+len/4, y-len/2, len/2); 
  }

}
