void Drawings() {
  //Play and Pause Buttons
fill(white);
rect(playBoxX, playBoxY, playBoxWidth, playBoxHeight);
fill(red);
triangle(playX1, playY1, playX2, playY2, playX3, playY3);
//
fill(white);
rect(pauseBoxX, pauseBoxY, pauseBoxWidth, pauseBoxHeight);
fill(red);
rect(pauseX, pauseY, pauseWidth, pauseHeight);
rect(pause2X, pause2Y, pauseWidth, pauseHeight);
//
//Forward and Backward 1 Second Buttons
fill(white);
rect(fBoxX, fBoxY, fBoxWidth, fBoxHeight);
fill(red);
triangle(fTriangleX1, fTriangleY1, fTriangleX2, fTriangleY2, fTriangleX3, fTriangleY3);
rect(fRectX, fRectY, fRectWidth, fRectHeight);
fill(white);
rect(bBoxX, bBoxY, bBoxWidth, bBoxHeight);
fill(red);
triangle(bTriangleX1, bTriangleY1, bTriangleX2, bTriangleY2, bTriangleX3, bTriangleY3);
rect(bRectX, bRectY, fRectWidth, fRectHeight);
//
//Next Song Button
fill(white);
rect(nextSongBoxX, nextSongBoxY, nextSongBoxWidth, nextSongBoxHeight);
fill(red);
triangle(nextSongX1, nextSongY1, nextSongX2, nextSongY2, nextSongX3, nextSongY3);
triangle(nextSong2X1, nextSong2Y1, nextSong2X2, nextSong2Y2, nextSong2X3, nextSong2Y3);
//
//Before Song Button
fill(white);
rect(backSongBoxX, backSongBoxY, backSongBoxWidth, backSongBoxHeight);
fill(red);
triangle(backSongX1, backSongY1, backSongX2, backSongY2, backSongX3, backSongY3);
triangle(backSong2X1, backSong2Y1, backSong2X2, backSong2Y2, backSong2X3, backSong2Y3);
//
rect(quitX, quitY, quitWidth, quitHeight);
//Repeat Button
//ellipse(); //make it a perfect circle
//triangle();
//triangle();
//triangle();
//Show Image of Song
//triangle();
//
//
stroke(red);
line(barStartX, barY, barEndX, barY ); //where the progress bar should end
  stroke(0);
  TimeStamp = int( map(song[currentSong].position(), 0, song[currentSong].length(), barStartX, barEndX));
  line(barStartX, barY, TimeStamp, barY );
  
}
