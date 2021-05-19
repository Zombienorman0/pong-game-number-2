//displayWidth must be bigger than displayHeight
//return instructions to user if portrait or square
//procedure

void geometryCheck() {
  if(displayWidth >= displayHeight){
   fill(#CB16D8);
   textSize(32);
   text("this good screen for pong", 575, 40); 
  
    
  } else {
    textSize(32);
    text("this no good screen for pong", 10, 30); 
    exit();
  }
}
