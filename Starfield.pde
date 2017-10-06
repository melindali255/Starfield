//your code here
Particle [] star;

void setup()
{
  size(300, 300);
  star = new Particle[500];
  for (int i = 0; i < star.length - 1; i++) {
    star[i] = new NormalParticle();
  }
  star[499] = new OddballParticle();
}
void draw()
{
  background(0);
  for (int i = 0; i < star.length; i++) {
    star[i].show();
    star[i].move();
  }
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
  public void move() {
    x += Math.cos(angle)*speed;
    y += Math.sin(angle)*speed;
  }
  public void show() {
    ellipse((float)(x), (float)(y), 5, 5);
  }
}
interface Particle
{
  public void move();
  public void show();
}
class OddballParticle implements Particle
{
  double x;
  double y;
  double angle;

  OddballParticle() {
    x = 200.0;
    y = 200.0;
    angle = Math.random()*(Math.PI*2);
  }
  public void move() {
    x += Math.sin(angle);
    y += Math.sin(angle);
  }
  public void show() {
    fill(255, 0, 0);
    ellipse((float)x, (float)y, 20, 20);
  }
}
class JumboParticle //uses inheritance
{
  //your code here
}