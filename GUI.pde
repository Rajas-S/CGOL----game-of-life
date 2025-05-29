class GUI{
  float x=wallx/50;
  int bright = 255;
  boolean moveable = false;
  boolean gui = true;
  boolean guitog = false;
  boolean initgui = true;
  boolean gridtog = true;
  boolean gridtog1 = false;
  boolean waltog = false;
  boolean waltog1 = false;
  GUI(){
  }
  void show_gui(){
    if(gamestart==false){
      fill(240);
      textSize(40);
      textAlign(wallx/90,wally/100);
      text("Press Space to Start!",wallx/95,wally/1.05);
    }
    fill(10,10,10,120);
    rect(wallx/250,wally/100,wallx/1.01,wally/10);
    show_gui_speed();
    gridtog();
    walcol();    
    gameinfo();
    restart();
  }
  
  
  void show_gui_speed(){
    fill(120);
    rect(wallx/35,wally/15,wallx/6,wally/50);
    fill(0,0,140);
    rect(wallx/50,wally/15,x-wallx/50,wally/35);
    //rect(wallx/100,wally/100,wallx/5,wally/10);
    fill(0,0,100);
    ellipse(x,wally/12.5,wallx/30,wallx/30);
    fill(240);
    textSize(20);
    textAlign(wallx/90,wally/100);
    text("SIM Speed Control",wallx/100,wally/20);
    if(mouseX>(wallx/45)&&mouseX<(wally/35)+(wally/6.25)&&mouseY>wallx/35-wallx/30&&mouseY<wallx/35+wallx/15){
      print(1);
      moveable = true;
   
    }else{
      if(!mousePressed){
      moveable = false;
      }
    }
    if(mousePressed&&moveable==true){
      x=mouseX;
      if(x>(wally/35)+(wally/6.25)){
        x=(wally/35)+(wally/6.25);
      }else if (x<(wallx/45)){
        x=(wallx/45);
      }
    }
    bright = int(x)+100;
    if(gamestart==true){
      speed =((x/(wallx/50))*(x/(wallx/50))+3);
    }
  }
      
    
  void hide_gui(){
    noFill();
  }
  void gui_check(){
    if(gui==true){
      if(initgui==true){
        show_gui();
      }
     if(gamestart==true){
     fill(240);
     textSize(10);
     textAlign(wallx/90,wally/100);
     text("generation:"+str(gen),wallx/95,wally/1.01);
     }
    }
 
    else if (gui==false){
      hide_gui();
    }
    if(keyPressed&&(key=='g'||key=='G')){
      if(gui==false&&guitog==false){
        gui=true;
        guitog=true;
      }
      else if (gui==true&&guitog==false){
        gui=false;
        guitog=true;
      }
    }else{
      guitog = false;
    }
  }
  
  
  void gridtog(){
    if(gridtog == true){
      grid_show = true;
    }else if(gridtog == false){
      grid_show=false;
    }
    if(keyPressed&&(key=='c'||key=='C')){
      if(gridtog == false&&gridtog1==false){
        gridtog=true;
        gridtog1=true;
   
      }else if (gridtog == true&&gridtog1==false){
        gridtog=false;
        gridtog1=true;
      }
    }else{
       gridtog1=false;
    }
    
  }
  
  void walcol(){
    if(wall_collision){
     fill(240);
     textSize(15);
     text("Wall Collision: on",wallx/1.4,wally/10);  
    }else{
     fill(180);
     textSize(15);
     text("Wall Collision: off",wallx/1.4,wally/10);
    }
    if(waltog==true){
      wall_collision = true;
    }else{
      wall_collision=false;
    }
    if(keyPressed&&(key=='w'||key=='W')){
      if(waltog==true&&waltog1==false){
        waltog=false;
        waltog1=true;
      }else if(waltog==false&&waltog1==false){
        waltog=true;
        waltog1=true;
      }
      }else{
        waltog1=false;
    }
  }
  
  void gameinfo(){
    fill(240);
    textSize(10);
    text("Press Space to start sim. press 'w' to toggle wall collision.  press 'p' to toggle slideshow mode -->\n"+"while in slideshow mode, press space to move forward by one generation and '.' to move forward at full\n"+"speed. press 'c' to toggle grid. press't' to reset into custom mode, and 'r' to reset into random mode.\n"+" hold 'q' to paint in custom mode, and 'e' to erase.\n"+"  PRESS 'G' TO TOGGLE GUI (while sim is running)",wallx/3.5,wally/35);
  }
  
  
  void restart(){
    if(keyPressed&&(key=='t'||key=='T')){
      gen = 0;
      gamestart=false;
      gamestart = false;
      custom = false;
      //boolean cell_toggle = false;
      cell_toggle_mousepress = false;
      mousepress = false;
      loop = 0;
      gamespeedtog = false;
      slideshow = false;
      slideshowtog1 = false;
      gamestart1 = false;
      
      cell_stuff cell_stuff;
      GUI gui;
      
      wally = wallx;
      broad = wallx/grid;
      life = 0;
      Cells[] cell= new Cells[wallx*wally];
      cell_life.clear();
      cell_next.clear();
      
      
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
        if(keyPressed&&(key=='r'||key=='R')){
        gen = 0;
      gamestart=false;
      gamestart = false;
      custom = false;
      //boolean cell_toggle = false;
      cell_toggle_mousepress = false;
      mousepress = false;
      loop = 0;
      gamespeedtog = false;
      slideshow = false;
      slideshowtog1 = false;
      gamestart1 = false;
      
      cell_stuff cell_stuff;
      GUI gui;
      
      wally = wallx;
      broad = wallx/grid;
      life = 0;
      Cells[] cell= new Cells[wallx*wally];
      cell_life.clear();
      cell_next.clear();
      
      
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
      cell_stuff.randomised();
      
      
      
      
      
      
      
      //---------------------------------------------------------------------------------------------------------------------------->
        }


      
  }
}
  
  



    
  
  
