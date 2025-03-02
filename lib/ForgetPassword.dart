import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 80),
                  child: Center(
                    child: Text(
                      "Forget Password",
                      style: TextStyle(color: Colors.red, fontSize: 25),
                    ),
                  ),
                  width: Get.width * 8 / 10,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Text(
                    "Enter Your Email",
                    style: TextStyle(color: Colors.white),
                  ),
                  width: Get.width * 8 / 10,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.black,
                      filled: true,
                      hintText: "Enter Your email",
                      hintStyle: const TextStyle(color: Colors.white70),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            const BorderSide(color: Colors.red, width: 2),
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  width: Get.width * 8 / 10,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Reset Password'.tr,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  width: Get.width * 8 / 10,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    "Back To Login",
                    style: TextStyle(color: Colors.blue),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
