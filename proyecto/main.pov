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

//Esfera  de radio 3
sphere{ <10,6,-4>, 3  texture{pigment { Cyan } } } 

//Cilindro
cylinder{ <0,4,0>, <0,-4,0>, 3 rotate <90,0,0> translate <-10,10,0> texture { pigment { Gray50 } } }

//Toroide
torus{ 3, 1 rotate <90,0,0> translate <10,10,5> texture{ pigment{ White } } }

//Caja
box{ <2,2,2> <-2,-2,-2>  texture { pigment { Magenta } } rotate y*20 translate<0,8,-15> }        


//Objeto nuevo 

union{
             
sphere{ <8,5,-15>, 1.5  texture{pigment { Bronze } } }   

/*disc
    {
        <Center>, <Normal>, Radius [, Hole_Radius]
        [OBJECT_MODIFIERS...]
    }*/

disc
    {
        <8,5,-15>, <1,3,0>, 3, 2  texture{pigment { MediumWood } }
    }
      
disc
    {
        <8,5,-15>, <-0.5,1,0>, 3, 2 texture{pigment { MediumWood } }
    }

}   


   


