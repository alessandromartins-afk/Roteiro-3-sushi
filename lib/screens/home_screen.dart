import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import 'product_screen.dart';
import 'profile_screen.dart';
import 'list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Exercício 4 - Produtos
            CustomButton(
              texto: 'Ir para Produtos',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 20),

            // Exercício 1 - Perfil
            CustomButton(
              texto: 'Ir para Perfil',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 20),

            // Exercício 5 - Lista
            CustomButton(
              texto: 'Ir para Lista de Produtos',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}