int x = 0;
int y = 500;
int len = 500;
public void setup()
{
  background(0);
  size(500, 500);
}
public void draw()
{
  background(0);
  sierpinski(x, y, len);
  if (len > 1000){
    len = 500; 
  }
  if (len < 500){
    len = 1000; 
  }
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 7){
    triangle(x,y,x+len,y,x+len/2,y-len);
  } else {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
void mouseClicked(){
  if (mouseButton == LEFT){
    len = len + 50;
  } else {
    len = len - 50;
  } 
}
