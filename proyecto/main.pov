#include "colors.inc"
#include "glass.inc"
#include "textures.inc"
#include "woods.inc"
#include "stones.inc"
#include "metals.inc"

//camara
camera{
   location <0,5,-10>//<10, 25,-50>
   look_at <0,0,0>
} 

// create a regular point light source
light_source {
  0*x                  // light's position (translated below)
  color rgb <1,1,1>    // light's color
  translate <-20, 40, -20>
  parallel
  point_at <1, 0, 0>
}

//color de fondo del escenario
background{ White } 

#declare TileNormal =
    normal
    { gradient x 2 // Double the strength because of the averaging
      slope_map
      { [0 <0, 1>] // 0 height, strong slope up
        [.05 <1, 0>] // maximum height, horizontal
        [.95 <1, 0>] // maximum height, horizontal
        [1 <0, -1>] // 0 height, strong slope down
      }
    }
/*****************   plano   *********************/
plane{ y,  0 
          pigment                
          { 
            checker pigment { DMFWood5 }, pigment { DMFWood1 }
          }
          finish { specular 1 }
          normal
          { average normal_map
            { [1 TileNormal]
              [1 TileNormal rotate y*90]
            }
          }  
       /*texture{ pigment { rgb <.7,.95,1> }  
       finish { specular .5 reflection .2 } }*/ 
}  // hace una reflexion en el piso        
   

/***************   Esfera  de radio 3   ****************/
sphere{ <3,2,1>, 0.5    
   material {
        texture {
          pigment {  Cyan  }
          finish { F_Glass4 } // le da un ambiente cristalino
          }
        interior {I_Glass caustics 1}
   }    
   rotate <0,360*clock,0>
}

/***************   Cilindro   ***************/
cylinder{ <0,0.5,0>, <0,-0.5,0>, 0.5 translate <-3,2,1> rotate <0,360*clock,0> texture { pigment { Gray50 } }  finish { specular .5 /*reflection { .3, .6 }*/ } }

/***************   Toroide    ***************/
torus{ 0.5, 0.2 rotate <90,0,0> translate <0,2,3> rotate <0,360*clock,0> texture{ pigment{ White } }  finish { specular .5 } }

/***************     Caja     ***************/
box{ <0.5,0.5,0.5> <-0.5,-0.5,-0.5>  translate<-3,2,-3> rotate <0,360*clock,0>  texture { pigment { Magenta } }  finish { specular .5 } }        


/*************** Objeto nuevo ***************/ 

union{
             
    sphere{ <3,2,-3>, 0.5  texture{ EMBWood1 } } //textura al objeto nuevo   
    
    /*disc
        {
            <Center>, <Normal>, Radius [, Hole_Radius]
            [OBJECT_MODIFIERS...]
        }*/
    
    disc
        {
            <3,2,-3>, <1,1,-1>, 1, 0.7  texture{ Gold_Metal } // texturas a aros objeto nuevo
        }
          
    disc
        {
            <3,2,-3>, <-1,1,1>, 1, 0.7 texture{ Gold_Metal } // texturas a aros objeto nuevo
        } 
    
    rotate <0,360*clock,0>
} 


