import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget{
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              //gambar utama
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  candi.imageAsset,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              ),
              // //tombol back kustom
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32,
                  ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100]?.withOpacity(8.8),
                    shape: BoxShape.circle,
                  ),
                 child: IconButton(onPressed: () {},
                     icon: const Icon(
                       Icons.arrow_back,
                     ),
                 ),
              ),
              ),
            ],
          )

        ],
      ),
    );
  }
}