class Cells{
  Cells(int x ,int y, float broad){
    if(grid_show == false){
      noStroke();
    }
    fill(40);
    rect(x,y,broad,broad);
  }
  
  void cell_colour(int index){
    //background(255);
    if(cell_life.get(index) == 1){
      fill(255);
      rect(((index%grid))*broad,broad*(index/grid),broad,broad);
 
    }
    else{
      fill(40);
      rect((index%grid)*broad,broad*(index/grid),broad,broad);
    }
  }
  
  void cell_check(int index){
    int counter = 0;
    //count alive neighbours
    if(wall_collision == false){
      if(cell_life.get(((index-grid-1)%(grid*grid)+(grid*grid))%(grid*grid)) == 1){
       counter+=1;
      }
      
      if(cell_life.get(((index-grid)%(grid*grid)+(grid*grid))%(grid*grid)) == 1){
        counter+=1;
      }
      
        
      if(cell_life.get(((index-grid+1)%(grid*grid)+(grid*grid))%(grid*grid)) == 1){
        counter+=1;
      }
      
     
      if(cell_life.get(((index-1)%(grid*grid)+(grid*grid))%(grid*grid)) == 1){
        counter+=1;
      }
    
      if(cell_life.get(((index+1)%(grid*grid)+(grid*grid))%(grid*grid)) == 1){
        counter+=1;
      }
      
      if(cell_life.get(((index+grid-1)%(grid*grid)+(grid*grid))%(grid*grid)) == 1){
        counter+=1;
      }
      
      if(cell_life.get(((index+grid)%(grid*grid)+(grid*grid))%(grid*grid)) == 1){
        counter+=1;
      }
      
    
      if(cell_life.get(((index+grid+1)%(grid*grid)+(grid*grid))%(grid*grid)) == 1){
        counter+=1;
      }
    }
    else{
      if(index>grid){
          if(cell_life.get(((index-grid-1)%(grid*grid)+(grid*grid))%(grid*grid)) == 1){
            counter+=1;
          }
      }
      
      if(index>grid-1){
          if(cell_life.get(((index-grid)%(grid*grid)+(grid*grid))%(grid*grid)) == 1){
            counter+=1;
          }
      }
      if(index>grid-2)  {  
          if(cell_life.get(((index-grid+1)%(grid*grid)+(grid*grid))%(grid*grid)) == 1){
            counter+=1;
          }
      } 
      if(index>0){
          if(cell_life.get(((index-1)%(grid*grid)+(grid*grid))%(grid*grid)) == 1){
            counter+=1;
          }
      }
      if(index<grid*grid){
          if(cell_life.get(((index+1)%(grid*grid)+(grid*grid))%(grid*grid)) == 1){
            counter+=1;
          }
       }
        
       if(index<(grid*grid)-grid+1) {
          if(cell_life.get(((index+grid-1)%(grid*grid)+(grid*grid))%(grid*grid)) == 1){
            counter+=1;
          }
       }
      if(index<(grid*grid)-grid) {
        if(cell_life.get(((index+grid)%(grid*grid)+(grid*grid))%(grid*grid)) == 1){
          counter+=1;
        }
      }
      if(index<(grid*grid)-grid-1){
        if(cell_life.get(((index+grid+1)%(grid*grid)+(grid*grid))%(grid*grid)) == 1){
          counter+=1;
         }
    }
   }
    
    
    
    
    
    
    if(counter<2){
      cell_next.set(index,0);
    }
    if(counter==2&&cell_life.get(index)==1){
      cell_next.set(index,1);
    }
    if(counter>3){
      cell_next.set(index,0);
    }
    if(counter==3){
      cell_next.set(index,1);
    }
    
    if(wall_collision == true){
        if(index>grid*grid-grid){
          cell_next.set(index,0);
        }
        if(index<grid){
          cell_next.set(index,0);
        }
        if((index%grid)*broad==broad*grid-1){
          cell_next.set(index,0);
        }
        if((index%grid)*broad==0){
          cell_next.set(index,0);
        }
    }
    
  }
  
  void cell_update(int index){
    if(cell_next.get(index)==1){
      cell_life.set(index,1);
    }
    else{
      cell_life.set(index,0);
    }
  
  }
  void cell_seed(){
    int x,y;
    int index;
    x = mouseX/(int(broad));
    y = mouseY/(int(broad));
    y = y*grid;
    index = x+y;
    if(keyPressed&&key == ' '){
      gamestart = true;
    }
    else{
      if(mousePressed&&cell_toggle_mousepress==false){
        x = mouseX/(int(broad));
        y = mouseY/(int(broad));
        y = y*grid;
        index = x+y;
        if(cell_life.get(index)==0){
          cell_life.set(index,1);
          cell_colour(index);
         
        }
        else if(cell_life.get(index)==1){
           cell_life.set(index,0);
           cell_colour(index);;
          }
        }
      }
      if(mousePressed==true){
        x = mouseX/(int(broad));
        y = mouseY/(int(broad));
        y = y*grid;
        index = x+y;
        
        cell_toggle_mousepress = true;
      }else{
        cell_toggle_mousepress = false;
        }
          
      if(keyPressed&&(key=='q'||key=='Q')){
          cell_life.set(index,1);
          cell_colour(index);
          cell_toggle_mousepress = false;
        }
         else if(keyPressed&&(key=='e'||key=='E')){
          cell_life.set(index,0);
          cell_colour(index);
          cell_toggle_mousepress = false;
        }
    
  }
    
  
}
