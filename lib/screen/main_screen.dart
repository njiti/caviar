import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 280,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/maps.jpg'
              ),
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60, left: 15),
          child: Container(
            child: Row(
              children: [
                Container(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.all(Radius.circular(80)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            'assets/icons/man.png'
                        ),
                      )
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                        'Hi, Francis',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    const Text('Let\'s grab your food', style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
                const SizedBox(width: 70),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Center(
                    child: Badge(
                      label: Text('9+'),
                      child: Icon(Icons.notifications_none, size: 35,),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 159.0),
            child: Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Icon(
                        size: 30,
                        Icons.search_outlined
                    ),
                  ),
                  Text(
                      'Search for Food',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                    ),
                  ),
                  const SizedBox(width: 140),
                  Icon(
                      size: 30,
                      Icons.filter_list
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}