import 'package:flutter/material.dart';
import 'package:grid_layout/pages/character_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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

    final List<Character> characters = [
      Character(name: "Carl Johnson", description: "Protagonist of GTA: San Andreas.", biography: "Carl \"CJ\" Johnson is the protagonist of Grand Theft Auto: San Andreas. He returns to Los Santos after his mother\'s murder and gets drawn back into a life of crime.", initials: "CJ", level: 50, health: 100, attack: 80, defense: 70),
      Character(name: "Niko Bellic", description: "Protagonist of GTA IV.", biography: "Niko Bellic is an ex-soldier from Eastern Europe who comes to Liberty City to escape his past and pursue the \"American Dream\".", initials: "NB", level: 45, health: 90, attack: 85, defense: 65),
      Character(name: "Trevor Philips", description: "One of the three protagonists of GTA V.", biography: "Trevor Philips is a chaotic and unpredictable career criminal. He is a former military pilot and a frequent drug user.", initials: "TP", level: 99, health: 150, attack: 95, defense: 80),
      Character(name: "Michael De Santa", description: "One of the three protagonists of GTA V.", biography: "Michael De Santa is a retired bank robber who is living under the witness protection program. He is unhappily married with two children.", initials: "MD", level: 60, health: 110, attack: 75, defense: 75),
      Character(name: "Franklin Clinton", description: "One of the three protagonists of GTA V.", biography: "Franklin Clinton is a young and ambitious hustler from South Los Santos. He works as a repo man for a luxury car dealership.", initials: "FC", level: 55, health: 105, attack: 80, defense: 70),
      Character(name: "Tommy Vercetti", description: "Protagonist of GTA: Vice City.", biography: "Tommy Vercetti is a hot-tempered mobster who is sent to Vice City to establish a new drug operation. He rises to become the kingpin of the city.", initials: "TV", level: 70, health: 120, attack: 90, defense: 80),
      Character(name: "Claude Speed", description: "Protagonist of GTA III.", biography: "Claude is a silent and mysterious criminal who is betrayed by his girlfriend during a bank robbery. He escapes from prison and seeks revenge.", initials: "CS", level: 40, health: 80, attack: 70, defense: 60),
      Character(name: "Big Smoke", description: "Member of the Grove Street Families.", biography: "Melvin \"Big Smoke\" Harris is a high-ranking member of the Grove Street Families who secretly betrays the gang for power and money.", initials: "BS", level: 30, health: 150, attack: 60, defense: 90),
      Character(name: "Ryder", description: "Member of the Grove Street Families.", biography: "Lance \"Ryder\" Wilson is another high-ranking member of the Grove Street Families who also betrays the gang alongside Big Smoke.", initials: "R", level: 25, health: 90, attack: 65, defense: 55),
      Character(name: "Sweet Johnson", description: "Leader of the Grove Street Families.", biography: "Sean \"Sweet\" Johnson is the leader of the Grove Street Families and CJ\'s older brother. He is dedicated to the gang and its principles.", initials: "SJ", level: 35, health: 100, attack: 70, defense: 65),
      Character(name: "Roman Bellic", description: "Niko\'s cousin in GTA IV.", biography: "Roman Bellic is Niko\'s cousin who lives in Liberty City. He is an optimistic but debt-ridden owner of a taxi company.", initials: "RB", level: 10, health: 70, attack: 30, defense: 40),
      Character(name: "Lester Crest", description: "The hacker and planner in GTA V.", biography: "Lester Crest is a socially awkward but brilliant hacker who masterminds the heists for Michael, Franklin, and Trevor.", initials: "LC", level: 80, health: 80, attack: 50, defense: 50),
      Character(name: "Lamar Davis", description: "Franklin\'s best friend in GTA V.", biography: "Lamar Davis is Franklin\'s best friend, a fellow gang member who is often reckless and gets them into trouble.", initials: "LD", level: 50, health: 100, attack: 75, defense: 65),
      Character(name: "Officer Tenpenny", description: "Corrupt police officer in GTA: San Andreas.", biography: "Officer Frank Tenpenny is a corrupt police officer in the LSPD\'s C.R.A.S.H. unit. He is the main antagonist of the game.", initials: "OT", level: 65, health: 110, attack: 80, defense: 70),
      Character(name: "Lance Vance", description: "Tommy Vercetti\'s associate in GTA: Vice City.", biography: "Lance Vance is a charismatic but unreliable drug dealer who becomes Tommy\'s partner. He is known for his smooth talk and betrayals.", initials: "LV", level: 45, health: 90, attack: 70, defense: 60),
      Character(name: "Ken Rosenberg", description: "Lawyer and associate of Tommy Vercetti.", biography: "Ken Rosenberg is a neurotic and cocaine-addicted lawyer who provides legal assistance and connections to Tommy Vercetti.", initials: "KR", level: 20, health: 80, attack: 40, defense: 40),
      Character(name: "Catalina", description: "Antagonist in GTA III and San Andreas.", biography: "Catalina is a ruthless and volatile criminal who is a major antagonist in both GTA III and San Andreas. She is CJ\'s cousin and Claude\'s ex-girlfriend.", initials: "C", level: 85, health: 100, attack: 90, defense: 70),
      Character(name: "Salvatore Leone", description: "Don of the Leone Crime Family.", biography: "Salvatore Leone is the powerful and paranoid Don of the Leone Crime Family. He is a major character in several GTA games.", initials: "SL", level: 90, health: 130, attack: 85, defense: 80)
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid Layout'),
      ),
      body: GridView.builder(
        itemCount: characters.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.8, // Adjust the aspect ratio to change the height
        ),
        itemBuilder: (BuildContext context, int index) {
          final character = characters[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CharacterDetailsPage(character: character),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: colors[index % colors.length],
              margin: const EdgeInsets.all(2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    character.name,
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    character.description,
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
