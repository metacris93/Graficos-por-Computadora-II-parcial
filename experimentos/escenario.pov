#include "colors.inc"  
#include "libreria.inc"    

camera{
   location <2,2,-10>  
   look_at <0,0,0>
}    

light_source{
      <10,10,-10>   
      color White
}  

plane{ y, -1 texture{ pigment{ White * 2 } } } 

plane{ z, 2 texture{ pigment{ Green *.3 } } }