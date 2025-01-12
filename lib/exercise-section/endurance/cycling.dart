import 'package:flutter/material.dart';

class CyclingScreen extends StatelessWidget {
  const CyclingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cycling Tips',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal[900],
        elevation: 10,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.teal, Colors.cyan],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            _buildTitle(),
            const SizedBox(height: 30),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  _buildTipCard(
                    context: context,
                    label: 'Tip 1: Adjust Your Saddle Height',
                    description:
                    'Proper saddle height can improve efficiency and reduce strain.',
                    routeName: '/ride1',
                    icon: Icons.settings,
                  ),
                  const SizedBox(height: 20),
                  _buildTipCard(
                    context: context,
                    label: 'Tip 2: Warm-Up Before Riding',
                    description:
                    'A good warm-up prepares your body for a smoother ride.',
                    routeName: '/ride2',
                    icon: Icons.accessibility,
                  ),
                  const SizedBox(height: 20),
                  _buildTipCard(
                    context: context,
                    label: 'Tip 3: Stay Hydrated',
                    description:
                    'Always bring water and stay hydrated during your ride.',
                    routeName: '/ride3',
                    icon: Icons.local_drink,
                  ),
                  const SizedBox(height: 20),
                  _buildTipCard(
                    context: context,
                    label: 'Tip 4: Plan Your Route',
                    description:
                    'Planning ensures a safer and more enjoyable cycling experience.',
                    routeName: '/ride4',
                    icon: Icons.map,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        "Enhance Your Cycling Experience",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          shadows: [
            Shadow(
              offset: Offset(2, 2),
              blurRadius: 4,
              color: Colors.black45,
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildTipCard({
    required BuildContext context,
    required String label,
    required String description,
    required String routeName,
    required IconData icon,
  }) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, routeName),
      child: Card(
        elevation: 8,
        shadowColor: Colors.black54,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [Colors.teal[500]!, Colors.teal[300]!],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(
                icon,
                size: 40,
                color: Colors.white,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
