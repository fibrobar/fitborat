import 'package:flutter/material.dart';

class SwimScreen extends StatelessWidget {
  const SwimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Swimming Styles',
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
            colors: [Colors.teal, Colors.lightBlueAccent],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _buildHeader(),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  _buildSwimmingCard(
                    context: context,
                    label: 'Backstroke',
                    routeName: '/backstroke',
                    icon: Icons.water,
                  ),
                  const SizedBox(height: 15),
                  _buildSwimmingCard(
                    context: context,
                    label: 'Breaststroke',
                    routeName: '/breaststroke',
                    icon: Icons.pool,
                  ),
                  const SizedBox(height: 15),
                  _buildSwimmingCard(
                    context: context,
                    label: 'Butterfly',
                    routeName: '/butterfly',
                    icon: Icons.bug_report,
                  ),
                  const SizedBox(height: 15),
                  _buildSwimmingCard(
                    context: context,
                    label: 'Freestyle',
                    routeName: '/freestyle',
                    icon: Icons.directions_boat,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Text(
        "Explore Swimming Styles",
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
      ),
    );
  }

  Widget _buildSwimmingCard({
    required BuildContext context,
    required String label,
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
              colors: [Colors.cyan, Colors.teal],
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
                child: Text(
                  label,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
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
