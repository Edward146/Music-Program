
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
  minim = new Minim(this);
  song1 = minim.loadFile("../Music/Mirror Mind - Bobby Richards.mp3"); //able to pass absolute path, file name, and URL
  buttons();
}

void draw() {}//End draw() 

void keyPressed() {
  
  if ( key == 'p' || key == 'P' ) {//Play-Pause Button
  if ( song1.isPlaying() ) {
    song1.pause();
  } else if ( song1.position() == song1.length() ) {//.length() = en
    song1.rewind();
    song1.play();
  } else {
    song1.play();
  }
  }//End of Play-Pause Button
  //
  if ( key == 's' || key == 'S' ) {//Stop Button
  if ( song1.isPlaying() ) {//Stop Button
    song1.pause();
    song1.rewind();
  } else if ( song1.position() == song1.length() ) {//.length() = end
    song1.rewind();
  } else {
    song1.rewind();
  }
  }//End of Stop Button
  //
  if (key == 'f' || key == 'F') song1.skip(1000);//Fast Forward 1 second
  if (key == 'r' || key == 'R') song1.skip(-1000);
}//End keyPressed()
