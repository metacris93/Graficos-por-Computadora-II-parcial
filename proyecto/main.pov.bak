#include "colors.inc"
#include "glass.inc"
#include "textures.inc"
#include "woods.inc"
#include "stones.inc"
#include "metals.inc"
#include "shapes3.inc"

//camara
camera{
   location <0,9,-12>
   look_at <0,0,0>
   angle 45
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
cylinder{ <0,0.5,0>, <0,-0.5,0>, 0.5  translate <-3,2,1> rotate <0,360*clock,0> texture{ Tom_Wood }  finish { specular .5 /*reflection { .3, .6 }*/ } }

/***************   Toroide    ***************/
torus{ 0.5, 0.2 rotate <90,0,0> translate <0,2,3> rotate <0,360*clock,0> texture{ pigment{ White } }  finish { specular .5 } }

/***************     Caja     ***************/
box{ <0.5,0.5,0.5> <-0.5,-0.5,-0.5>  translate<-3,2,-3> rotate <0,360*clock,0>  texture { pigment { Magenta } }  finish { specular .5 } }        


/*************** Objeto nuevo ***************/ 
        
#declare plx=3;  //pl = planeta en x, y o z respectivamente
#declare ply=2;
#declare plz=-3;         
        
union{
    sphere{ <plx,ply,plz>, 0.5  texture{ EMBWood1 } } //textura al objeto nuevo      
    /*disc
        {
            <Center>, <Normal>, Radius [, Hole_Radius]
            [OBJECT_MODIFIERS...]
        }*/    
    disc
        {
          <plx,ply,plz>, <1,0,0>, 1, 0.7  texture{ Gold_Metal } // texturas a aros objeto nuevo
        }         
    disc
        {
          <plx,ply,plz>, <0,1,0>, 1, 0.7 texture{ Gold_Metal } // texturas a aros objeto nuevo
        } 
    
    rotate <0,360*clock,0>
}   
  
/*************** Segundo Objeto nuevo ***************/   

union{  //Objeto globo terraqueo

#declare gtx=0; //gt = globo terraqueo en x, y, z segun la ultima letra, para poner todo en funcion del centro de la esfera del globo
#declare gty=2;
#declare gtz=-3; 

object{ Segment_of_Torus( 4,0.4,-175) //(radio mayor, radio menor, segmento de angulo )
        texture { pigment{color rgb<1,0.7,0>}
                  finish { phong 1 }
                } // end of texture
        rotate<-90,0,280> translate<gtx,gty,gtz>
      } // end of Segment_of_Torus    
      
      sphere{ <gtx,gty,gtz>, 2.7  material {
        texture { 
        Bright_Blue_Sky  
          }
        interior {I_Glass caustics 1}
      } }    
   
      disc
        {
            <gtx+1,gty-4.9,gtz>, <-0.15,1,0>, 3,  texture{ pigment{color rgb<1,0.7,0>}
                  finish { phong 1 } } 
        }   
        
      cylinder{ <gtx+1,gty-4.9,gtz>, <gtx-0.5,gty+5,gtz>, 0.5 texture { pigment{color rgb<1,0.7,0>}
                  finish { phong 1 } }
     
}
    translate <0,10,-25>
    scale 0.2

}


