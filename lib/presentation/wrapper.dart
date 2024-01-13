import 'package:fluffy_challenge_week_1/presentation/widgets/custom_annotated_region.dart';
import 'package:fluffy_challenge_week_1/presentation/widgets/custom_bottomnavbar.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brightness = theme.brightness;
    return CustomAnnotatedRegion(
      brightness: brightness,
      child: const SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: CustomBottomNavBar(),
        ),
      ),
    );
  }
}
