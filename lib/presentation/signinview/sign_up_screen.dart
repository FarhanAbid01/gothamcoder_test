import 'package:flutter/material.dart';
import 'package:gotham_test/presentation/signinview/signin_screen.dart';
import 'package:gotham_test/repository/firebase_auth_repostiory.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FirebaseAuthRepository _firebaseAuthRepository = FirebaseAuthRepository();
  bool isLoading = false;

  signUp() async {
    if(formKey.currentState!.validate()) {
      await _firebaseAuthRepository.signUpWithEmailAndPassword(emailController.text, passwordController.text);
      isLoading = false;
      if(mounted){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SigninScreen()));
      }
    }
  }


  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp Screen'),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //make 2 textfield
              //one for email and one for password
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty) {
                    return 'Please enter an email';
                  }
                  return null;
                },
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 20,),
              //make a button to submit the form
              ElevatedButton(
                onPressed: () async {
                  if(isLoading){}else{
                    isLoading = true;
                    setState(() {

                    });
                    await  signUp();
                  }
                },
                child: isLoading == true? CircularProgressIndicator() :   Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
