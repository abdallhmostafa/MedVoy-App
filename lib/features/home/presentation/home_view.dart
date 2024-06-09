import 'package:flutter/material.dart';
import 'package:med_voy/features/home/presentation/widgets/home_body_screen.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: HomeBodyScreen()),
    );
  }
}
