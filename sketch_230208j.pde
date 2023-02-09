//hilo dont fuck up any code

int room = 1;
PImage img;
boolean canMoveForward, canMoveBack, canMoveLeft, canMoveRight;
boolean foundRuneA=false, foundRuneB=false, foundRuneC=false;

boolean died;
//hilo when ever you do "died = true" then the player will die

boolean showPuzzleRoom1 = false;
boolean finishedPuzzleRoom1 = false;

void setup() {
  size(800, 800);
  background(0);
  fill(255);
  textSize(20);
  stroke(255);
  //room5();
}


void draw()
{
  
  background(0);
  
  if(died) {
    fill(255, 255, 255);
    textSize(56);
    text("LMAO You died", 240, 400);
    return;
  }
  
  
  //code to show the location of the mouse for testing
  fill(0);
  rect(0, 0, width, 30);
  fill(255);
  text("MouseX "+mouseX+"  MouseY "+mouseY, 0, 20);
 
  if(room == 1) {
    room1();
  }
  
  if(room == 1 && showPuzzleRoom1) {
    fill(247, 109, 45);
    noStroke();
    rect(100, 100, 600, 600);
    
    textSize(40);
    fill(0);
    text("Riddle: What is 9 + 10?", 230, 200);
    
    noFill();
    stroke(0);
    
    rect(400 - 200/2, 250, 200, 50);
    
    text("18", 400 - 200/2 + 5, 200 + 35 + 53);
    
    rect(400 - 200/2, 330, 200, 50);
    
    text("19", 400 - 200/2 + 5, 200 + 79 + + 35 + 53);
    
    rect(400 - 200/2, 410, 200, 50);
    
    text("21", 400 - 200/2 + 5, 410 + 35);
    
    rect(400 - 200/2, 410 + 80, 200, 50);
    
    text("fuck off", 400 - 200/2 + 5, 410 + 35 + 80);
    
    if(mousePressed) {
      if(mouseX > 400 - 200/2 && mouseY > 330 && mouseX < 400 - 200/2 +200 && mouseY < 330+ 50) {
        finishedPuzzleRoom1 = true;
        showPuzzleRoom1 = false;
        
        println("You got it correct");
      }
      
      if(mouseX > 400 - 200/2 && mouseY > 250 && mouseX < 400 - 200/2 +200 && mouseY < 250 + 50) {
        println("Your so fucking bad at math");
        
        died = true;
      }
      
      if(mouseX > 400 - 200/2 && mouseY > 410 && mouseX < 400 - 200/2 +200 && mouseY < 410 + 50) {
        println("Your so fucking bad at math");
        
        died = true;
      }
      
      if(mouseX > 400 - 200/2 && mouseY > 490 && mouseX < 400 - 200/2 +200 && mouseY < 490 + 50) {
        println("Your so fucking bad at math");
        
        died = true;
      }
      
      //if(mouseX > 490 - 200/2 && mouseY > 250 && mouseX < 400 - 200/2 +200 && mouseY < 490 + 50) {
      //  println("Your so fucking bad at math");
      //}
    }
    //text("18", 400 - 300/2, 250);
    
  }
}

  void drawControls() {

  //draw room panel
  stroke(255);
  fill(0);
  rect(0, 0, 800, 500);

  //Draw boxes
  stroke(247, 109, 45);
  strokeWeight(2);
  rect(300, 600, 200, 50); //Forward

  //Add text to the boxes
  fill(247, 109, 45);
  if (canMoveForward)
  {  text("Forward", 365, 632);
  }
 
  //Add text to the room panel
  fill(255);
  }

void mousePressed() {
  //check to see if a movement button hasen clicked
  if (canMoveForward && mouseX > 300 && mouseY > 600 && mouseX < 500 && mouseY < 650) {// Forward
  if(room == 1 && finishedPuzzleRoom1) {
     room=room+10;
  };
   
  {
   
    if(room == 1 && room + 10 == 11){
      showPuzzleRoom1 = true;
      
      
      
    }
    }


  background(0); //clear screen
  if (room==1) {
    room1();
  }
  if (room==11) {
    room11();
  }
  //if (room==3) {
  //  room3();
  //}
  //if (room==4) {
  //  room4();
  //}
  //if (room==5) {
  //  room5();
  //}
  //if (room==6) {
  //  room6();
  //}  
  // if (room==7) {
  //  room7();
  //}
  // if (room==8) {
  //  room8();
  //}
  // if (room==9) {
  //  room9();
  //}
  // if (room==10) {
  //  room10();
  //}
  // if (room==11) {
  //  room11();
  //}
  // if (room==12) {
  //  room12();
  //}
  // if (room==13) {
  //  room13();
  //}
  // if (room==14) {
  //  room14();
  //}
  // if (room==15) {
  //  room15();
  //}
  }
}


//Rooms are defined here

void room1() {
  canMoveForward = true;
  drawControls();
  stroke(255);
  fill(0);
  rect(0,0,800,500);
  fill(255);
  textSize(18);
  text("This is Room 1", 100, 200);
  text("A narrow passage leads ahead, all other routes are blocked", 100, 230);
  
  textSize(24);
  if(finishedPuzzleRoom1) {
    text("You idiot have solved puzzle 1. This allows access to the room above.", 100, 330);
  }
}

void room11() {
  canMoveForward = true;
  canMoveForward = true;
  drawControls();
  stroke(255);
  fill(0);
  rect(0,0,800,500);
  fill(255);
  text("This is Room 2", 100, 200);
  text("Go in the van. (Click left)", 100, 230);
}
