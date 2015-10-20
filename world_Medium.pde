//Digital Data Selfie
//Nada 
//SCIMA-300

import wordcram.*;

JSONArray ProgramData;
String  [] filePath = {
  "A1a_Almerabi_Nada - Sheet4.json"
};
String [] tags;

WordCram cram;

PFont font;

void setup()
{
  size(800, 600);
  smooth();
  fill ((random(255)));
  font = createFont ("Rockwell", 24);

  loadJson();
  prepareData();

  cram = new WordCram(this);
  cram.fromTextString(tags);
  cram.withFont (font);
  cram.withColorer (Colorers.pickFrom(#7097ff, #ff7097, #ff9170,#70deff, color (254, 600, 126)));
  cram.withWordPadding (2);
  
  size(800,600);
  background (000);
  scale (0.95);
  translate ((width-width*0.95)/2, (height-height*0.95)/2);
  
  
  cram.drawAll();
}

void draw ()
{
}

void mousePressed ()
{
  setup();
}