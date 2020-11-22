Spaceship barry = new Spaceship();
Star[] spaceSky = new Star[150];
public void setup() 
{
  size(500, 500);
  background(0);
  for(int i = 0; i < spaceSky.length; i++){
    spaceSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  barry.show();
  barry.move();
  for(int i = 0; i < spaceSky.length; i++){
    spaceSky[i].show();
  }
}
public void keyPressed()
{
  if(key == 'w'){
    barry.accelerate(.5);
  } else if(key == '1'){
    barry.turn(-5);
  } else if(key == '2'){
    barry.turn(5);
  } else if(key == '3'){
    barry.hyperspace();
  }
}

