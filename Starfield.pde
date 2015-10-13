//your code here
Particle[] supastars = new Particle[101];
void setup()
{
	//your code here
	int i;
	size(400,400);
	for(i = 0; i<supastars.length - 1; i++){ supastars[i] = new NormalParticle();
	}

	supastars[i] = new OddballParticle();

}


void draw()
{
	//your code here
	background(0);
	noStroke();
	for(int k = 0; k<supastars.length; k++){
		supastars[k].show();
		supastars[k].move();
	}
}
class NormalParticle implements Particle
{
	//your code here
	double x, y, theSpeed, theAngle;
	int q, w, e;
	NormalParticle(){
		x = 200;
		y = 200;
		theSpeed = (Math.random()*10);
		theAngle = (Math.random()*360);
		q = (int)(Math.random() * 256);
		w = (int)(Math.random() * 256);
		e = (int)(Math.random() * 256);
	}
	public void move(){
		x += cos(((float)theAngle)) * theSpeed;
		y += sin(((float)theAngle)) * theSpeed;
		theAngle += 0.05;

	}
	public void show(){
		fill(q,w,e);
		ellipse((float)x, (float)y, 10, 10);
	}
}
interface Particle
{
	//your code here
	public void show();
	public void move();
}
class OddballParticle implements Particle //uses an interface
{
	//your code here
	int x, y;
	OddballParticle(){
		x = (int)(Math.random() * 350) + 20;
		y = (int)(Math.random() * 350) + 20;
	}
	public void show(){
		fill(255,255,255);
		ellipse(x, y, 50, 50);
	}
	public void move(){
		x+= (int)(Math.random() * 3) -1;
		y+=(int)(Math.random() * 3) -1;
	}
}
class JumboParticle extends  //uses inheritance
{
	//your code here

}

