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

}
class NormalParticle implements Particle
{
	//your code here
	double x, y, theSpeed, theAngle;
	int theColor;
	NormalParticle(){
		x = 50;
		y = 50;
		
	}
	void move(){
		x += cos(theAngle * theSpeed);
		y += sin(theAngle * theSpeed);
	}
	void show(){
		color(theColor);
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

