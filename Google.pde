PFont font;
int top=3;
int mide=2;
int under=1;
int last=4;
int a=1;
float b=250.0;
float c=300;
int y=200;
int x=200;
int w=200;
int z=200;
float speed=0.0;
float sControl=0.2;
float maxS=10.0;
float eSize=5;
String[] logo={"G", "o", "o", "g", "l", "e"};
int[] xPos={100,155,200,250,300,325};
int[] rColor={66,234,251,66,52,234};
int[] gColor={133,67,188,133,168,67};
int[] bColor={244,53,5,244,83,53};

String[] fontList=PFont.list();
PImage saveImage;
int count = 1;

void setup() {
  fullScreen(P3D);
  //size(1920,1080, P3D);
  frameRate(30);
  noCursor();
  font = createFont("impact", 100);
  fill(0);
  mouseX=0;
  mouseY=200;
}


void draw() {
  shininess(1.0);
  background(0);
  camera(c, 150, b, mouseX, mouseY, 0.0, 0.0, 100.0, 0.0);

  textFont(font);
  shininess(5.0);
  for (int i=0; i<=5; i++) {
    fill(rColor[i],gColor[i],bColor[i]);
    text(logo[i], xPos[i], 140, 10);
  }
  if ((keyPressed==true)&&(key=='a') && c>=115) {
    c-=5;
  } else if ((keyPressed==true)&&(key=='d') && c<400) {
    c+=5;
  } else if ((keyPressed==true)&&(key=='w') && b>=120) {
    b-=5;
  } else if ((keyPressed==true)&&(key=='s')&& b<=250) {
    b+=5;
  }
  println(b);
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
