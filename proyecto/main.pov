#include "colors.inc"
#include "glass.inc"
#include "textures.inc"
#include "woods.inc"
#include "shapes3.inc"

//camara
camera{
   //location <0,0,0>
   //look_at <0,5,-25>
   location <10,25,-50>
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

/*****************   plano   *********************/
plane{ y, -1 texture{ pigment{ White * 2 }
 finish { reflection 0.35 } } }  // hace una reflexion en el piso    

/***************   Esfera  de radio 3   ****************/
sphere{ <10,6,-4>, 2    
   material {
        texture {
          pigment {  Cyan  }
          finish { F_Glass4 } // le da un ambiente cristalino
          }
        interior {I_Glass caustics 1}
   }
   translate <5,5,-4>    
   rotate <0,360*clock,0>
}

/***************   Cilindro   ***************/
cylinder{ <0,3,0>, <0,-3,0>, 3 translate <-15,10,0> rotate <0,360*clock,0> texture { pigment { Gray50 } } }

/***************   Toroide    ***************/
torus{ 3, 1 rotate <90,0,0> translate <3,10,5> rotate <0,360*clock,0> texture{ pigment{ White } } }

/***************     Caja     ***************/
box{ <2,2,2> <-2,-2,-2>  texture { pigment { Magenta } } translate<-15,8,-16> rotate <0,360*clock,0> }        


/*************** Objeto nuevo ***************/ 
        
#declare plx=8;  //pl = planeta en x, y o z respectivamente
#declare ply=5;
#declare plz=-15;         
        
union{
             
    sphere{ <plx,ply,plz>, 1.5  texture{ EMBWood1 } } //textura al objeto nuevo   
    
    /*disc
        {
            <Center>, <Normal>, Radius [, Hole_Radius]
            [OBJECT_MODIFIERS...]
        }*/
    
    disc
        {
            //<8,5,-15>, <1,3,0>, 3, 2  texture{ Gold_Metal }
            <plx,ply,plz>, <1,0,0>, 3, 2  texture{ Gold_Metal } // texturas a aros objeto nuevo
        }
          
    disc
        {
            //<8,5,-15>, <-0.5,1,0>, 3, 2 texture{ Gold_Metal }
            <plx,ply,plz>, <0,1,0>, 3, 2 texture{ Gold_Metal } // texturas a aros objeto nuevo
        } 
    translate <1,5,-5>    
    rotate <0,360*clock,0>
} 
  
  
/*************** Segundo Objeto nuevo ***************/   

union{  //Objeto globo terraqueo

#declare gtx=0; //gt = globo terraqueo en x, y, z segun la ultima letra, para poner todo en funcion del centro de la esfera del globo
#declare gty=5;
#declare gtz=-15; 

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


