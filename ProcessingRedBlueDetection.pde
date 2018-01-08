PImage img;

void setup() {
  size(800, 100);
  img = loadImage("sample.png");
}

void draw() {
  /*** 画像を全て黒色にする ***/
//  image(img, 0, 0);
//  img.loadPixels();
//  for (int y = 0; y < 100; y++) {
//    for (int x = 0; x < 800; x++) {
//      img.pixels[x + y * 800] = color(0, 0, 0);
//    }
//  }
//  img.updatePixels();

  int [] redValues = new int [8];
  int [] greenValues = new int [8];
  int [] blueValues = new int [8];

  image(img, 0, 0);
  img.loadPixels();
  for (int i = 0; i < 8; i++) {
    for (int y = 0; y < 100; y++) {
      for (int x = i*100; x < (i+1)*100; x++) {
        redValues[i] += red(img.pixels[x + y * 800]);
        greenValues[i] += green(img.pixels[x + y * 800]);
        blueValues[i] += blue(img.pixels[x + y * 800]);
      }
    }
    redValues[i] = redValues[i] / 10000;
    greenValues[i] = greenValues[i] / 10000;
    blueValues[i] = blueValues[i] / 10000;
  }
  
  println("red");
  println(redValues);
  
  println("green");
  println(greenValues);
  
  println("blue");
  println(blueValues);
  
  noLoop();

}
