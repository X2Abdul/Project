class Target
{
float cupx;
float cupy;
int target;
int cupcolour;
float cupsize;

Target(){
  cupx = random(400);
  cupy = random(400);
  cupcolour = color(random(255),random(255),random(255));
  cupsize = random(100);
}

void draw(){
  fill(cupcolour);
  circle (cupx,cupy,cupsize);
  
  }
  

}
