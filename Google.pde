PFont font;
float b=250.0;//Set camera Position
float c=300;
String[] logo={"G", "o", "o", "g", "l", "e"};//logo
int[] xPos={100,155,200,250,300,325};//XPosition of google logo
int[] rColor={66,234,251,66,52,234};//RGB red font color
int[] gColor={133,67,188,133,168,67};//RGB green font color
int[] bColor={244,53,5,244,83,53};//RGB blue font color

String[] fontList=PFont.list();
PImage saveImage;
int count = 1;

void setup() {
  fullScreen(P3D);//Setting fullscreen
  //size(1920,1080, P3D);
  frameRate(30);//Setting framerate
  noCursor();//Turn off cursor
  font = createFont("impact", 100);//Creating font
  fill(0);//Setting fill
  mouseX=0;
  mouseY=200;
}


void draw() {
  background(0);
  camera(c, 150, b, mouseX, mouseY, 0.0, 0.0, 100.0, 0.0);//Setting camera

  textFont(font);
  shininess(5.0);//Setting gloss
  //Putting Googlelogo
  for (int i=0; i<=5; i++) {
    fill(rColor[i],gColor[i],bColor[i]);
    text(logo[i], xPos[i], 140, 10);
  }
  //Setting camera movement
  if ((keyPressed==true)&&(key=='a') && c>=115) {
    c-=5;
  } else if ((keyPressed==true)&&(key=='d') && c<400) {
    c+=5;
  } else if ((keyPressed==true)&&(key=='w') && b>=120) {
    b-=5;
  } else if ((keyPressed==true)&&(key=='s')&& b<=250) {
    b+=5;
  }
  //Putting room
  pushMatrix();
  translate(100,-125,-100);
  noFill();
  stroke(255);
  rect(0,0,300,300);
  line(0,0,0,0,0,500);
  line(300,0,0,300,0,500);
  line(0,300,0,0,300,500);
  line(300,300,0,300,300,500);
  popMatrix();
}

void keyPressed(){
  if(key == 'p'){
    saveImage = get(0,0,width,height);
    saveImage.save("image"+count+".png");
    count++;
  }
}
