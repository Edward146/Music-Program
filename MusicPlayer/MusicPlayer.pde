
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
//Change line 14 and 15 whenever you add a song.
int numberOfSongs = 4;
AudioPlayer[] song = new AudioPlayer[4]; //creates "Play List" cariable holding extensions WAV, AIFF, AU, SND, and MP3
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
int loopIntNum = 1;
int currentSong = numberOfSongs - numberOfSongs;
//Skip 1 second
float fTriangleX1, fTriangleY1, fTriangleX2, fTriangleY2, fTriangleX3, fTriangleY3;
float fBoxX, fBoxY, fBoxWidth, fBoxHeight;
float fRectX, fRectY, fRectWidth, fRectHeight;
//Go back 1 second
float bTriangleX1, bTriangleY1, bTriangleX2, bTriangleY2, bTriangleX3, bTriangleY3;
float bBoxX, bBoxY, bBoxWidth, bBoxHeight;
float bRectX, bRectY;
//Play song
int playX1, playY1, playX2, playY2, playX3, playY3;
float playBoxX, playBoxY, Diameter, playBoxWidth, playBoxHeight;
//Pause song
float pauseX, pauseY, pauseWidth, pauseHeight;
float pause2X, pause2Y;
float pauseBoxX, pauseBoxY, pauseBoxWidth, pauseBoxHeight;
//Next song
float nextSongX1, nextSongY1, nextSongX2, nextSongY2, nextSongX3, nextSongY3;
float nextSong2X1, nextSong2Y1, nextSong2X2, nextSong2Y2, nextSong2X3, nextSong2Y3;
float nextSongBoxX, nextSongBoxY, nextSongBoxWidth, nextSongBoxHeight;
//Song before
float backSongX1, backSongY1, backSongX2, backSongY2, backSongX3, backSongY3;
float backSong2X1, backSong2Y1, backSong2X2, backSong2Y2, backSong2X3, backSong2Y3;
float backSongBoxX, backSongBoxY, backSongBoxWidth, backSongBoxHeight;
//Exit program
float quitX, quitY, quitWidth, quitHeight;
float bottomPanelX, bottomPanelY, bottomPanelWidth, bottomPanelHeight;
//Loop button
float loopX, loopY, loopDiameter;
float loopBoxX, loopBoxY, loopBoxWidth, loopBoxHeight;
float loopX1, loopY1, loopX2, loopY2, loopX3, loopY3; 
float loop2X1, loop2Y1, loop2X2, loop2Y2, loop2X3, loop2Y3;
//Progress Bar
float barStartX, barEndX, barY;
int position;
int TimeStamp = 0;
//Loop button
int x, y;
int loop_int_num = 1; 
boolean loop_all;
boolean selected;
boolean loop_one;
boolean loop_selected;
float colour;
//Backround image
PImage pic;
float imageStartWidth, imageStartHeight, imageWidth, imageHeight;
float imageWidthRatio, imageHeightRatio;
color black = #000000, white = #FFFFFF, red = #F52525, grey = #A0A0A0;

void setup() {
  fullScreen();
  minim = new Minim(this);
  song[currentSong] = minim.loadFile("../Music/Mirror Mind - Bobby Richards.mp3"); //able to pass absolute path, file name, and URL
  song[currentSong+=1] = minim.loadFile("../Music/Calvin Harris - josh pan.mp3");
  song[currentSong+=1] = minim.loadFile("../Music/Muriel - Bobby Richards.mp3");
  song[currentSong+=1] = minim.loadFile("../Music/Beyond - Patrick Patrikios.mp3");
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
    
    frameRate(60);
  }
  //background image
  pic = loadImage("Fireplace.png");
  imageWidthRatio = 1920.0/1920.0;
  imageHeightRatio = 1080.0/1920.0;
  imageStartWidth = width*0;
  imageStartHeight = height*0;
  imageWidth = width*imageWidthRatio;
  imageHeight = width*imageHeightRatio;
  if ( imageWidth > width ) println("crap");
  if (imageHeight > height) println("poop");
  image(pic, imageStartWidth, imageStartHeight, imageWidth, imageHeight);
}

void draw() {
  Background();
  buttons();
  Drawings();
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
void mousePressed() {
  //Play Button
  if (mouseX>playBoxX && mouseX<playBoxX+playBoxWidth && mouseY>playBoxY && mouseY<playBoxY+playBoxHeight) {
    song[currentSong].play();
  }
  
//Pause Button
  if (mouseX>pauseBoxX && mouseX<pauseBoxX+pauseBoxWidth && mouseY>pauseBoxY && mouseY<pauseBoxY+pauseBoxHeight) {
    song[currentSong].pause();
}

//Forward Button
  if (mouseX>fBoxX && mouseX<fBoxX+fBoxWidth && mouseY>fBoxY && mouseY<fBoxY+fBoxWidth) {
    song[currentSong].skip(1000);
  }
  
//Back Button
  if (mouseX>bBoxX && mouseX<bBoxX+bBoxWidth && mouseY>bBoxY && mouseY<bBoxY+bBoxHeight) {
    song[currentSong].skip(-1000);
  }
  
//Next Song Button
  if (mouseX>nextSongBoxX && mouseX<nextSongBoxX+nextSongBoxWidth && mouseY>nextSongBoxY && mouseY<nextSongBoxY+nextSongBoxHeight) {
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
  }
//Before Song Button
  if (mouseX>backSongBoxX && mouseX<backSongBoxX+backSongBoxWidth && mouseY>backSongBoxY && mouseY<backSongBoxY+backSongBoxHeight) {
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
  }
  //Quit Button
  if (mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY && mouseY<quitY+quitWidth) {
   exit (); 
  }
  
  /*
  x = mouseX;
  y = mouseY;
  if (mouseX > loopBoxX && mouseX < loopBoxX + loopBoxWidth && mouseY > loopBoxY && mouseY < loopBoxY + loopBoxHeight) {
    colour = get(x, y);
    if (colour == black || colour == grey) {
      loop_all = false;
      selected = false;
      if (loop_one == false) {
        loop_one = true;
      }
      if (loop_selected == true) {
        loop_one = false;
        loop_selected = false;
      }
    }
    colour = get(x, y);
    if (colour == white) {
      if (mouseX > loopBoxX && mouseX < loopBoxX + loopBoxWidth && mouseY > loopBoxY && mouseY < loopBoxY + loopBoxHeight) {
        loop_all = false;
        selected = false;
        if (loop_one == false) {
          loop_one = true;
        }
        if (loop_selected == true) {
          loop_one = true;
          loop_selected = false;
        }
      }
    }
  }
*/
}

void mouseReleased() {
  //Progress bar
  if (mouseX >= barStartX && mouseX <= barEndX && mouseY >= barY && mouseY <= barY+5) {
    position = int( map(mouseX, barStartX, barEndX, 0, song[currentSong].length() ) );
    song[currentSong].cue(position);
  }
}
