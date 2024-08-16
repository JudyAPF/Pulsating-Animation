import 'package:flores_pulsating_animation/explicit_animation.dart';
import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:gap/gap.dart';

class AvatarGlowScreen extends StatelessWidget {
  const AvatarGlowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Glow Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            const Gap(100),
            AvatarGlow(
              glowColor: Colors.blue,
              child: const Image(
                image: AssetImage(
                  'assets/images/logo.png',
                ),
              ),
            ),
            const Gap(125),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExplicitAnimationScreen(),
                  ),
                );
              },
              child: const Text('Go to Explicit Animation Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
