void buttons() {
//Play Button
playX1 = width*47/100;
playY1 = height*95/100;
playX2 = width*49/100;
playY2 = height*96/100;
playX3 = width*47/100;
playY3 = height*97/100;
playBoxX = width*92/200;
playBoxY = height*188/200;
playBoxWidth = width*4/100;
playBoxHeight = height*4/100;
//
//Pause Button
pauseX = width*104/200;
pauseY = height*94/100;
pauseWidth = width*1/200;
pauseHeight = height*4/100;
pause2X = width*107/200;
pause2Y = height*94/100;
pauseBoxX = width*102/200;
pauseBoxY = height*188/200;
pauseBoxWidth = width*4/100;
pauseBoxHeight = height*4/100;
//
//Forward 1 second
fTriangleX1 = width*114/200;
fTriangleY1 = height*95/100;
fTriangleX2 = width*118/200;
fTriangleY2 = height*96/100;
fTriangleX3 = width*114/200;
fTriangleY3 = height*97/100;
fBoxX = width*56/100;
fBoxY = height*94/100;
fBoxWidth = width*4/100;
fBoxHeight = height*4/100;
fRectX = width*117/200;
fRectY = height*95/100;
fRectWidth = width*1/200;
fRectHeight = height*2/100;
//
//Backwards 1 second
bTriangleX1 = width*44/100;
bTriangleY1 = height*95/100;
bTriangleX2 = width*42/100;
bTriangleY2 = height*96/100;
bTriangleX3 = width*44/100;
bTriangleY3 = height*97/100;
bRectX = width*84/200;
bRectY = height*95/100;
bBoxX = width*41/100;
bBoxY = height*94/100;
bBoxWidth = width*4/100;
bBoxHeight = height*4/100;
bottomPanelX = width*0/100;
bottomPanelY = height*92/100;
bottomPanelWidth = width*100/100;
bottomPanelHeight = height*8/100;
//
//Next Song Button
nextSongX1 = width*124/200;
nextSongY1 = height*95/100;
nextSongX2 = width*126/200;
nextSongY2 = height*96/100;
nextSongX3 = width*124/200;
nextSongY3 = height*97/100;
nextSong2X1 = width*126/200;
nextSong2Y1 = height*95/100;
nextSong2X2 = width*128/200;
nextSong2Y2 = height*96/100;
nextSong2X3 = width*126/200;
nextSong2Y3 = height*97/100; 
nextSongBoxX = width*122/200;
nextSongBoxY = height*94/100;
nextSongBoxWidth = width*4/100;
nextSongBoxHeight = height*4/100;
//
//Before Song Button
backSongX1 
backSongY1 
backSongX2 
backSongY2 
backSongX3
backSongY3;
 backSong2X1
 backSong2Y1
 backSong2X2
 backSong2Y2
 backSong2X3
 backSong2Y3;
 backSongBoxX
 backSongBoxY
 backSongBoxWidth
 backSongBoxHeight;
//
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
//Repeat Button
//ellipse(); //make it a perfect circle
//triangle();
//triangle();
//Shuffle Button
//Show Song List
//triangle();
//Show Image of Song
//triangle();
//
//
}
