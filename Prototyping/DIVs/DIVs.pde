// Setup display and canvas sizing
fullScreen();
println("Display Resolution:", displayWidth, displayHeight);

background(200); // Standard light grey background

int appWidth = displayWidth;
int appHeight = displayHeight;

// Paper Dimensions from Grid
float paperWidth = 14.5; 
float paperHeight = 11.8;

// Total layout width based on chart:
  // Leftmost edge (Mute at 7.4) to rightmost edge (Stop at 20.2 + 1.7 = 21.9)
  float contentWidth = 21.9 - 7.4; // 14.5 mm
  
  // Convert mm dimensions into screen pixels
  float layoutWidthPixels = appWidth * contentWidth / paperWidth;
  float muteXPixels = appWidth * 7.4 / paperWidth;
  
 // Horizontal shift (aligns X = 7.4 to the screen's left edge X = 0)
  float xOffsetPixels = -(appWidth * 7.4 / paperWidth);

  // Vertical shift (aligns Y = 4.9 to the screen's top edge Y = 0)
  float yOffsetPixels = -(appHeight * 4.9 / paperHeight);

pushMatrix();
translate(xOffsetPixels, yOffsetPixels); // Center and stretch to full screen

// ==========================================
  // 1. IMAGE
  // ==========================================
  float imageX = appWidth * 12.1 / paperWidth;
  float imageY = appHeight * 4.9 / paperHeight;
  float imageWidth = appWidth * 5.0 / paperWidth;
  float imageHeight = appHeight * 5.0 / paperHeight;
  rect(imageX, imageY, imageWidth, imageHeight);

  // ==========================================
  // 2. SONG NAME
  // ==========================================
  float songNameX = appWidth * 9.9 / paperWidth;
  float songNameY = appHeight * 10.3 / paperHeight;
  float songNameWidth = appWidth * 4.7 / paperWidth;
  float songNameHeight = appHeight * 1.8 / paperHeight;
  rect(songNameX, songNameY, songNameWidth, songNameHeight);

  // ==========================================
  // 3. ARTIST NAME
  // ==========================================
  float artistNameX = appWidth * 9.9 / paperWidth;
  float artistNameY = appHeight * 12.5 / paperHeight;
  float artistNameWidth = appWidth * 3.2 / paperWidth;
  float artistNameHeight = appHeight * 1.0 / paperHeight;
  rect(artistNameX, artistNameY, artistNameWidth, artistNameHeight);

  // ==========================================
  // 4. HEART
  // ==========================================
  float heartX = appWidth * 16.4 / paperWidth;
  float heartY = appHeight * 10.8 / paperHeight;
  float heartWidth = appWidth * 1.0 / paperWidth;
  float heartHeight = appHeight * 1.0 / paperHeight;
  rect(heartX, heartY, heartWidth, heartHeight);

  // ==========================================
  // 5. PROGRESS BAR & TIME ROW
  // ==========================================
  float remainingTimeX = appWidth * 8.7 / paperWidth;
  float remainingTimeY = appHeight * 13.9 / paperHeight;
  float remainingTimeWidth = appWidth * 1.6 / paperWidth;
  float remainingTimeHeight = appHeight * 1.0 / paperHeight;
  rect(remainingTimeX, remainingTimeY, remainingTimeWidth, remainingTimeHeight);

  float progressBarX = appWidth * 10.6 / paperWidth;
  float progressBarY = appHeight * 13.9 / paperHeight;
  float progressBarWidth = appWidth * 7.2 / paperWidth;
  float progressBarHeight = appHeight * 0.5 / paperHeight;
  rect(progressBarX, progressBarY, progressBarWidth, progressBarHeight);

  float elapsedTimeX = appWidth * 18.0 / paperWidth;
  float elapsedTimeY = appHeight * 13.9 / paperHeight;
  float elapsedTimeWidth = appWidth * 1.6 / paperWidth;
  float elapsedTimeHeight = appHeight * 1.0 / paperHeight;
  rect(elapsedTimeX, elapsedTimeY, elapsedTimeWidth, elapsedTimeHeight);

  float totalTimeX = appWidth * 19.9 / paperWidth;
  float totalTimeY = appHeight * 13.9 / paperHeight;
  float totalTimeWidth = appWidth * 1.6 / paperWidth;
  float totalTimeHeight = appHeight * 1.0 / paperHeight;
  rect(totalTimeX, totalTimeY, totalTimeWidth, totalTimeHeight);

  // ==========================================
  // 6. CONTROLS ROW
  // ==========================================
  float muteX = appWidth * 7.4 / paperWidth;
  float muteY = appHeight * 15.5 / paperHeight;
  float muteWidth = appWidth * 1.7 / paperWidth;
  float muteHeight = appHeight * 1.2 / paperHeight;
  rect(muteX, muteY, muteWidth, muteHeight);

  float shuffleX = appWidth * 9.2 / paperWidth;
  float shuffleY = appHeight * 15.5 / paperHeight;
  float shuffleWidth = appWidth * 1.7 / paperWidth;
  float shuffleHeight = appHeight * 1.2 / paperHeight;
  rect(shuffleX, shuffleY, shuffleWidth, shuffleHeight);

  float backwardX = appWidth * 11.2 / paperWidth;
  float backwardY = appHeight * 15.5 / paperHeight;
  float backwardWidth = appWidth * 1.7 / paperWidth;
  float backwardHeight = appHeight * 1.2 / paperHeight;
  rect(backwardX, backwardY, backwardWidth, backwardHeight);

  float playPauseX = appWidth * 13.4 / paperWidth;
  float playPauseY = appHeight * 15.5 / paperHeight;
  float playPauseWidth = appWidth * 1.7 / paperWidth;
  float playPauseHeight = appHeight * 1.2 / paperHeight;
  rect(playPauseX, playPauseY, playPauseWidth, playPauseHeight);

  float forwardX = appWidth * 15.6 / paperWidth;
  float forwardY = appHeight * 15.5 / paperHeight;
  float forwardWidth = appWidth * 1.7 / paperWidth;
  float forwardHeight = appHeight * 1.2 / paperHeight;
  rect(forwardX, forwardY, forwardWidth, forwardHeight);

  float loopX = appWidth * 17.8 / paperWidth;
  float loopY = appHeight * 15.5 / paperHeight;
  float loopWidth = appWidth * 1.7 / paperWidth;
  float loopHeight = appHeight * 1.2 / paperHeight;
  rect(loopX, loopY, loopWidth, loopHeight);

  float stopX = appWidth * 20.2 / paperWidth;
  float stopY = appHeight * 15.5 / paperHeight;
  float stopWidth = appWidth * 1.7 / paperWidth;
  float stopHeight = appHeight * 1.2 / paperHeight;
  rect(stopX, stopY, stopWidth, stopHeight);

  popMatrix();
