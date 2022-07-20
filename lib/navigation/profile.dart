import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  child: Image.network(
                    'https://cdn.wallpapersafari.com/78/25/JU9bGD.jpg',
                    width: double.infinity,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  top: 220 - 155 / 2,
                  child: CircleAvatar(
                    radius: 144 / 2,
                    backgroundColor: Colors.white,
                  ),
                ),
                Positioned(
                  top: 220 - 146 / 2,
                  child: CircleAvatar(
                    radius: 135 / 2,
                    backgroundColor: Colors.grey.shade800,
                    backgroundImage: Image.asset(
                        'assets/photo.jpg').image,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250 - 92 * 2, bottom: 15),
              child: Column(
                children: const [
                  Text(
                    'Ananda Gharyn',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Hai Everyone! 👋 😁',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'About',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Traveling the World and looking for something Interesting. Follow me to get a new awesome experience',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}