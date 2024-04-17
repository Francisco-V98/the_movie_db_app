import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 24, 24),
      appBar: AppBarProyect(),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              HeaderCarrousel(),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CarrouselContinueWaching(),
                    SizedBox(height: 24),
                    CarrouselContinueWaching(),
                    SizedBox(height: 24),
                    CarrouselContinueWaching(),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 32,
          right: 32,
          bottom: 24,
          child: BottomNavBarProyect(),
        ),
      ],
    );
  }
}
