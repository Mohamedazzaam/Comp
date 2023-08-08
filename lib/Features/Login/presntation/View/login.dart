import 'package:flutter/material.dart';

import '../../../../Core/utile/widget/customTextFormFailed.dart';
import '../../../../Core/utile/widget/custombuttton.dart';



class Login extends StatelessWidget {
  Login({super.key});

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Login")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextFormFailed(
                label: 'Email',
                icon: Icons.email_outlined,
                controller: emailcontroller,
                textInputType: TextInputType.emailAddress,
                obScure: false,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormFailed(
                label: 'Password',
                icon: Icons.lock,
                controller: passwordcontroller,
                textInputType: TextInputType.visiblePassword,
                obScure: true,
              ),
              SizedBox(height: 10,),
              CustomButton(
                name: "Login",
                width: 100,
                height: 40,
                radius: 5,
                color: Colors.blue,
                onpress: () {},
                Textcolor: Colors.white, SizeText: 15,
              )
            ],
          ),
        ));
  }
}
