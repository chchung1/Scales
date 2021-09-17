int r;
int g = 10;
int b = 74;

void setup() {
  size(600, 600);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}


void draw() {
  for(int row = 600; row >= -50; row-=25){
    r+=10;
    fill(r,g,b); 
    for(int col = 0; col < 660; col+=60){
      if(row%2==0)
        scale(col,row);
      else
        scale(col+30,row); 
    } 
  }
} 


void scale(int x, int y) {
  //your code here
  int size = 0;
 
 while(size<20){
  
   if(size%3==0){
     stroke(0);
   }
     else{
     noStroke();
   }
   
    beginShape();
    curveVertex(x,y+size);
    curveVertex(x,y+size);
    
    curveVertex(x-10,y+10+size);
    curveVertex(x-30+size,y+30);
    
    curveVertex(x-6,y+55-size); 
    curveVertex(x,y+90-size*2);
    curveVertex(x+6,y+55-size);
    
    curveVertex(x+30-size,y+30);
    curveVertex(x+10,y+10+size);
    
    curveVertex(x,y+size);
    curveVertex(x,y+size);
    endShape();
 
    size++;
 }
 
}
