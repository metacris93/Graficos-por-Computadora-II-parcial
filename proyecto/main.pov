#include "colors.inc"
#include "glass.inc"
#include "textures.inc"
#include "woods.inc"

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
plane{ y, -1 texture{ pigment{ White * 2 }
 finish { reflection 0.35 } } }  // hace una reflexion en el piso    

//Esfera  de radio 3
sphere{ <10,6,-4>, 3    
material {
        texture {
          pigment {  Cyan  }
          finish { F_Glass4 } // le da un ambiente cristalino
          }
        interior {I_Glass caustics 1}
        }
      }

//Cilindro
cylinder{ <0,4,0>, <0,-4,0>, 3 rotate <90,0,0> translate <-10,10,0> texture { pigment { Gray50 } } }

//Toroide
torus{ 3, 1 rotate <90,0,0> translate <10,10,5> texture{ pigment{ White } } }

//Caja
box{ <2,2,2> <-2,-2,-2>  texture { pigment { Magenta } } rotate y*20 translate<0,8,-15> }        


//Objeto nuevo 

union{
             
sphere{ <8,5,-15>, 1.5  texture{ EMBWood1 } } //textura al objeto nuevo   

/*disc
    {
        <Center>, <Normal>, Radius [, Hole_Radius]
        [OBJECT_MODIFIERS...]
    }*/

disc
    {
        <8,5,-15>, <1,3,0>, 3, 2  texture{ Gold_Metal } // texturas a aros objeto nuevo
    }
      
disc
    {
        <8,5,-15>, <-0.5,1,0>, 3, 2 texture{ Gold_Metal } // texturas a aros objeto nuevo
    }

}   
/*    
#declare jarron =
lathe {
  cubic_spline
  13,
  <0.000000, 0.000000>,
  <0.000000, 0.000000>,
  <0.172414, 0.013793>,
  <0.203448, 0.096552>,
  <0.210345, 0.203448>,
  <0.210345, 0.634483>,
  <0.210345, 1.000000>,
  <0.196552, 1.000000>,
  <0.193103, 0.651724>,
  <0.182759, 0.206897>,
  <0.151724, 0.096552>,
  <0.000000, 0.065517>,
  <0.000000, 0.065517>

  scale <2, 1.5, 2>

}

object {
  jarron
  texture {
    pigment{ color rgb<1,1,1> }
    finish { Shiny metallic }
  }
  scale <4, 4, 4>
  translate <1, 0.002, -20>
}

     */


