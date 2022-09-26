import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_store/shared/components/components.dart';
import 'package:medical_store/widgets/Login%20&%20SignUp/login/cubit/cubit.dart';
import 'package:medical_store/widgets/Login%20&%20SignUp/login/cubit/states.dart';
import 'package:medical_store/widgets/Login%20&%20SignUp/signup/SignUp.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>(); //validation
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (BuildContext context) => MedicalLoginCubit(),
      child:BlocConsumer<MedicalLoginCubit,MedicalLoginState>(
        listener: (BuildContext context, Object? state) {},
        builder: (context, state) {
            return Scaffold(
              body: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const SizedBox(
                        height: 100,
                      ),
                      const Center(
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Container(
                          height: 200,
                          width: 200,
                          child: Lottie.network(
                              'https://assets9.lottiefiles.com/packages/lf20_jcikwtux.json')),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: defaultFormField(
                          controller: emailController,
                          type: TextInputType.emailAddress,
                          label: 'Email',
                          validate: (String? value) {
                            if (value!.isEmpty) {
                              return 'Email is empty ';
                            }
                          },
                          prefix: Icons.email_rounded,
                          color: Colors.deepPurple,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, bottom: 20, left: 20),
                        child: defaultFormField(
                          controller: passwordController,
                          type: TextInputType.visiblePassword,
                          label: 'Password',
                          validate: (String? value) {
                            if (value!.isEmpty) {
                              return 'Password is empty ';
                            }
                          },
                          isPassword: MedicalLoginCubit.get(context).isPasswordShow,
                          prefix: Icons.lock,
                          SuffixPressed:(){
                            MedicalLoginCubit.get(context).ChangePasswordVisibility();
                          },
                          color: Colors.deepPurple,
                          suffix: MedicalLoginCubit.get(context).suffix,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Container(
                          width: 300,
                          color: Colors.deepPurple,
                          child: MaterialButton(
                            onPressed: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>const Home()));
                            },
                            child: ConditionalBuilder(
                              condition: true,
                              builder: (context) => defaultTextButton(
                                text: 'Login',
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
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SignUp()));
                        },
                        child: const Text(
                          "Don\'t have an account? SingUp",
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
        },
      ),
    );
  }
}
