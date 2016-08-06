#include "colors.inc"

camera{
   location <0,0,-10>  
   look_at <0,0,0>
}    

light_source{
      <10,10,-10>   
      color White
}

sphere{ <0,0,0>, 0.5  texture{pigment { Red } } } 
sphere{ <1,0,0>, 0.5  texture{pigment { Green } } }
sphere{ <2,0,0>, 0.5  texture{pigment { Blue } } }
sphere{ <-1,0,0>, 0.5  texture{pigment { Green } } }
sphere{ <-2,0,0>, 0.5  texture{pigment { Blue } } }
sphere{ <0,1,1>, 0.5  texture{pigment { White } } }
sphere{ <0,2,2>, 0.5  texture{pigment { Yellow } } }
sphere{ <0,-1,-1>, 0.5  texture{pigment { Gray50 } } }
sphere{ <0,-2,-2>, 0.5  texture{pigment { Gray50 } } }