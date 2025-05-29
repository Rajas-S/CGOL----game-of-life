boolean grid_show = true;
boolean wall_collision = false;
boolean slideshowtog = false;
float speed=1;
int grid =100;


int randomiser_temp = 35;


int wallx = 600;
//modes: you can set modes in the setup seed

//custom --> use mouse to paint, hold 'q' to hold paint, hold 'e' to hold erase, press 'space' to start seed
// sideshow --> press 'p' to turn on slide show. any key/mouse to move forward by one, hold '.' to move forward at full speed
//------------------------------------------------------------------------------->

int gen = 0;
boolean gamestart = false;
boolean custom = false;
//boolean cell_toggle = false;
boolean cell_toggle_mousepress = false;
boolean mousepress = false;
int loop = 0;
boolean gamespeedtog = false;
boolean slideshow = false;
boolean slideshowtog1 = false;
boolean gamestart1 = false;

cell_stuff cell_stuff;
GUI gui;

int wally = wallx;
float broad = wallx/grid;
int life = 0;
Cells[] cell= new Cells[wallx*wally];
ArrayList<Integer> cell_life = new ArrayList<Integer>();
ArrayList<Integer> cell_next = new ArrayList<Integer>();




void settings(){
  size(wallx,wally);
  
}

void setup(){
  speed=1000;
  strokeWeight(1);
  frameRate(1000);
  gui = new GUI();
  cell_stuff = new cell_stuff();
  for(int i=0; i<grid;i++){
    for(int j=0; j<grid;j++){
      cell[loop] = new Cells(int(j*broad),int(i*broad),broad);
      loop++;
    }
  }
  for(int o = 0;o<grid*grid;o++){
    cell_next.add(0);
  }
  
  for(int k = 0;k<grid*grid;k++){
    cell_life.add(life);
  }
  
  if(slideshowtog==false){
  slideshowtog=true;
}
else if(slideshowtog==true){
  slideshowtog=false;
}
  
 
  
  
  
  //set cells --> seed --------------------------------------------------------------------------------------------------------->
 //modes: randomised,custom,destroyer,HWSS,cell1,infinite1
  cell_stuff.custom();
  
  
  
  
  
  
  
  //---------------------------------------------------------------------------------------------------------------------------->
}

void draw(){
  gui.gui_check();
  if((gamestart == false)&&(custom==true)){
    for(int p = 0;p<grid*grid;p++){
      cell[p].cell_seed();
    }
    gui.gui_check();
    return;
  }else if (gamespeedtog == false){
    gamestart = true;
    gamespeedtog = true;
    gamespeedtog = true;
  }
  delay(int(1000/speed));

  slideshow();
  //background(240);
  for(int i = 0;i<grid*grid;i++){
    cell[i].cell_colour(i);
  }
  for(int j = 0;j<grid*grid;j++){
    cell[j].cell_check(j);
  }
    
  if(gamestart1==false){
    gamestart=false;
    gamestart1=true;
  }
  if(gamestart==false){
    if(keyPressed&&key==' '){
      gamestart=true;
    }
    else{
      gui.gui_check();
      return;
  }
 }
  
  if(slideshow == false){
    for(int k = 0;k<grid*grid;k++){
      cell[k].cell_update(k);
    }  
    gen+=1;
    //cell_next.clear();
    //for(int o = 0;o<grid*grid;o++){
    //  cell_next.add(0);
    //}
  }
  else if(slideshow == true){
    if((keyPressed && mousepress==false)){
        mousepress = true;
        for(int k = 0;k<grid*grid;k++){
        cell[k].cell_update(k);
       }  
        gen+=1;
      //  cell_next.clear();
      //  for(int o = 0;o<grid*grid;o++){
      //  cell_next.add(0);
      //}
    }
  }
   if((keyPressed==true)){
     if(key == '.'||key=='>'){
       mousepress=false;
     }else{
       mousepress = true;
     }
   }else{
     mousepress=false;
   }

 gui.gui_check();
 if(grid_show == false){
      noStroke();
    }else{
      stroke(0);
    }
   
}

void slideshow(){
  if(slideshowtog==true){
    slideshow=false;
  }else if (slideshowtog==false){
    slideshow=true;
  }
  if(keyPressed&&(key=='p'||key=='P')){
    if(slideshowtog==false&&slideshowtog1==false){
      slideshowtog=true;
      slideshowtog1=true;
    }
    else if(slideshowtog==true&&slideshowtog1==false){
      slideshowtog=false;
      slideshowtog1=true;
    }
  }else{
    slideshowtog1=false;
  }

}
