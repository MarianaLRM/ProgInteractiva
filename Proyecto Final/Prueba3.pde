import oscP5.*;

OscP5 oscP5;

int escala, colorC,ancho;

void setup()
{
size(500,500);

oscP5 = new OscP5(this,12000);
}



void draw()
{
  
smooth();
stroke(243,100,colorC);
strokeWeight(ancho);

background(colorC,12,250);

fill(275,colorC,234);
ellipse(250,250,escala,escala);
}

void oscEvent(OscMessage theOscMessage)
{
if (theOscMessage.checkAddrPattern("/escala") == true) {
    escala = theOscMessage.get(0).intValue();
    print (escala);
  }
  
if (theOscMessage.checkAddrPattern("/color") == true) {
    colorC = theOscMessage.get(0).intValue();
    print (colorC);
  }
  
if (theOscMessage.checkAddrPattern("/ancho") == true) {
    ancho = theOscMessage.get(0).intValue();
    print (ancho);
  }
  
}
