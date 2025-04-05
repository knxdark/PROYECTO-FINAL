import 'package:flutter/material.dart';
import 'package:lishop/Widgets/widget_support.dart';
import 'package:lishop/pages/detail.dart';

// colores base: marron >255, 93, 37, 3 y beige>255, 161, 110, 34

class Home extends StatefulWidget {
  const Home ({super.key});

  @override
  State<Home> createState () => _HomeState();
}
class _HomeState extends State<Home> {
  
bool cerveza = false, vino= false, ron=false;
  
  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      body: Container(
      decoration: const 
        BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 0, 0, 0),   
            Color.fromARGB(255, 0, 0, 0),   
            Color.fromARGB(255, 44, 22, 8),  
            Color.fromARGB(255, 70, 44, 37),   
            Color.fromARGB(255, 70, 44, 37),   
            Color.fromARGB(255, 27, 22, 22),   
            Color.fromARGB(255, 27, 22, 22),   
          ],
          begin: Alignment.topRight, // Inicio del gradiente
          end: Alignment.bottomRight, // Fin del gradiente
        ),),

      child:  Container(
        margin: 
        const EdgeInsets.only(
           top: 50.0,
           left: 20.0,
           right: 10.0),
          child: Column(
            crossAxisAlignment: 
              CrossAxisAlignment.start,
          children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("¡Bienvenido a DR LStore!", 
                style:
                  AppWidget.headWhiteTextFeildStyle()),
               Container(
                margin: const EdgeInsets.only(right: 20.0),
                padding: const EdgeInsets.all(3),
              decoration:
                BoxDecoration(
                color:
                  const Color.fromARGB(255, 250, 200, 34), 
              borderRadius: BorderRadius.circular(10),
               ),
              child: 
              const Icon(
          Icons.
                 shopping_cart_outlined, 
              color: 
                Color.fromARGB(255, 0, 0, 0),),
               ),
             ],//
           ),
           const SizedBox(height: 30.0 ,),
             Text(
              "Explora nuestra selección de vinos, cervezas y licores.",
               style:
               AppWidget.subWhiteTextFeildStyle()
               ),
               const SizedBox(height: 20.0,),
                   Container(
                       padding: 
                          const EdgeInsets.all(7),
                   decoration:
                       BoxDecoration(
                          color: const Color.fromARGB(255, 250, 200, 34), // Fondo blanco
                          borderRadius: BorderRadius.circular(10), // Bordes redondeados opcional
                    ),
                
                child: 
                Text("¡Top  mas vendido!", 
                 style:
                 AppWidget.semiBoldTextFeildStyle()
                 ),
              ),
               const SizedBox(height: 40.0,),
            
               Container(
                margin:
                const EdgeInsets.only(right: 20.0),
                child: 
                showItem()),
               const SizedBox(height: 30.0,),

               SingleChildScrollView(
                scrollDirection: 
                  Axis.horizontal,
                 child: Row(
                  children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                       MaterialPageRoute(
                        builder: 
                        (context)=> const Details() ));
                    },
                    child: 
                      Container(
                        margin:
                           const EdgeInsets.all(4),
                    child: 
                      Material(
                        elevation: 5.0,
                        borderRadius:
                           BorderRadius.circular(20),
                    child: 
                      Container(
                        padding:
                          const EdgeInsets.all(14),
                        decoration:
                            BoxDecoration(
                              border: Border.all(
                              color: const Color.fromARGB(255, 0, 0, 0), // Color del borde
                              width: 4.0, // Grosor del borde
                        ),
                          borderRadius: 
                            BorderRadius.circular(20), 
                          color:
                           Colors.white,
                          ),
                          child:
                             Column(   
                               crossAxisAlignment: 
                                  CrossAxisAlignment.start,
                                  children: [   
                                    Image.asset("images/sixPackPresidente.jpg",
                                      height: 100, 
                                      width: 100, 
                                      fit: BoxFit.cover,),
                                  Text(
                                    "Six Pack Presidente", 
                                  style:
                                   AppWidget.semiBoldTextFeildStyle(),),
                                  const SizedBox(height: 5.0,),
                                  Text(
                                    "8 Oz cada lata", 
                                  style:
                                   AppWidget.lighteTextFeildStyle(),),
                                  const SizedBox(height: 6.0,),
                                  Text(
                                    "\$380", 
                                  style:
                                   AppWidget.semiBoldTextFeildStyle(),
                                   ),
                            ],
                          ),
                        ),    
                      ),
                    ),
                  ),
                  const SizedBox(width: 15.0,),

                   Container(
                    margin: 
                      const EdgeInsets.all(4),
                      child: 
                        Material(
                          elevation: 5.0,
                          borderRadius: 
                            BorderRadius.circular(20),
                        child: 
                          Container(
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                            border: Border.all(
                            color: const Color.fromARGB(255, 0, 0, 0), // Color del borde
                            width: 4.0, // Grosor del borde
                        ),
                          borderRadius: 
                            BorderRadius.circular(20), // Bordes redondeados 
                            color: Colors.white, // Fondo del contenedor 
                        ),
                        

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("images/redbull473ml.jpg", 
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,),
                              Text(
                                "Red bull", 
                              style:
                               AppWidget.semiBoldTextFeildStyle(),),

                              const SizedBox(height: 5.0,),

                              Text(
                                "473 ml de pura energía", 
                              style:
                               AppWidget.lighteTextFeildStyle(),),

                              const SizedBox(height: 5.0,),

                              Text("\$105", 
                              style:
                               AppWidget.semiBoldTextFeildStyle(),
                              ),              
                        ],
                        ),
                      ),
                     ),
                   ),
                 ], 
                 ),
               ),
                  const SizedBox(height: 30.0,),
                      Container(
                        margin: 
                          const EdgeInsets.only(right: 15.0),
                          child: 
                            Material(
                            elevation: 5.0,
                            borderRadius: 
                              BorderRadius.circular(20),
                            child: 
                              Container(
                              padding:
                               const EdgeInsets.all(5),
                              decoration:
                                BoxDecoration(
                                  border: 
                                    Border.all(
                                    color: 
                                      const Color.fromARGB(255, 0, 0, 0), // Color del borde
                                      width: 4.0, // Grosor del borde
                                  ),
                                  borderRadius: 
                                    BorderRadius.circular(20), // Bordes redondeados (opcional)
                                  color:
                                   Colors.white, // Fondo del contenedor (opcional)
                              ),
                          child: 
                            Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Image.asset(
                              "images/goldLabelJonnyW.jpg", 
                              height: 120,
                              width: 120, 
                              fit: BoxFit.cover,),

                              const SizedBox(width: 20.0,),

                              Column(
                                children: [
                                  SizedBox(
                                  width: MediaQuery.of(context).size.width/2,
                                  child: Text("Johnnie Walker Gold Label Reserve",
                                  style: AppWidget.semiBoldTextFeildStyle(),),
                                ),
                                const SizedBox(height: 5.0,),

                                SizedBox(
                                  width: MediaQuery.of(context).size.width/2,
                                  child: Text("Whisky con notas de miel, vainilla y madera ahumada.",
                                  style: AppWidget.lighteTextFeildStyle(),),
                          ),
                           const SizedBox(height: 5.0,),

                           SizedBox(
                              width: MediaQuery.of(context).size.width/2,
                              child: Text("\$4,710",
                              style: AppWidget.semiBoldTextFeildStyle(),),
                          ),
                        ],
                      ),
                  ],
                 ),
              ),
            ),
           ),
         ],
        ),
      ),
    ),
   );
  }
               
                    Widget showItem(){
                      return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          GestureDetector(
                            onTap: (){
                              cerveza=true;
                              vino=false;
                              ron=false;
                            setState(() { 
                              });
                            },

                            child:
                             Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(50),
                              child: 
                              Container(
                                width: 100.0,
                                height: 100.0,
                              decoration:
                               BoxDecoration(
                                  border: Border.all(
                                  color: const Color.fromARGB(255, 255, 196, 0), // Color dorado
                                  width: 5.0, // Grosor del borde
                               ),

                              shape: BoxShape.circle,
                              image: 
                              const DecorationImage(
                                fit: BoxFit.cover,
                                image: 
                                  AssetImage("images/pequenaCervezaPresidente.jpg",  )               
                                ),
                              ),         
                            ),                               
                          ),
                        ),
                      Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(50),
                        child: 
                        Container(
                          width: 100.0,
                          height: 100.0,   
                        decoration: 
                          BoxDecoration(
                          border:
                           Border.all(
                              color: const Color.fromARGB(255, 255, 196, 0), // Color dorado
                              width: 5.0, // Grosor del borde
                        ),
                          shape: BoxShape.circle,
                          image: 
                            const DecorationImage(
                            fit: BoxFit.cover,
                            image: 
                            AssetImage("images/vinoCarlosRossi.png",  )
                            ),
                          ),   
                        ),
                      ),
                      Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(50),
                        child:
                         Container(
                          width: 100.0,
                          height: 100.0, 
                          decoration:
                           BoxDecoration(
                            border: Border.all(
                            color: const Color.fromARGB(255, 255, 196, 0),
                            width: 5.0, // Grosor del borde
                           ),

                          shape: BoxShape.circle,
                          image:
                           const DecorationImage(
                            fit: BoxFit.cover,
                            image: 
                               AssetImage("images/brugal.jpg",  )
                      ),
                    ),  
                 ),
               ),   
             ],
           );
        }
                
      }