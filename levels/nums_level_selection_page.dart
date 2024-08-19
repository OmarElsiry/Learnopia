import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:educational_kids_game/features/Games/Math%20game/presantation/view/math_game_view.dart';

class NumsLevelSelectionPage extends StatelessWidget {
  static String numsRouteNameId = 'nums level selection page';

  final Map<String, List<Map<String, dynamic>>> levels = {
    "Group1": [
      {
        "name": "Beep Beep Horse.png",
        "positionX": 0.15,
        "nav to": 10,
        "numbers": ['4', '7', '2', '6', '1', '3'],
        "operators": ['', '+', '']
      },
      {
        "name": "Dayflow Black Cat.png",
        "positionX": 0.25,
        "nav to": 12,
        "numbers": ['5', '9', '2', '8', '3', '6'],
        "operators": ['', '-', '']
      },
      {
        "name": "Ellipse 1.png",
        "positionX": 0.2,
        "nav to": 7,
        "numbers": ['1', '4', '7', '2', '5', '8'],
        "operators": ['', '+', '']
      },
      {
        "name": "Dayflow Black Cat.png",
        "positionX": 0.18,
        "nav to": 15,
        "numbers": ['2', '4', '6', '8', '1', '3'],
        "operators": ['', '*', '']
      },
      {
        "name": "Beep Beep Horse.png",
        "positionX": 0.5,
        "nav to": 18,
        "numbers": ['3', '6', '9', '2', '5', '8'],
        "operators": ['', '/', '']
      },
    ],
  };

  NumsLevelSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    int numberOfLogos = levels["Group1"]!.length;

    return Scaffold(
      body: SafeArea(
        top: true,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.indigoAccent, Colors.cyan],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              _buildCustomAppBar(context),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.all(12),
                  itemCount: numberOfLogos,
                  itemBuilder: (context, index) {
                    var logoInfo = levels["Group1"]![index];

                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MathGameView(
                                correctAnswer: logoInfo["nav to"],
                                numbers: logoInfo["numbers"],
                                operators: logoInfo["operators"],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.orange[200],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Image.asset(
                                  'assets/images/${logoInfo["name"]}',
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.teal[100],
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Level ${logoInfo["nav to"]}",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCustomAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(200.0),
      child: Container(
        padding: EdgeInsets.only(top: 36, bottom: 16),
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: Text(
            'Choose Your Level',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
