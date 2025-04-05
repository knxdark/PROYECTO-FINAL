import 'package:flutter/material.dart';
import 'package:lishop/Widgets/content_model.dart';
import 'package:lishop/Widgets/widget_support.dart';
import 'package:lishop/pages/signup.dart';


class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {

    int currentIndex=0;
    late PageController _controller;

  @override
  void initState() {
    _controller= PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
   _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( 
        children: [
        Expanded(
          child: PageView.builder(
            controller: _controller,
            itemCount: 
            contents.length,
            onPageChanged: (int index) {
              setState(() {
                currentIndex=index;
              });
            }, 
            
            itemBuilder: (_, i){      
            return Padding(
             padding:const EdgeInsets.only(
              top: 110.0, 
              left: 20,
              right: 20.0),

              child: Column(
                children: [
                 ClipRRect(
                  borderRadius: BorderRadius.circular(90),
                  child: Image.asset(contents[i].image,
                  height: 350,
                  width: 350,
                  fit: BoxFit.cover, ),
                ),
                
                const SizedBox(height: 40.0,),
          
                Text(contents[i].title, style: AppWidget.headlineTextFeildStyle(),),
               
                const SizedBox(height: 40.0,),
          
                Text(contents[i].descripcion, style: AppWidget.lighteBigTextFeildStyle(),),
          
              ],
            ),
            );
                }),
        ),
        Container(
              child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                   (index) => builDot(index, context), 
                ),
              ),
              ),
            
              GestureDetector(
                onTap: () {
                  if(currentIndex==contents.length-1){
                    Navigator.pushReplacement(
                    context,
                     MaterialPageRoute(builder: (context)=> const SignUp()));
                  }
                  _controller.nextPage(
                  duration: const Duration(milliseconds: 100),
                   curve:  Curves.bounceIn);
                },
                child: Container (
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 0),
                     borderRadius: BorderRadius.circular(20)         
                              ),
                  height: 60,
                  margin: const EdgeInsets.all(40),
                  width: double.infinity,
                  child: Center(
                    child: Text(
                     currentIndex==contents.length-1?"Empezar": "Siguiente",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )

      ],
      ),
    );
  }

 Container builDot(int index, BuildContext context) {
  return Container(
    height: 10.0,
    width: currentIndex == index ? 18: 7,
    margin: const EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      color: Colors.black38
    )
 );
 }
 
}