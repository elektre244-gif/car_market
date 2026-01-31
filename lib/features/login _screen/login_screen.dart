import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home_screen/home_screen.dart';
import 'package:flutter_application_1/features/login%20_screen/widgets/container_login_bottom.dart';
import 'package:flutter_application_1/features/login%20_screen/widgets/custome_text_rich.dart';
import 'package:flutter_application_1/features/login%20_screen/widgets/custoum_app_bar.dart';
import 'package:flutter_application_1/features/opt_screen/otp_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
              ),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff131212),
                      Color(0xff131212),
                      Color(0xffCBC6C6),
                    ],
                    stops: [0.0, 0.7, 1.0],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 60,
                    horizontal: 20.63,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomeAppBar(),
                        SizedBox(height: 10.h),
                        CustomeTextRich(
                          text1: 'Create an ',
                          text2: 'account',
                        ),
      
                        SizedBox(height: 10.h),
                        Text(
                          'Email address',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 25.sp,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                          ),
                          decoration: _inputDecoration('Enter your email'),
                        ),
      
                        SizedBox(height: 10.h),
                        Text(
                          'Mobile number',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 25.sp,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your mobile number';
                            }
                            return null;
                          },
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                          ),
                          decoration:
                              _inputDecoration('Enter your mobile number'),
                        ),
      
                        SizedBox(height: 10.h),
                        Text(
                          'Password',
      
      style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 25.sp,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        TextFormField(
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            } else if (value.length < 6) {
                              return 'Password must be at least 6 characters';
                            }
                            return null;
                          },
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                          ),
                          decoration:
                              _inputDecoration('Enter your password'),
                        ),
      
                        SizedBox(height: 45.h),
      
                      
                        ContainerLoginBottom(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
                            }
                          },
                        ),
      
                        SizedBox(height: 15.h),
                        Center(
                          child: CustomeTextRich(
                            text1: 'Already have an ',
                            text2: 'account',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(
        fontSize: 16.sp,
        color: Colors.grey,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: const BorderSide(color: Colors.white),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: const BorderSide(color: Colors.amber),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: const BorderSide(color: Colors.red),
      ),
    );
  }
}