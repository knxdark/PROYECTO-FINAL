import 'package:flutter/material.dart';
import 'package:lishop/Widgets/widget_support.dart';
import 'package:lishop/pages/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lishop/pages/bottomnav.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

String email="", password="", name="";

TextEditingController namecontroller= new TextEditingController();

TextEditingController passwordcontroller= new TextEditingController();

TextEditingController mailcontroller= new TextEditingController();

final _formKey= GlobalKey<FormState>();

registration() async{
if (password!=null){
  try{
    UserCredential userCredential= 
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email:email, password:password);
    
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: const Color.fromARGB(255, 37, 189, 11),
      content:Text(
        "Su registro ha sido exitoso", 
      style:
       TextStyle(
        fontSize: 20.0),
        )
        ));

      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> BottomNav()));


     }on FirebaseException catch(e){
      if(e.code=='contraseña débil'){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
         backgroundColor: Colors.orangeAccent,
          content: Text(
          "La contraseña muy débil",
           style: 
            TextStyle(
              fontSize: 18.0), )));
      }
      else if(e.code=="correo-no-dispoble-"){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.orangeAccent,
          content: Text(
           "Esa cuenta ya existe", 
           style:
            TextStyle(
              fontSize: 18.0),)));
      }


     }
}

}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Stack(
          children: [
            // Fondo degradado
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 0, 0, 0),
                    Color.fromARGB(255, 0, 0, 0),
                  ],
                ),
              ),
            ),
            // Caja blanca con bordes redondeados
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 3),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: const Text(""),
            ),
            // Contenido principal
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: Column(
                children: [
                  // Imagen redondeada
                  Container(
                    margin: const EdgeInsets.only(
                        top: 10.0, 
                        left: 20.0, 
                        right: 20.0),
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(200.0),
                        child: Image.asset(
                          "images/logo_licorStore.png",
                          width:
                              MediaQuery.of(context).size.width / 1.5,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  // Formulario de inicio de sesión
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.5,
                      decoration: BoxDecoration(
                          color: Colors.white, // Fondo blanco
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Form(
                          key: _formKey,
                        child: Column(
                          children: [
                            const SizedBox(height: 5.0),
                            Text(
                              "Registrarse",
                              style: AppWidget.headlineTextFeildStyle(),
                            ),
                            TextFormField(
                              controller: namecontroller,
                              validator: (value){
                                if(value==null|| value.isEmpty){
                                  return 'Por favor ingrese su nombre';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'Nombre',
                                hintStyle:
                                    AppWidget.semiBoldTextFeildStyle(),
                                prefixIcon: const Icon(Icons.person_2_outlined),
                              ),
                            ),
                            TextFormField(
                               controller: mailcontroller,
                              validator: (value){
                                if(value==null|| value.isEmpty){
                                  return 'Por favor ingrese su correo';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'Correo',
                                hintStyle:
                                    AppWidget.semiBoldTextFeildStyle(),
                                prefixIcon: const Icon(Icons.email_outlined),
                              ),
                            ),
                            TextFormField(
                               controller: passwordcontroller,
                                validator: (value){
                                if(value==null|| value.isEmpty){
                                  return 'Por favor ingrese su contraseña';
                                }
                                return null;
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Contraseña',
                                hintStyle:
                                    AppWidget.semiBoldTextFeildStyle(),
                                prefixIcon: const Icon(Icons.password_outlined),
                              ),
                            ),
                           
                            const SizedBox(height: 50.0),
                            GestureDetector(
                              onTap: ()async{
                                if(_formKey.currentState!.validate()){
                                  setState(() {
                                    email= mailcontroller.text;
                                    name= namecontroller.text;
                                    password= passwordcontroller.text;


                                  });
                                }
                                registration();
          

                              },

                              child: Material(
                                    borderRadius: BorderRadius.circular(20),
                                elevation: 5.0,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.0,
                                         vertical: 10.0),
                                    child: Center(
                                      child: Text(
                                        "Registrarse",
                                        style: TextStyle(
                                                            
                                            color: Colors.white, 
                                            fontSize: 18.0,
                                                       
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                                                      ),
                            )], 
                        ),
                      ),
                    ),
                  ),
                          const SizedBox(height: 70.0,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login()) );
                            },
                            child: Text("¿Ya tienes una cuenta? Iniciar sesion ", 
                            style: AppWidget.semiBoldTextFeildStyle(),),
                          )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
