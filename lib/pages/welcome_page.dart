import 'package:chronos/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              "Explore top\nbrand watches",
              style: TextStyle(
                  color: AppColors.secondaryColor, fontSize: 44, height: 1.2),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Choose from 50+ luxury brands",
              style: TextStyle(
                  color: AppColors.secondaryColor.withOpacity(.5),
                  fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/images/imag.png',
              height: MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.width - 100,
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(CupertinoPageRoute(builder: (builder)=>HomePage()));
              },
              child: Container(
                height: 55,
                width: MediaQuery.of(context).size.width - 100,
                decoration: BoxDecoration(
                    color: AppColors.secondaryColor.withOpacity(1.0),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(
                      color: AppColors.secondaryColor.withOpacity(.5),
                      fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                Text(
                  " Login Now",
                  style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
