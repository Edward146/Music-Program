
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
int numberOfSongs = 3;
AudioPlayer[] song = new AudioPlayer[3]; //creates "Play List" cariable holding extensions WAV, AIFF, AU, SND, and MP3
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
int loopIntNum = 1;
int currentSong = numberOfSongs - numberOfSongs;
float fTriangleX1, fTriangleY1, fTriangleX2, fTriangleY2, fTriangleX3, fTriangleY3;
float fCircleX, fCircleY;
float fRectX, fRectY, fRectWidth, fRectHeight;
float bTriangleX1, bTriangleY1, bTriangleX2, bTriangleY2, bTriangleX3, bTriangleY3;
float bCircleX, bCircleY;
float playX1, playY1, playX2, playY2, playX3, playY3;
float playCircleX, playCircleY, Diameter;
float pauseX, pauseY, pauseWidth, pauseHeight;
float pause2X, pause2Y;
float pauseCircleX, pauseCircleY;
color black = #000000, white = #FFFFFF;

void setup() {
  fullScreen();
  minim = new Minim(this);
  song[currentSong] = minim.loadFile("../Music/Mirror Mind - Bobby Richards.mp3"); //able to pass absolute path, file name, and URL
  song[currentSong+=1] = minim.loadFile("../Music/Calvin Harris - josh pan.mp3");
  song[currentSong+=1] = minim.loadFile("../Music/Muriel - Bobby Richards.mp3");
  //
  currentSong = numberOfSongs - numberOfSongs;
  for (int i=currentSong; i<numberOfSongs; i++) {
    songMetaData[i] = song[i].getMetaData();
  }
  //
  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press keyboard to test: P, etc.");
  //
  for (int i=currentSong; i<numberOfSongs; i++) {
    println("File Name; ", songMetaData[i].fileName() );
    println("Song Length (in milliseconds); ", songMetaData[i].length() );
    println("Song Length (in seconds); ", songMetaData[i].length()/1000 );
    println("Song Length (in minutes and seconds); ", songMetaData[i].length()/1000/60, "minutes", (songMetaData[i].length()/1000)-(songMetaData[i].length()/1000/60*60), "seconds" );
    println("Song Title: ", songMetaData[i].title() );
    println("Author: ", songMetaData[i].author() );
    println("Composer: ", songMetaData[i].composer() );
    println("Orchestra: ", songMetaData[i].orchestra() );
    println("Albums: ", songMetaData[i].album() );
    println("Disk: ", songMetaData[i].disc() );
    println("Publisher: ", songMetaData[i].publisher() );
    println("Date Release: ", songMetaData[i].date() );
    println("Copyright: ", songMetaData[i].copyright() );
    println("Comments: ", songMetaData[i].comment() );
    println("Lyrics: ", songMetaData[i].lyrics() );
    println("Track: ", songMetaData[i].track() );
    println("Genre: ", songMetaData[i].genre() );
    println("Encoded: ", songMetaData[i].encoded() );
  }
  //
}

void draw() {
  buttons();
  text(songMetaData[currentSong].title(), width*1/4, height*0, width*1/2, height*1/10);

}//End draw() 

void keyPressed() {
  
  //
  if ( key == 'p' || key == 'P' ) {//Play-Pause Button
  if ( song[currentSong].isPlaying() ) {
    song[currentSong].pause();
  } else if ( song[currentSong].position() == song[currentSong].length() ) {//.length() = en
    song[currentSong].rewind();
    song[currentSong].play();
  } else {
    song[currentSong].play();
  }
  }//End of Play-Pause Button
  //
  if ( key == 's' || key == 'S' ) {//Stop Button
  if ( song[currentSong].isPlaying() ) {//Stop Button
    song[currentSong].pause();
    song[currentSong].rewind();
  } else if ( song[currentSong].position() == song[currentSong].length() ) {//.length() = end
    song[currentSong].rewind();
  } else {
    song[currentSong].rewind();
  }
  }//End of Stop Button
  //
  if (key == 'f' || key == 'F') song[currentSong].skip(1000);//Fast Forward 1 second
  if (key == 'r' || key == 'R') song[currentSong].skip(-1000);//Skip backwards 1 second
  //
  if (key == 'l' || key =='L' ) song[currentSong].loop(loopIntNum); //Loop button
  //
  //Next Button
  if ( key == 'n' || key == 'N' ) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1) {
        currentSong = numberOfSongs - numberOfSongs;
      } else {
      currentSong+=1;
      }
      song[currentSong].play();
    } else { 
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs-1 ) {
        currentSong = numberOfSongs - numberOfSongs;
    } else {
    currentSong += 1;
    }
    }
  }//End Next Button
  //
  
  //Previous Button
  if ( key == 'b' || key == 'B' ) {
  if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs) {
        currentSong = numberOfSongs-1;
      } else {
      currentSong--;
      }
      song[currentSong].play();
    } else { 
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        currentSong = numberOfSongs-1;
    } else {
    currentSong--;
    }
    }
  }//End Previous Button 
  //
}//End keyPressed()
