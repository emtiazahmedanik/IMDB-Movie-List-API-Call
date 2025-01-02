import 'package:flutter/material.dart';
import 'package:mymovies/apicall.dart';

import 'futurebuilder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
      theme:ThemeData.light().copyWith(
        primaryColor: Colors.blueGrey,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
        )
      )
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: bottomnavbar(),
      appBar: AppBar(backgroundColor: Colors.white,),
      body: SafeArea(
        child: Column(
          children: [
            searchbar(),
            futurebilder()
          ],
        ),
      ),
    );
  }
}

class searchbar extends StatelessWidget {
  const searchbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Material(
        borderRadius: BorderRadius.circular(9),
        elevation: 5,
        child: TextField(
          style: TextStyle(color: Colors.black),
          cursorColor: Colors.black,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            suffixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.camera_alt_outlined),
                  onPressed: () {
                    // Add camera functionality
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.mic_none_outlined),
                  onPressed: () {
                    // Add microphone functionality
                  },
                ),
              ],
            ),
            hintText: 'Type to search...',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9.0),
              borderSide: const BorderSide(color: Colors.white),

            ),
            enabledBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(9.0),
              borderSide: const BorderSide(color: Colors.white),

            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9.0),
              borderSide: const BorderSide(color: Colors.white),

            ),
            filled: true,
            fillColor: Colors.white,

          ),
        ),
      ),
    );
  }
}

class bottomnavbar extends StatelessWidget {
  const bottomnavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 5,
      selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: true,

        items: [
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.home,

          ),
          label: 'Home'),
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.search,

          ),
          label: 'Search'),
      BottomNavigationBarItem(
        icon: Opacity(
          opacity: 0.8,
          child: Container(
            width: 54,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(15), bottom: Radius.circular(15))),
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
        label: '',
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.local_offer,),
        label: 'Deals'
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.person,),
        label: 'Profile'
      )
    ]);
  }
}
