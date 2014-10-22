class Cahn_Jeremy_Creature extends Creature {

  float agitation = 0; 
  void setup() {
      size(400, 400);
  } 
  
  void setAgitation(float newAgitation) {
      agitation = newAgitation;
  }
  
  void draw(float x, float y) {
      background(0);
      stroke(255);
      noFill();
      
      setAgitation(map(mouseX, 0, width, 0, 1));
      
      float phase = frameCount * 0.05;   
      float phaseAddition = map(sin(phase), -1, 1, 0, 0.25);
      for(int i = 0; i < 10; i++){
      float xpos = sin(phase);                  
      float radius = map(x, -1, 1, 100, 300);  
      float lineWidth = map(x, -1, 1, 0, 3);  
      float r = map(x, -1, 1, 0, 255);
      float g = map(x, -1, 1, 255, 0);
      float b = map(x, -1, 1, 255, 125);
        
      r = lerp(255, r, agitation);
      g = lerp(255, g, agitation);
      b = lerp(255, b, agitation);
   
      stroke(r, g, b);
        
      float lineWidthAddition = random(map(agitation, 0, 1, 0, 50));
      strokeWeight(lineWidth);                
       
      ellipse(width / 2, height / 2, radius, radius);  
      phase = phase + phaseAddition;
      phaseAddition += 0.01;
        
      ellipse(width / 2, height / 2, 30, 30);   
      ellipse(width / 2, height / 2, 40, 30);      
      ellipse(width / 2, height / 2, 60, 60);   
      ellipse(width / 2, height / 2, 60, 30);   
      ellipse(width / 2, height / 2, 150, 60); 
    };       
  };
};



