
//Minim Library: use Sketfch / Import Library / Add Library
//Minim Library: use Sketch / import Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim; //creats object to access all functions
AudioPlayer song1; //creates "Play List" cariable holding extensions WAV, AIFF, AU, SND, and MP3

void setup() {
  fullScreen();
  //minim = new Minim(this);
  //song1 = minim.loadFile("../Music/Mirror Mind - Bobby Richards.mp3"); //able to pass absolute path, file name, and URL
  //song1.play();
}

void draw() {}//End draw() 
