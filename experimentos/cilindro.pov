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


box{ <1,1,1> <-1,-1,-1>  texture { pigment { Red } } rotate y*20 }

box{ <1,1,1> <-1,-1,-1>  texture { pigment { Red } } rotate y*20 translate<-5,0,0> }