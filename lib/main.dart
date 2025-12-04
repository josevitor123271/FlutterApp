import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I Love GTA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      const Color(0xFFF9F8F6),
      const Color(0xFFEFE9E3),
      const Color(0xFFD9CFC7),
      const Color(0xFFC9B59C),
    ];

    final List<String> characters = [
      "Carl Johnson",
      "Niko Bellic",
      "Trevor Philips",
      "Michael De Santa",
      "Franklin Clinton",
      "Tommy Vercetti",
      "Claude Speed",
      "Big Smoke",
      "Ryder",
      "Sweet Johnson",
      "Roman Bellic",
      "Lester Crest",
      "Lamar Davis",
      "Officer Tenpenny",
      "Lance Vance",
      "Ken Rosenberg",
      "Catalina",
      "Salvatore Leone"
    ];

    final List<String> descriptions = [
      "Protagonist of GTA: San Andreas.",
      "Protagonist of GTA IV.",
      "One of the three protagonists of GTA V.",
      "One of the three protagonists of GTA V.",
      "One of the three protagonists of GTA V.",
      "Protagonist of GTA: Vice City.",
      "Protagonist of GTA III.",
      "Member of the Grove Street Families.",
      "Member of the Grove Street Families.",
      "Leader of the Grove Street Families.",
      "Niko\'s cousin in GTA IV.",
      "The hacker and planner in GTA V.",
      "Franklin\'s best friend in GTA V.",
      "Corrupt police officer in GTA: San Andreas.",
      "Tommy Vercetti\'s associate in GTA: Vice City.",
      "Lawyer and associate of Tommy Vercetti.",
      "Antagonist in GTA III and San Andreas.",
      "Don of the Leone Crime Family."
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('I Love GTA'),
      ),
      body: GridView.builder(
        itemCount: characters.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.8, // Adjust the aspect ratio to change the height
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.all(8.0),
            color: colors[index % colors.length],
            margin: const EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  characters[index],
                  style: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  descriptions[index],
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
