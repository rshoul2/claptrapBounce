PImage claptrap;
int xPosition, yPosition, xMove, yMove; //movement
int red, green, blue; //color change
int bounces, bounceLimit;


void setup() {
  size(640, 480);
  claptrap = loadImage("claptrap1.png");
  xPosition = int(random(0, 559)); //So he doesn't start
  yPosition = int(random(0, 389)); //in the wall.
  red = 255;
  green = 255;
  blue = 255;
  xMove = 2;
  yMove = 2;
  bounces = 0;
  bounceLimit = int(random(4, 8));
}

void draw() {
  background(0);

  if (xPosition<=0 || xPosition+80>=640) {
    xMove = -xMove;
    red = int(random(0, 255));
    green = int(random(0, 255));
    blue = int(random(0, 255));
    bounces++;
  }
  if (yPosition<=0 || yPosition+90>=480) {
    yMove = -yMove;
    red = int(random(0, 255));
    green = int(random(0, 255));
    blue = int(random(0, 255));
    bounces++;
  }
  /*Added so the original claptrap color in his glory can
   be seen every now and then =) */
  if (bounces == bounceLimit) {
    red = 255;
    green = 255;
    blue = 255;
    bounces = 0;
    bounceLimit = int(random(3, 8));
  }

  xPosition+=xMove;
  yPosition+=yMove;
  tint(red, green, blue);
  image(claptrap, xPosition, yPosition);
}

