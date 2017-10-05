//your code here
NormalParticle star;

void setup()
{
  size(300, 300);
}
void draw()
{
  background(0);
  star = new NormalParticle();
  star.move();
  star.show();
}
class NormalParticle implements Particle
{
  double x;
  double y;
  double speed;
  double angle;
  int normColor;

  NormalParticle() {
    x = 150.0;
    y = 150.0;
    angle = Math.random()*(2*Math.PI);
    speed = Math.random()*10;
  }
  void move() {
    x += Math.cos(angle)*speed;
    y += Math.sin(angle)*speed;
  }
  void show() {
    ellipse((float)(x), (float)(y), 20, 20);
  }
}
interface Particle
{
  //your code here
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}