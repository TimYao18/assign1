/* please implement your assign1 code in this file. */

// positions
int bg1RX;
int bg2RX;
int enemyX;
int enemyY;
int fighterX;
int fighterY;
int hpX;
int hpY;
int hpRedX;
int hpRedY;
int hpRedLength;
int treasureX;
int treasureY;

int backgroundSpeed;
int enemySpeed;

// images
PImage bg1;
PImage bg2;
PImage enemy;
PImage fighter;
PImage hp;
PImage treasure;


void setup () {
  size(640,480) ;  // must use this size.
  // your code
  bg1RX = width; // bg1 right side position
  bg2RX = width * 2; // bg2 right side position
  
  // load images
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  enemy = loadImage("img/enemy.png");
  fighter = loadImage("img/fighter.png");
  hp = loadImage("img/hp.png");
  treasure = loadImage("img/treasure.png");
  
  // get random start position
  // hp image size = 210x30
  hpX = floor(random(width-210));
  hpY = floor(random(height-30));
  hpRedX = hpX+5;
  hpRedY = hpY;
  hpRedLength = floor(random(195));

  // enemy image size = 60x60
  enemyX = floor(random(width-60));
  enemyY = floor(random(height-60));
  
  // fighter image size = 50x50
  fighterX = floor(random(width-50));
  fighterY = floor(random(height-50));
  
  // treasure image size = 40x40
  treasureX = floor(random(width-40));
  treasureY = floor(random(height-40));  
  
  // speed
  backgroundSpeed = 2;
  enemySpeed = 3;
}

void draw() {
  // your code
  bg1RX = (bg1RX + backgroundSpeed) % (width * 2);
  bg2RX = (bg2RX + backgroundSpeed) % (width * 2);
  image(bg1, bg1RX-width, 0);
  image(bg2, bg2RX-width, 0);
  
  println(bg1RX, bg2RX);
  
  // hpRed shoud draw before hp
  fill(#FF0000);
  rect(hpRedX, hpRedY, hpRedLength, 30);
  image(hp, hpX, hpY);
  
  image(fighter, fighterX, fighterY);
  image(treasure, treasureX, treasureY);
  image(enemy, (enemyX+=enemySpeed)%width, enemyY);

}
