import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/kucingsatu.jpg',
    'assets/kucingdua.jpg',
    'assets/kucingtiga.jpg',
    'assets/kucingempat.jpg',
    'assets/kucinglima.jpg',
    'assets/kucingenam.jpg',
    'assets/kucingtujuh.jpg',
    'assets/kucingdelapan.jpg',
    'assets/kucingsepuluh.jpg',
    'assets/kucingsebelas.jpg',
    'assets/kucingduabelas.jpg',
    'assets/kucingtigabelas.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  Text('Hi, Ardhian', style: TextStyle(fontSize: 24)),
                  Spacer(),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/kucingsatu.jpg'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text('Kucing Favorit', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Container(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 200,
                    margin: EdgeInsets.only(right: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        imagePaths[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
