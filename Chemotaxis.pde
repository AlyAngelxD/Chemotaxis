Clones[] minions;
Gru master;
 void setup()   
 {     
 	size(500,500);   
 	minions = new Clones[100];
 	for (int i = 0; i < minions.length; i++)
 	{
 		minions[i] = new Clones();
 	}
 	master = new Gru();
 }   
 void draw()   
 {    
 	background(0);
 	for (int i = 0; i < minions.length; i++)
 	{
 		minions[i].move();
 		minions[i].show();
 	}
 	master.show();
 }  
 class Clones   
 {     
 	int x, y, cloneColor;
 	Clones() 
 	{
 		x = 250;
 		y = 250;
 		cloneColor = color(255,215,0);
 	}   
 	void move()
 	{
 		x = x + (int)(Math.random()*3)-1;
 		y = y + (int)(Math.random()*3)-1;
 	}
 	void show()
 	{
 		fill(cloneColor);
 		strokeWeight(1);
 		ellipse(x,y,50,50);
 		strokeWeight(10);
 		line(x+21,y,x-21,y);
 		strokeWeight(1);
 		fill(150);
 		ellipse(x,y,30,30);
 		strokeWeight(1);
 		fill(255);
 		ellipse(x,y,20,20);
 		strokeWeight(1);
 		fill(100,80,60);
 		ellipse(x,y,8,8);
 		strokeWeight(1);
 		fill(0);
 		ellipse(x,y,4,4);
 		strokeWeight(1);
 		fill(255);
 		ellipse(x-1,y-1,2,2);
 	}
 }    
 class Gru
 {
 	int x, y, gruColor;
 	Gru()
 	{
 		x = 0;
 		y = 0;
 		gruColor = color(255,195,170);
 	}
 	void move()
 	{

 	}
 	void show()
 	{
 		fill(gruColor);
 		strokeWeight(1);
 		ellipse(x,y,50,50);

 	}
 }
 class Banana
 {
 	int x, y, bColor;
 	Banana()
 	{
 		x = (int)(Math.random()*500);
 		y = (int)(Math.random()*500);
 		bColor = color(255,255,0);
 	}
 	void show()
 	{

 	}
 }