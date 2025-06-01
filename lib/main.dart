import 'package:flutter/material.dart';
import 'search_screen.dart';
import 'settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lightweight File Manager',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: FilesScreen(),
    );
  }
}

class FilesScreen extends StatelessWidget {
  const FilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Files'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchScreen()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search files',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.folder),
                  title: Text('Recent Documents'),
                  onTap: () {
                  },
                ),
                ListTile(
                  leading: Icon(Icons.folder),
                  title: Text('Recent Images'),
                  onTap: () {
                  },
                ),
                ListTile(
                  leading: Icon(Icons.folder),
                  title: Text('Recent Videos'),
                  onTap: () {
                  },
                ),
                ListTile(
                  leading: Icon(Icons.folder),
                  title: Text('Recent Audio'),
                  onTap: () {
                  },
                ),
                ListTile(
                  leading: Icon(Icons.folder),
                  title: Text('Downloads'),
                  onTap: () {
                  },
                ),
                ListTile(
                  leading: Icon(Icons.folder),
                  title: Text('Documents'),
                  onTap: () {
                  },
                ),
                ListTile(
                  leading: Icon(Icons.folder),
                  title: Text('Images'),
                  onTap: () {
                  },
                ),
                ListTile(
                  leading: Icon(Icons.folder),
                  title: Text('Videos'),
                  onTap: () {
                  },
                ),
                ListTile(
                  leading: Icon(Icons.folder),
                  title: Text('Audio'),
                  onTap: () {
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
        onPressed: () {
        },
      ),
    );
  }
}
