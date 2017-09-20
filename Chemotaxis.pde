 //declare bacteria variables here   
 Bacteria[] minions;
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(300,300);   
 	background(0);
 	minions = new Bacteria[100];
 	for (int i = 0; i < minions.length; i++)
 	{
 		minions[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 	for (int i = 0; i < minions.length; i++)
 	{
 		minions[i].move();
 		minions[i].show();
 	}
 }  
 class Bacteria    
 {     
 	int x, y, bColor;
 	Bacteria() 
 	{
 		x = 0;
 		y = 0;
 		bColor = 150;
 	}   
 	void move()
 	{
 		x = x + (int)(Math.random()*3)-1;
 		y = y + (int)(Math.random()*3)-1;
 	}
 	void show()
 	{
 		fill(bColor);
 		ellipse(x,y,20,20);
 	}
 }    