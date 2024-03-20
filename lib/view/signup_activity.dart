import 'package:dsp_shop/view/navigation_activity.dart';
import 'package:dsp_shop/view/signin_activity.dart';
import 'package:flutter/material.dart';

class Signup_activity extends StatefulWidget {
  const Signup_activity({super.key});

  @override
  State<Signup_activity> createState() => _Signup_activityState();
}

class _Signup_activityState extends State<Signup_activity> {
  // ---------------------------------------------------------------------

  bool isSignUp = false;

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  // =====================================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 30.0, left: 20, right: 20, bottom: 10),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Container - 1
                Column(
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/casual-t-shirt-.png",
                        height: 50,
                        width: 70,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "BECOME A DSP MEMBER",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 2),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Create your DSP Member profile and get first access to the very best of DSP products, inspiration and community.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Column(
                  children: [
                    TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        hintText: "Username",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Email Address",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => Navigation_activity()),
                        (Route<dynamic> route) => false);
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: isSignUp
                          ? const CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : const Text(
                              "Sign Up",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  wordSpacing: 2),
                            ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    const Text(
                      "or login with",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/google.png",
                            height: 40,
                            width: 40,
                          ),
                          Image.asset(
                            "assets/images/apple-logo.png",
                            height: 40,
                            width: 40,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account?",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signin_activity()));
                          },
                          child: const Text(
                            " Login",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
