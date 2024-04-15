import 'package:flutter/material.dart';

import '../widgets/appbar_proyect.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 51, 51, 51),
      appBar: AppBarProyect(),
      body: _Body(),
    );
  }
}



class _Body extends StatelessWidget {
  const _Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [],
    );
  }
}
