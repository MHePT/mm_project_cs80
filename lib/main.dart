import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        // Top Bar
        appBar: AppBar(
          title: const Text("University"),
        ),
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // First Text
            const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Welcome to our university", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30, color: Color(0xFF5083FA))),
              ),
            ),
            // Second Text
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Signin by entering the informations below", style: TextStyle(fontSize: 18, color: Color(0xFF707070).withOpacity(0.5))),
            ),

            // Email TextField
            const Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Email Address",
                  border: OutlineInputBorder(),
                  hintText: 'mail@user.com',
                ),
              ),
            ),

            // Password TextField
            const Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  hintText: '•••••••••',
                ),
              ),
            ),

            // Remember me checkbox
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  // the checkbox is always checked, because value is true and onChanged function is empty
                  Checkbox(value: true, onChanged: (bool? value) {}),
                  const Text('Remember Me', style: TextStyle(fontSize: 15, color: Color(0xFF707070))),

                  SizedBox(width: 50),

                  // Forget password Text
                  const Text('Forgotten Password', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Color(0xFF5083FA))),
                ],
              ),
            ),

            // Sign in Button
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                // 'onPressed' is empty so the button do nothing XD
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(341, 60), backgroundColor: Colors.blue,
                ),
                child: const Text(
                  'SIGN IN',
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
              )
            ),

            // Sign in with Google Button
            Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    ElevatedButton(
                      // 'onPressed' is empty so the button do nothing XD
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100),
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                          ),
                        ),
                        minimumSize: const Size(157, 55),
                        backgroundColor: Colors.white,
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/Google-Logo.png',
                            height: 50,
                            width: 50,
                          ),

                          const SizedBox(width: 3),

                          Text('Login',
                            style: TextStyle(color: Color(0xFF3B3B3B).withOpacity(0.5),fontSize: 23,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 30),

                    // Sign in with LinkedIn Button
                    ElevatedButton(
                      // 'onPressed' is empty so the button do nothing XD
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100),
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                          ),
                        ),
                        minimumSize: const Size(157, 55),
                        backgroundColor: Colors.white,
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/LinkedIn-Logo.png',
                            height: 25,
                            width: 40,
                          ),

                          const SizedBox(width: 3),

                          Text('Login',
                            style: TextStyle(color: Color(0xFF3B3B3B).withOpacity(0.5),fontSize: 23,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
            ),

            // Sign up Button
            Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  // 'onPressed' is empty so the button do nothing XD
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                      ),
                    ),
                    minimumSize: const Size(157, 55),
                    backgroundColor: Colors.white,
                  ),

                  child: Text('Sign Up',
                    style: TextStyle(color: Color(0xFF3B3B3B).withOpacity(0.5),fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                )
            ),
          ],
        )
      ),
    );
  }
}
