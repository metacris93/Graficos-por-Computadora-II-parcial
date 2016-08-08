#include "colors.inc"

//camara
camera{
   location <2,2,-10>  
   look_at <0,0,0>
} 
// panoramic lens for wide field of view with less distortion
/*camera {
  panoramic
  location <2, 2, -10>                  // position
  look_at  <0, 0,  0>                  // view
  right    x*image_width/image_height  // aspect
  // angle    180                      // field (constant 180 degrees!!)
}*/

//fuente de luz
light_source{
   <-10,10,-10>   
   color White
}

//color de fondo del escenario
background{ White }  

//plano
plane{ y, -1 texture{ pigment{ White * 2 } } }

//union
union{
    sphere{ <0,0,0>, 1 translate <-0.5,0,0> }
    sphere{ <0,0,0>, 1 translate <0.5,0,0> }
    texture{ pigment { Green } }
}

//difference         
difference{
    sphere{ <0,0,0>, 1 translate <-0.5,0,0> }
    sphere{ <0,0,0>, 1 translate <0.5,0,0> } 
    translate <-2,0,0>
    texture{ pigment { Green } }
}
  
//union vs merge
union{
    sphere{ <0,0,0>, 1 translate <-0.5,0,0> }
    sphere{ <0,0,0>, 1 translate <0.5,0,0> } 
    translate <3,0,0>
    texture{ pigment { rgbf <0,0,1,.8> } }
}  

//intersection
intersection{
    sphere{ <0,0,0>, 1 translate <-0.5,0,0> }
    sphere{ <0,0,0>, 1 translate <0.5,0,0> } 
    translate <0,3,0>
    texture{ pigment { Green } }
}

 
 