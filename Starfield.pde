Particle [] star;

void setup()
{
  background(0);
  size(300, 300);
  star = new Particle[5];

  for (int i = 0; i < star.length - 1; i++) {
    if (i % 7 == 0) {
      star[i] = new JumboParticle();
    } else { 
      star[i] = new NormalParticle();
    }
  }
  star[star.length-1] = new OddballParticle();
}
void draw()
{
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
    if (x <= 300 && x >= 0) {
    x += Math.cos(angle)*speed;
    }
    else {
      x = 150.0;
    }
    if (y <= 300 && y >=0) {
    y += Math.sin(angle)*speed;
    }
    else {
      y = 150.0;
    }
  }
  public void show() {
    fill(255);
    ellipse((float)(x), (float)(y), 10, 10);
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
    x = 0.0;
    y = 0.0;
    angle = 0.0;
  }
  public void move() {
    
  }
  public void show() {
    fill(255, 0, 0);
    ellipse((float)x, (float)y, 20, 20);
  }
}
class JumboParticle extends NormalParticle
{
  public void show() {
    fill(255);
    //ellipse((float)(x), (float)(y), 20, 20);
  }
}
