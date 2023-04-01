import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'components/call_to_action.dart';
import 'components/social_icon.dart';
import 'components/title_role.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return MaterialApp(
      title: 'Flutter layout demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            // profile image
            SizedBox(
              height: 180,
              child: Stack(
                children: [
                  // background image
                  Image.asset(
                    "images/lake.jpg",
                    height: 100,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

                  // profile pic
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(6.0),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const CircleAvatar(
                        radius: 64,
                        backgroundImage:
                            AssetImage("images/flutter_series.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // spacing
            const SizedBox(height: 16),

            // title section, name and role of the person
            // name
            const TitleRoleSection(),

            // spacing 16
            const SizedBox(height: 16),

            //
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SocialIcon(icon: Ionicons.logo_tiktok),
                SocialIcon(icon: Ionicons.logo_youtube),
                SocialIcon(icon: Ionicons.logo_twitter),
                SocialIcon(icon: Ionicons.logo_facebook),
                SocialIcon(icon: Ionicons.logo_instagram),
              ],
            ),

            // spacing 16
            const SizedBox(height: 16),

            //
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: const [
                  CallToAction(action: "Hire Me"),
                  CallToAction(action: "My Portfolio"),
                  CallToAction(action: "Sign my Petition"),
                  CallToAction(action: "Visit my Store"),
                  CallToAction(action: "Donate"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
