import 'package:flutter/material.dart';
import 'package:lishop/Widgets/widget_support.dart';

// colores: marron >255, 93, 37, 3 y beige>255, 161, 110, 34



class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
    int a=1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      // Aplicar gradiente
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 255, 255), 
            Color.fromARGB(255, 255, 255, 255), 
            Color.fromARGB(255, 255, 255, 255), 
            Color.fromARGB(255, 255, 255, 255), 
            Color.fromARGB(255, 255, 255, 255), 
           Color.fromARGB(255, 248, 244, 244), 
            Color.fromARGB(255, 230, 223, 221),   
            Color.fromARGB(255, 138, 111, 101),   
            Color.fromARGB(255, 70, 44, 37),   
            Color.fromARGB(255, 27, 22, 22),   
          ],
          begin: Alignment.topRight, // Inicio del gradiente
          end: Alignment.bottomRight, // Fin del gradiente
        ),), // Cambia el color aquí

      child: Container(
        margin: 
          const EdgeInsets.only(
            top: 
              50.0, 
              left: 20.0, 
              right: 20.0),
        child: 
        Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
                },

          child: 
            const Icon(
              Icons.arrow_back_ios_new_outlined,
                color: Color.fromARGB(255, 93, 37, 3 ),
               ),
            ),

                  Image.asset("images/sixPackPresidente.jpg", 
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2.5, 
                  fit: BoxFit.fill),

                const SizedBox(height: 15.0,),

                Row(
                  children: [
                    Column(
                      crossAxisAlignment: 
                        CrossAxisAlignment.start,
                      children: [
                        Text("Six Pack Presidente",
                         style:
                          AppWidget.semiBoldTextFeildStyle(),
                          ),
                        Text("8 Oz cada lata", 
                        style: 
                          AppWidget.boldTextFeildStyle(),
                          ),      
                      ],
                    ),   
                    const Spacer(),    

                      GestureDetector(
                          onTap: (){
                            if(a>1){
                            --a;  
                            }
                            setState(() {     
                            });
                          },

                    child:
                     Container(
                        decoration: BoxDecoration(
                          color:
                          const Color.fromARGB(255, 93, 37, 3),
                          borderRadius: BorderRadius.circular(10)),
                        child:
                         const Icon(
                          Icons.remove, 
                          color:Colors.white,),
                      ),
                    ),

                  const SizedBox(width: 20.0,),

                  Text(a.toString(), 
                  style:
                   AppWidget.semiBoldTextFeildStyle(),
                   ),
                  const SizedBox(width: 20.0,),

                  GestureDetector(
                    onTap: (){
                      ++a;
                    setState(() {      
                      });
                    },

                    child:
                     Container(
                      decoration:
                       BoxDecoration(
                        color:
                           const Color.fromARGB(255, 93, 37, 3),
                           borderRadius: BorderRadius.circular(10)),
                      child:
                        const Icon(
                          Icons.add, 
                           color:
                             Colors.white,),
                       ),
                     ),
                    ], 
                  ),
                  const SizedBox(height: 20.0,),

                  Text("El six-pack de Cerveza Presidente trae una cerveza dorada," 
                  "ligera y con un toque suave y dulce, perfecta para disfrutar bien fría."
                  " Tiene 5% de alcohol.",
                    maxLines: 3,
                    style:
                     AppWidget.lighteBigTextFeildStyle(),
                  
                  ),
                  const SizedBox(height: 55.0,),

                  Row(
                    children: [
                      Text("Delivery 24/7",
                       style: 
                        AppWidget.headlineTextFeildStyle(),),

                        const SizedBox(width: 55.0,),

                        const Icon(
                          Icons.alarm, 
                             color:
                             Color.fromARGB(255, 69, 34, 6), ),

                        const SizedBox(width: 5.0,),

                          Text("25 minutos",
                           style: 
                           AppWidget.headlineTextFeildStyle(),
                           ),
                        ],
                        ),
                        const Spacer(),

                        Padding(
                          padding: 
                            const EdgeInsets.only(bottom: 45.0),
                          child:
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Precio Total:",
                               style: 
                              AppWidget.whiteboldTextFeildStyle(),
                              ),
                              Text("\$300",
                               style:
                                AppWidget.whitelightTextFeildStyle(),
                                ),
                              ],
                            ),
                      Container(
                          width: MediaQuery.of(context).size.width/2,
                          padding: 
                          const EdgeInsets.all(8),
                          decoration:
                           BoxDecoration(
                            color: const Color.fromARGB(255, 161, 110, 34),
                             borderRadius: BorderRadius.circular(10),),
                          child: 
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end ,
                            children: [
                            const Text("Agregar", 
                            style: 
                            TextStyle(
                              color: Colors.white, 
                              fontSize: 20.0,),),
                            
                            const SizedBox(width: 30.0,),

                            Container(
                              padding: const EdgeInsets.all(3),
                              decoration:
                               BoxDecoration(
                                color: const Color.fromARGB(255, 93, 37, 3), borderRadius: BorderRadius.circular(8)
                              ),
                              child: 
                              const Icon(
                                      Icons.shopping_cart_outlined, color: Colors.white,
                                  ),
                                ),

                            const SizedBox(width: 10.0,),
                          
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
     ),
    );
  }
}