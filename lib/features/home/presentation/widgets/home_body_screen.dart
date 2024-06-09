import 'package:flutter/material.dart';
import 'package:med_voy/features/home/presentation/widgets/home_top_bar.dart';

class HomeBodyScreen extends StatelessWidget {
  const HomeBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [HomeTopBar()],
      ),
    );
  }
}
