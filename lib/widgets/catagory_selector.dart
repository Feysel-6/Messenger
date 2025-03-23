import 'package:flutter/material.dart';

class CatagorySelector extends StatefulWidget {
  @override
  _CatagorySelectorState createState() => _CatagorySelectorState();
}

class _CatagorySelectorState extends State<CatagorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Messages', 'Online', 'Groups', 'Requests'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Text(
                    categories[index],
                    style: TextStyle(
                      fontSize: 28.0,
                      color: index == selectedIndex ? Colors.deepOrange : Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                ),
              ),
            );
          },
      ),
    );
  }
}
