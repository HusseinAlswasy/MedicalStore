import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_store/shared/components/components.dart';
import 'package:medical_store/widgets/Login%20&%20SignUp/login/login.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';

class SignUp extends StatelessWidget {
  var formKey = GlobalKey<FormState>(); //validation
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 70,),
              const Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  height:200,
                  width: 200,
                  child: Lottie.network('https://assets9.lottiefiles.com/packages/lf20_jcikwtux.json'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
                child: defaultFormField(
                  controller: nameController,
                  type: TextInputType.emailAddress,
                  label: 'Name',
                  hint: 'Name',
                  validate: (String? value) {
                    if(value!.isEmpty){
                      return 'Name is empty ';
                    }
                  },
                  prefix: Icons.drive_file_rename_outline,
                  color: Colors.deepPurple,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: defaultFormField(
                  controller: emailController,
                  type: TextInputType.emailAddress,
                  label: 'Email',
                  hint: 'Email',
                  validate: (String? value) {
                    if(value!.isEmpty){
                      return 'Email is empty ';
                    }
                  },
                  prefix: Icons.email_rounded,
                  color: Colors.deepPurple,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: defaultFormField(
                  controller: passwordController,
                  type: TextInputType.visiblePassword,
                  label: 'Password',
                  hint: 'Password',
                  validate: (String? value) {
                    if(value!.isEmpty){
                      return 'Password is empty ';
                    }
                  },
                  prefix: Icons.lock,
                  suffix: Icons.remove_red_eye_rounded,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  width: 300,
                  color: Colors.deepPurple,
                  child: MaterialButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                    },
                    child: ConditionalBuilder(
                      condition: true,
                      builder: (context) => defaultTextButton(
                        text: 'SignUp',
                        function: () {
                          if(formKey.currentState!.validate()){
                          }
                        },
                      ),
                      fallback: (context) => const Center(
                          child: CircularProgressIndicator(
                            color: Colors.deepPurple,
                          )),
                    ),
                  ),
                ),
              ),

              TextButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
              },
                child: const Text(
                  "You Have Account? Login",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text("OR",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    Container(
                      padding:EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(width:.3,color: Colors.deepPurple),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/facebook.svg",width: 20,height: 20),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      padding:EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(width:.3,color: Colors.deepPurple),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/google-plus.svg",width: 20,height: 20,),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      padding:EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(width:.3,color: Colors.deepPurple),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/twitter.svg",width: 10,height: 20,),
                    ),                ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
