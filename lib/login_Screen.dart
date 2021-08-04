import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var EmailController = TextEditingController();
  var PassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Login",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            // email
            TextFormField(
              onFieldSubmitted: (String value) {
                print(value);
              },
              controller: EmailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: "Email Adress",
                prefixIcon: Icon(Icons.email_rounded),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            // password
            TextFormField(
              obscureText: true,
              onFieldSubmitted: (String value) {
                print(value);
              },
              controller: PassController,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              color: Colors.blue,
              width: double.infinity,
              child: MaterialButton(
                onPressed: (){
                  print(EmailController.text);
                  print(PassController.text);
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("don't have an account ?"),
                TextButton(
                  onPressed:(){

                  },
                  child: Text(""
                      "Register now"),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
