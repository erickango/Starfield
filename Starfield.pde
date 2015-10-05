//your code here
void setup()
{
	//your code here
}
void draw()
{
	//your code here
}
class NormalParticle implements Particle
{
	//your code here
	double x, y, theSpeed, theAngle;
	int theColor;
	NormalParticle(){

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

