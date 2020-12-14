ArrayList <Asteroid> obs = new ArrayList <Asteroid>();
Spaceship barry = new Spaceship();
Star[] spaceSky = new Star[150];
public void setup() 
{
  size(500, 500);
  background(0);
  for(int i = 0; i < spaceSky.length; i++){
    spaceSky[i] = new Star();
  }
  for(int i = 0; i < 20; i++){
    obs.add(new Asteroid());
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
  for(int i = 0; i < obs.size(); i++){
    obs.get(i).show();
    obs.get(i).move();
    float d = dist((float)barry.getX(), (float)barry.getY(), (float)obs.get(i).getX(), (float)obs.get(i).getY());
    if(d < 10){
      obs.remove(i);
    }
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
