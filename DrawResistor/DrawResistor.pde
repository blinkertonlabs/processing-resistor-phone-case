//  Blinkerton Labs
//  Draw a resistor icon, and save it
//  in the sketch directory as an SVG


import processing.svg.*;



void setup() 
{
  size(300, 950);
  noLoop();
  beginRecord(SVG, "ResistorIcon.svg");
}


void draw() 
{  
  float lineThickness = 15;
  
  float xBuffer = 10;
  
  float resistorAngle = 15;
  float yIncrement = tan(radians(resistorAngle)) * (width/2);
  
  // Setup all the points
  
  float xCenter   = width/2;
  float xLeft     = 0 + xBuffer;  
  float xRight    = width - xBuffer;
  
  float point_01_x = xCenter;
  float point_01_y = 10;
  
  
  float lengthOfStraightSegment = 140;
  
  //  Likely could be done in a for loop - but this was quick
  float point_02_x = xCenter;
  float point_02_y = point_01_y + lengthOfStraightSegment;
  
  float point_03_x = xRight;
  float point_03_y = point_02_y + yIncrement;
  
  float point_04_x = xLeft;
  float point_04_y = point_03_y + yIncrement*2;
  
  float point_05_x = xRight;
  float point_05_y = point_04_y + yIncrement*2;
  
  float point_06_x = xLeft;
  float point_06_y = point_05_y + yIncrement*2;
  
  float point_07_x = xRight;
  float point_07_y = point_06_y + yIncrement*2;
  
  float point_08_x = xLeft;
  float point_08_y = point_07_y + yIncrement*2;
  
  float point_09_x = xRight;
  float point_09_y = point_08_y + yIncrement*2;
  
  float point_10_x = xLeft;
  float point_10_y = point_09_y + yIncrement*2;
  
  float point_11_x = xCenter;
  float point_11_y = point_10_y + yIncrement;
  
  float point_12_x = xCenter;
  float point_12_y = point_11_y + lengthOfStraightSegment;
  
  
  //  Draw all the lines
  strokeWeight(lineThickness);  // Beastly
  
  //  TODO - put in for loop
  line(point_01_x, point_01_y, point_02_x, point_02_y);
  line(point_02_x, point_02_y, point_03_x, point_03_y);
  line(point_03_x, point_03_y, point_04_x, point_04_y);
  line(point_04_x, point_04_y, point_05_x, point_05_y);
  line(point_05_x, point_05_y, point_06_x, point_06_y);
  line(point_06_x, point_06_y, point_07_x, point_07_y);
  line(point_07_x, point_07_y, point_08_x, point_08_y);
  line(point_08_x, point_08_y, point_09_x, point_09_y);
  line(point_09_x, point_09_y, point_10_x, point_10_y);
  line(point_10_x, point_10_y, point_11_x, point_11_y);
  line(point_11_x, point_11_y, point_12_x, point_12_y);

  endRecord();
}