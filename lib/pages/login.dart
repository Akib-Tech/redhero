import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:red_hero/pages/forgetpassword.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Hi, welcome back",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        decoration: TextDecoration.none),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Sign into your personal account to get amazing personalized services",
                      style: TextStyle(
                          color: Colors.black26,
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                          decoration: TextDecoration.none),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Donor & Recipient Buttons side by side
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          onPressed: () {},
                          child: const Text("Donor",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      const SizedBox(width: 0),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                          ),
                          onPressed: () {},
                          child: const Text("Recipients",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                  ),
                  const SizedBox(height: 20),

                  // Email
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:EdgeInsets.symmetric(horizontal:25),
                      child: Text(
                      "Email Address",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.none),
                    ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your email',
                        prefixIcon: Icon(Icons.email, size: 24),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Password
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                      "Password",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.none),
                    ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock, size: 24),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Remember & Forgotten
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Remember me"),
                      Text("Forgotten Password",
                          style: TextStyle(color: Colors.red)),
                    ],
                  ),
                  ),
                  const SizedBox(height: 20),

                  // Sign In Button
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgetPassword(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 90, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Sign In",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(width: 5),
                          Icon(Icons.arrow_forward,
                              color: Colors.white, size: 24),
                        ],
                      ),
                    ),
                  ),
                  ),
                  const SizedBox(height: 20),




                  // Divider OR
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                    children: const [
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("OR",
                            style: TextStyle(
                                fontSize: 16, color: Colors.black54)),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  ),
                  const SizedBox(height: 20),

                  // Google button
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal: 25),
                    child: SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            color: Color(0xFF9C9A9A), width: 2),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 12),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(FontAwesomeIcons.google, color: Colors.red),
                          SizedBox(width: 8),
                          Text("Sign in with Google",
                              style: TextStyle(
                                  color: Colors.green, fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  ),
                  const SizedBox(height: 20),

                  // Partner button with shadow
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgetPassword(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 90, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Sign in as a partner",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(width: 5),
                          Icon(Icons.arrow_forward,
                              color: Colors.white, size: 24),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Sign Up row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Don't have an account?"),
                      Text(" Sign Up",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w900)),
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
