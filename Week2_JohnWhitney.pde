float t;
float numLines = 20;

boolean recording = false;

void setup() {
  size(1200, 800);
}


void draw() {
  background(0);

  translate(width/2, height/2);

  for (int i=0; i< numLines; i++) {
    stroke(255);
    strokeWeight(4);
    line(x1(t + i), y1(t + i), x2(t + i), y2(t + i));
  }
  
  for (int i=0; i< numLines; i++) {
    stroke(255, 25);
    strokeWeight(4);
    line(x3(t + i), y3(t + i), x4(t + i), y4(t + i));
  }
  
  if (recording) {
    saveFrame("Output/JohnWhitney_####.png");
    fill(255,0,0);
  } else {
    fill(255);
  }
  circle(570,370,10);
  
  t+=0.75;
}


void keyPressed() {
  if (key == 'r' || key == 'R') {
    recording = !recording;
  }
}

float x1(float t) {
  return sin(t/20) * 125;
}

float y1(float t) {
  return cos(t/20) * 125;
}

float x2(float t) {
  return sin(t/10) * 300;
}

float y2(float t) {
  return cos(t/10) *300;
}


float x3(float t) {
  return cos(t/20) * 125;
}

float y3(float t) {
  return sin(t/20) * 125;
}

float x4(float t) {
  return cos(t/10) * 300;
}

float y4(float t) {
  return sin(t/10) * 300;
}
