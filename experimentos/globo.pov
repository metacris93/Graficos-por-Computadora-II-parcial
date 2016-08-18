#include "colors.inc"
#include "glass.inc"
#include "textures.inc"
#include "woods.inc"
#include "stones.inc"
#include "metals.inc"
#include "shapes3.inc"

//camara
camera{
   location <10, 25,-50>//<0,5,-10>
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

union{  //Objeto globo terraqueo

#declare gtx=0; //gt = globo terraqueo en x, y, z segun la ultima letra, para poner todo en funcion del centro de la esfera del globo
#declare gty=2;
#declare gtz=-5; 

object{ Segment_of_Torus( 4,0.4,-175) //(radio mayor, radio menor, segmento de angulo )
        texture { pigment{color rgb<1,0.7,0>}
                  finish { phong 1 }
                } // end of texture
        rotate<-90,0,280> translate<gtx,gty,gtz>
      } // end of Segment_of_Torus(...) ----    
      
sphere{ <gtx,gty,gtz>, 2.7  material {
        texture {
          pigment {  Cyan  }
          finish { F_Glass4 } // le da un ambiente cristalino
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

scale 0.1

}