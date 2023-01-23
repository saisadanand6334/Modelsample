import 'package:flutter/material.dart';

import 'sda.dart';

void main() {
  runApp(const Modelclass());
}

class Modelclass extends StatefulWidget {
  const Modelclass({Key? key}) : super(key: key);

  @override
  State<Modelclass> createState() => _ModelclassState();
}

class _ModelclassState extends State<Modelclass> {
  List<Demo> modellist = <Demo>[
    Demo(
        icooo: Icons.sports_baseball,
        text: "Sports india",
        icon: Icons.check_circle_outline),
    Demo(
        icooo: Icons.biotech_sharp,
        text: 'Science india',
        icon: Icons.add_circle),
    Demo(
        icooo: Icons.newspaper_sharp,
        text: "News india",
        icon: Icons.check_circle_outline),
    Demo(icooo: Icons.public, text: 'Train', icon: Icons.add_circle),
    Demo(icooo: Icons.account_balance, text: 'Bank india', icon:Icons. add_circle),
    Demo(
        icooo: Icons.movie_creation_outlined,
        text: "Wold india",
        icon: Icons.check_circle_outline),
    Demo(icooo: Icons.sort_by_alpha_outlined, text: 'Delhi', icon: Icons.add_circle)
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Center(
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                  label: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            leading: Icon(Icons.arrow_back,color: Colors.black,),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView.builder(
                itemCount: modellist.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            child: Icon(
                              modellist[index].icooo,
                              size: 40,
                            ),
                          ),
                          Text(
                            modellist[index].text,
                            style: TextStyle(fontSize: 30),
                          ),
                          Icon(
                            modellist[index].icon,
                            size: 40,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ));
  }
}
