import 'package:app_test/shared/components/components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var isPressedShow = true;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      //appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(
          20.0,),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
             key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                   defaultFormField(
                     controller: emailController,
                     label: 'Email',
                     prefix: Icons.email,
                     type: TextInputType.emailAddress,
                     validate: (String value)
                     {
                       if(value.isEmpty) {return 'email must not be empty';}
                       return null;
                     },
                   ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                      label: 'password',
                      controller: passwordController,
                      prefix: Icons.lock,
                      type: TextInputType.visiblePassword,
                      suffix: isPressedShow ? Icons.visibility_off : Icons.visibility,
                      isPassword: isPressedShow,
                      suffixPressed: ()
                      {
                        setState(() {isPressedShow = !isPressedShow;});
                      },
                    validate: (String value)
                    {
                      if(value.isEmpty) {return 'password must not be empty';}
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    text: 'Login',
                    function: ()
                    {
                      if(formKey.currentState!.validate()) {print(emailController.text);print(passwordController.text);}
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    text: 'Register',
                    function: ()
                    {
                      if(formKey.currentState!.validate()){ print(emailController.text);print(passwordController.text); }
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      const Text(
                       'Don\'t have an account?',
                      ),
                      TextButton(
                        onPressed:(){},
                        child: const Text(
                            'Register Now'
                        ),
                      ),
                     ],
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
