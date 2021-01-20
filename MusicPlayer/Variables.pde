void buttons() {

playX1 = width*47/100;
playY1 = height*95/100;
playX2 = width*49/100;
playY2 = height*96/100;
playX3 = width*47/100;
playY3 = height*97/100;
//
playBoxX = width*92/200;
playBoxY = height*188/200;
playBoxWidth = width*4/100;
playBoxHeight = height*4/100;
//
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
fTriangleX1 = width*114/200;
fTriangleY1 = height*95/100;
fTriangleX2 = width*118/200;
fTriangleY2 = height*96/100;
fTriangleX3 = width*114/200;
fTriangleY3 = height*97/100;
fCircleX = width*58/100;
fCircleY = height*96/100;
fRectX = width*117/200;
fRectY = height*95/100;
fRectWidth = width*1/200;
fRectHeight = height*2/100;
bTriangleX1 = width*44/100;
bTriangleY1 = height*95/100;
bTriangleX2 = width*42/100;
bTriangleY2 = height*96/100;
bTriangleX3 = width*44/100;
bTriangleY3 = height*97/100;
bRectX = width*84/200;
bRectY = height*95/100;
bCircleX = width*43/100;
bCircleY = height*96/100;
bottomPanelX = width*0/100;
bottomPanelY = height*92/100;
bottomPanelWidth = width*100/100;
bottomPanelHeight = height*8/100;
//
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
//Forward and Back Buttons
fill(white);
ellipse(fCircleX, fCircleY, Diameter, Diameter);
fill(red);
triangle(fTriangleX1, fTriangleY1, fTriangleX2, fTriangleY2, fTriangleX3, fTriangleY3);
rect(fRectX, fRectY, fRectWidth, fRectHeight);
fill(white);
ellipse(bCircleX, bCircleY, Diameter, Diameter);
fill(red);
triangle(bTriangleX1, bTriangleY1, bTriangleX2, bTriangleY2, bTriangleX3, bTriangleY3);
rect(bRectX, bRectY, fRectWidth, fRectHeight);
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
