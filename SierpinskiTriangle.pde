int serLen=100;
int serX=400;
int serY=400;
boolean up,down,right,left,grow,shrink;

public void setup()
{
	size(800,800);
} 
public void draw()
{
	background(255,255,255);
	sierpinski(serX,serY,serLen);
	move();
}	
public void move()//optional
{
	if(shrink==true){
		serLen=serLen-4;

	}
	if(grow==true){
		serLen=serLen+4;

	}
	if(up==true){
		serY-=4;
	}
	if(down==true){
		serY+=4;
	}
	if(left==true){
		serX-=4;
	}
	if(right==true){
		serX+=4;
	}

}


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
public void keyPressed(){
if(key=='s'){
	down=true;
}
if(key=='w'){
	up=true;
}
if(key=='a'){
	left=true;
}
if(key=='d'){
	right=true;
}
if(keyCode==UP){
	grow=true;
}
if(keyCode==DOWN){
	shrink=true;
}
}
public void keyReleased(){
if(key=='s'){
	down=false;
}
if(key=='w'){
	up=false;
}
if(key=='a'){
	left=false;
}
if(key=='d'){
	right=false;
}
if(keyCode==UP){
	grow=false;
}
if(keyCode==DOWN){
	shrink=false;
}
}
