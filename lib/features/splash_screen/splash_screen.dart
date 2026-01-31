import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/login%20_screen/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Stack(
          children: [
            Image.network(
              "https://images.unsplash.com/photo-1603386329225-868f9b1ee6c9?q=80&w=1000&auto=format&fit=crop",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
      
          
            Positioned(
              top: 60,
              left: 20,
              right: 20,
              child: Text.rich(
                TextSpan(
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  children: const [
                    TextSpan(
                      text: 'Your Trusted Marketplace\n',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextSpan(
                      text: 'for Second-Hand',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextSpan(
                      text: ' Cars',
                      style: TextStyle(color: Color(0xffF9BE33)),
                    ),
                  ],
                ),
              ),
            ),
      
            
            Positioned(
              bottom: 130,
              left: 20,
              right: 20,
              child: Text(
                'Discover the Best Deals\non Pre-Owned Cars',
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
      
            
            Positioned(
              bottom: 40,
              left: 50,
              right: 50,
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>LoginScreen()));
                },
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


