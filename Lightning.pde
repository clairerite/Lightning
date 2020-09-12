int startX = 0;
int startY = 150;
int endX = 0;
int endY = 50;
int cloudX = 20;
int stroke = 0;
void setup () {
  size(300,300);
  strokeWeight (3);
  background (0);
  frameRate (2);
}
void draw () {
  background (0);
  noStroke();
  fill (183, 179, 179);
  ellipse (cloudX,20,70,70);
  if (cloudX < 300) {
  cloudX=cloudX+50;
  } else {
    cloudX = 0;
  }
  stroke ((int)(Math.random()*11)+244, (int)(Math.random()*37)+218, (int)(Math.random()*256));
  while (endX < 300) {
    endX = startX + (int) (Math.random()*10);
    endY = startY + (int) (Math.random ()*19) - 10;
    line(startY, startX,endY, endX);
    startX = endX;
    startY = endY;
  }
  }
   void mousePressed () {
     startX = 0;
     startY = 150;
     endX = 0;
     endY = 50;
   }

     
