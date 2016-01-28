int serLen=100;
int serX=400;
int serY=400;

public void setup()
{
	size(800,800);
} 
public void draw()
{
	background(255,255,255);
	sierpinski(serX,serY,serLen);
}	
public void mousePressed()//optional
{
	if(mouseButton==LEFT){
		serLen=serLen+4;

	}
	if(mouseButton==RIGHT){
		serLen=serLen-4;

	}
}

public void mouseDragged()//optional
{


	serX=mouseX-serLen/2;
	serY=mouseY+serLen/2;

}

/*public void sierpinski(int x, int y, int len)
 {
 	if(len>=20)
 	{
 		fill(0,0,0);
 	triangle(x,y,x+len/2,y,x+len/4,y-len/2);
 	triangle(x+len/2,y,x+len,y,x+3*len/4,y-len/2);
 	triangle(x+len/4,y-len/2,x+3*len/4,y-len/2,x+len/2,y-len);
 	}else{
 		sierpinski(x,y,len-1);
 	}

 }*/
public void sierpinski(int x, int y, int len)
 {

 	if(len>=10)
 	{
 		 	

 fill(0,0,0);
 	sierpinski(x,y,len/2);
 	sierpinski(x+len/2,y,len/2);
 	sierpinski(x+len/4,y-len/2,len/2);
 	

 	
 	}else{

 	 		



 		triangle(x,y,x+len,y,x+len/2,y-len);
 		
 	}

 }