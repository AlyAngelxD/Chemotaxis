Clones[] minions;
 void setup()   
 {     
 	size(300,300);   
 	background(0);
 	minions = new Clones[100];
 	for (int i = 0; i < minions.length; i++)
 	{
 		minions[i] = new Clones();
 	}
 }   
 void draw()   
 {    
 	for (int i = 0; i < minions.length; i++)
 	{
 		minions[i].move();
 		minions[i].show();
 	}
 }  
 class Clones   
 {     
 	int x, y, cloneColor;
 	Clones() 
 	{
 		x = 150;
 		y = 150;
 		cloneColor = color(150,150,150);
 	}   
 	void move()
 	{
 		x = x + (int)(Math.random()*3)-1;
 		y = y + (int)(Math.random()*3)-1;
 	}
 	void show()
 	{
 		fill(cloneColor);
 		ellipse(x,y,20,20);
 	}
 }    