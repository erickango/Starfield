//your code here
Particle[] supastars;
void setup()
{
	//your code here
	size(400,400);
	

}
NormalParticle bob = new NormalParticle();
void draw()
{
	//your code here
	background(0);
	bob.show();
	bob.move();

}
class NormalParticle implements Particle
{
	//your code here
	float x, y, theSpeed, theAngle;
	int q, w, e;
	NormalParticle(){
		x = 50;
		y = 50;
		theSpeed = 5;
		theAngle = 540;
		q = (int)(Math.random() * 256);
		w = (int)(Math.random() * 256);
		e = (int)(Math.random() * 256);
	}
	public void move(){
		x += cos(theAngle * theSpeed);
		y += sin(theAngle * theSpeed);
	}
	public void show(){
		fill(q,w,e);
		ellipse(x, y, 10, 10);
	}
}
interface Particle
{
	//your code here
	public void show();
	public void move();
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

