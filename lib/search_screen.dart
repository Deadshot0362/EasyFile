import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search files',
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {
                _searchController.clear();
              },
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Documents Filter'),
                    content: Text('Filtering documents...'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text(
              'Documents',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.picture_as_pdf),
            title: Text('Project Proposal.pdf'),
            subtitle: Text('1.2 MB'),
            onTap: () async {
              final Uri url = Uri.file('/home/user/myapp/Project Proposal.pdf');
              if (!await launchUrl(url)) {
                throw Exception('Could not launch $url');
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Meeting Notes.docx'),
            subtitle: Text('800 KB'),
            onTap: () async {
              final Uri url = Uri.file('/home/user/myapp/Meeting Notes.docx');
              if (!await launchUrl(url)) {
                throw Exception('Could not launch $url');
              }
            },
          ),
        ],
      ),
    );
  }
}
