class cell_stuff{
  cell_stuff(){
  }
  
  void cell1(){
  cell_life.set(5655,1);
  cell_life.set(5650,1);
  cell_life.set(5050,1);
  cell_life.set(5055,1);
  cell_life.set(5049,1);
  cell_life.set(5051,1);
  cell_life.set(5052,1);
  cell_life.set(5053,1);
  cell_life.set(5054,1);
  cell_life.set(5056,1);
  
  cell_life.set(5155,1);
  cell_life.set(5255,1);
  cell_life.set(5355,1);
  cell_life.set(5455,1);
  cell_life.set(5555,1);
  
  cell_life.set(5150,1);
  cell_life.set(5250,1);
  cell_life.set(5350,1);
  cell_life.set(5450,1);
  cell_life.set(5550,1);
  
  cell_life.set(4553,1);
  cell_life.set(4552,1);
  cell_life.set(4551,1);
  cell_life.set(4550,1);
  cell_life.set(4549,1);
  cell_life.set(4548,1);
  cell_life.set(4547,1);
  cell_life.set(4546,1);
  
  cell_life.set(4546,1);
  cell_life.set(4646,1);
  cell_life.set(4746,1);
  cell_life.set(4846,1);
  cell_life.set(4946,1);
  cell_life.set(5046,1);
  cell_life.set(5146,1);
  cell_life.set(5246,1);
  cell_life.set(5346,1);
  cell_life.set(5446,1);
  cell_life.set(5546,1);
  cell_life.set(5646,1);
  cell_life.set(5746,1);
  cell_life.set(5846,1);
  cell_life.set(5946,1);
  
  cell_life.set(5953,1);
  cell_life.set(5952,1);
  cell_life.set(5951,1);
  cell_life.set(5950,1);
  cell_life.set(5949,1);
  cell_life.set(5948,1);
  cell_life.set(5947,1);
  cell_life.set(5946,1);
  
  
  cell_life.set(5954,1);
  cell_life.set(5955,1);
  cell_life.set(5956,1);
  cell_life.set(5957,1);
  cell_life.set(5958,1);
  cell_life.set(5959,1);
  
  cell_life.set(4554,1);
  cell_life.set(4555,1);
  cell_life.set(4556,1);
  cell_life.set(4557,1);
  cell_life.set(4558,1);
  cell_life.set(4559,1);
  
  cell_life.set(4559,1);
  cell_life.set(4659,1);
  cell_life.set(4759,1);
  cell_life.set(4859,1);
  cell_life.set(4959,1);
  cell_life.set(5059,1);
  cell_life.set(5159,1);
  cell_life.set(5259,1);
  cell_life.set(5359,1);
  cell_life.set(5459,1);
  cell_life.set(5559,1);
  cell_life.set(5659,1);
  cell_life.set(5759,1);
  cell_life.set(5859,1);
  cell_life.set(5959,1);
  
  cell_life.set(4825,1);
  cell_life.set(4725,1);
  cell_life.set(4925,1);
  cell_life.set(4926,1);
  cell_life.set(4824,1);
  
  cell_life.set(4085,1);
  cell_life.set(3985,1);
  cell_life.set(4185,1);
  cell_life.set(4186,1);
  cell_life.set(4084,1);
  
  cell_life.set(4080,1);
  cell_life.set(3980,1);
  cell_life.set(4180,1);
  cell_life.set(4181,1);
  cell_life.set(4079,1);
  
  cell_life.set(1075,1);
  cell_life.set(975,1);
  cell_life.set(1175,1);
  cell_life.set(1176,1);
  cell_life.set(1074,1);
  
  cell_life.set(8090,1);
  cell_life.set(7990,1);
  cell_life.set(8190,1);
  cell_life.set(8191,1);
  cell_life.set(8089,1);
  
  cell_life.set(7525,1);
  cell_life.set(7425,1);
  cell_life.set(7625,1);
  cell_life.set(7626,1);
  cell_life.set(7524,1);
  
  cell_life.set(1225,1);
  cell_life.set(1125,1);
  cell_life.set(1325,1);
  cell_life.set(1326,1);
  cell_life.set(1224,1);
  }
  
  void randomised(){
    for(int i = 0;i<grid*grid;i++){
      int pick = int(random(1,100));
      if(pick<=randomiser_temp){
        cell_life.set(i,1);
      }
    }
    
  }
  
  void destroyer(){
  cell_life.set((grid*grid/2)+grid/2,1);
  cell_life.set((grid*grid/2)+(grid/2)+grid,1);
  cell_life.set((grid*grid/2)+(grid/2)+grid+1,1);
  cell_life.set((grid*grid/2)+(grid/2)-grid,1);
  cell_life.set((grid*grid/2)+(grid/2)-1,1);
  }
  
  void HWSS(){
    cell_life.set(grid*grid/2+grid/2,1);
    cell_life.set(grid*grid/2+grid/2+1,1);
    cell_life.set(grid*grid/2+grid/2+2,1);
    cell_life.set(grid*grid/2+grid/2+2+grid,1);
    cell_life.set(grid*grid/2+grid/2+1+grid+grid,1);
    
    cell_life.set(grid*grid/2+grid/2+5+grid*2,1);
    cell_life.set(grid*grid/2+grid/2+1+5+grid*2,1);
    cell_life.set(grid*grid/2+grid/2+2+5+grid*2,1);
    cell_life.set(grid*grid/2+grid/2+2+grid+5+grid*2,1);
    cell_life.set(grid*grid/2+grid/2+1+grid+grid+5+grid*2,1);
    
    cell_life.set(grid*grid/2+grid/2+9-grid*2,1);
    cell_life.set(grid*grid/2+grid/2+9-grid*3,1);
    cell_life.set(grid*grid/2+grid/2+9-grid*3-1,1);
    cell_life.set(grid*grid/2+grid/2+9-grid*4-1,1);
    cell_life.set(grid*grid/2+grid/2+9-grid*4+1,1);
    
  }
  void infinite1(){
    cell_life.set(grid*grid/2+grid/2,1);
    cell_life.set(grid*grid/2+grid/2+1,1);
    cell_life.set(grid*grid/2+grid/2+2,1);
    cell_life.set(grid*grid/2+grid/2+3,1);
    cell_life.set(grid*grid/2+grid/2+4,1);
    cell_life.set(grid*grid/2+grid/2+5,1);
    cell_life.set(grid*grid/2+grid/2+6,1);
    cell_life.set(grid*grid/2+grid/2+7,1);
    cell_life.set(grid*grid/2+grid/2+9,1);
    cell_life.set(grid*grid/2+grid/2+10,1);
    cell_life.set(grid*grid/2+grid/2+11,1);
    cell_life.set(grid*grid/2+grid/2+12,1);
    cell_life.set(grid*grid/2+grid/2+13,1);
    cell_life.set(grid*grid/2+grid/2+17,1);
    cell_life.set(grid*grid/2+grid/2+18,1);
    cell_life.set(grid*grid/2+grid/2+19,1);
    cell_life.set(grid*grid/2+grid/2+26,1);
    cell_life.set(grid*grid/2+grid/2+27,1);
    cell_life.set(grid*grid/2+grid/2+28,1);
    cell_life.set(grid*grid/2+grid/2+29,1);
    cell_life.set(grid*grid/2+grid/2+30,1);
    cell_life.set(grid*grid/2+grid/2+31,1);
    cell_life.set(grid*grid/2+grid/2+32,1);
    cell_life.set(grid*grid/2+grid/2+34,1);
    cell_life.set(grid*grid/2+grid/2+35,1);
    cell_life.set(grid*grid/2+grid/2+36,1);
    cell_life.set(grid*grid/2+grid/2+37,1);
    cell_life.set(grid*grid/2+grid/2+38,1);
    
  }
  void custom(){
    custom = true;
  }
}
