//your code here
Particle[] supastars;
{
	//your code here
	size(400,400);
	background(0);
}
void draw()
{
	//your code here
	NormalParticle bob = new NormalParticle();
	bob.show();
	bob.move();

}
class NormalParticle implements Particle
{
	//your code here
	float x, y, theSpeed, theAngle;
	int theColor;
	int q = (int)(Math.random() * 256);
	int w = (int)(Math.random() * 256);
	int e = (int)(Math.random() * 256);
	NormalParticle(){
		x = 50;
		y = 50;
		theAngle = 90;
		theSpeed = 3;
	}
	public void move(){
		x += cos(theAngle * theSpeed);
		y += sin(theAngle * theSpeed);
	}
	public void show(){
		fill(q,w,e);
		ellipse(x, y, 5, 5);
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

