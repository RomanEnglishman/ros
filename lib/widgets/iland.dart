import 'package:flutter/material.dart';
import 'package:rosss/indexed.dart';

import 'package:rosss/posit.dart';

class AboutIsland extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'Остров Бали',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'Бали — настоящая сказка наяву, прекрасный остров, покрытый террасами изумрудных рисовых полей и лесами из гвоздичных и коричных деревьев, усыпанных ароматными цветами. ',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PositionedWidget()),
              );
            },
            child: Text('Positionded'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IndexedStackWidget()),
              );
            },
            child: Text('Indexed'),
          ),
        ],
      ),
    );
  }
}
