#include "colors.inc"

//camara
camera{
   location <15,15,-30>  
   look_at <0,0,0>
} 

// create a regular point light source
light_source {
  0*x                  // light's position (translated below)
  color rgb <1,1,1>    // light's color
  translate <-20, 40, -20>
}

//color de fondo del escenario
background{ White } 

//plano
plane{ y, -1 texture{ pigment{ White * 2 } } }    

//Esfera  de radio 1
sphere{ <10,6,-4>, 3  texture{pigment { Cyan } } } 

//Cilindro
cylinder{ <0,4,0>, <0,-4,0>, 3 rotate <90,0,0> translate <-10,10,0> texture { pigment { Gray50 } } }

//Toroide
torus{ 3, 1 rotate <90,0,0> translate <10,10,5> texture{ pigment{ White } } }

//Caja
box{ <2,2,2> <-2,-2,-2>  texture { pigment { Magenta } } rotate y*20 translate<0,8,-15> }
   


   


