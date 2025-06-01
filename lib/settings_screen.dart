import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  SettingsScreenState createState() => SettingsScreenState();
}

class SettingsScreenState extends State<SettingsScreen> {
  bool showHiddenFiles = false;
  String sortBy = 'Name';
  String theme = 'System';

  void _showSortByDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Sort by'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('Name'),
                onTap: () {
                  setState(() {
                    sortBy = 'Name';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Date'),
                onTap: () {
                  setState(() {
                    sortBy = 'Date';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Size'),
                onTap: () {
                  setState(() {
                    sortBy = 'Size';
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Storage',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text('Internal Storage'),
            subtitle: Text('Total: 128 GB, Used: 64 GB'),
          ),
          ListTile(
            title: Text('SD Card'),
            subtitle: Text('Total: 32 GB, Used: 16 GB'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Display',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SwitchListTile(
            title: Text('Show hidden files'),
            value: showHiddenFiles,
            onChanged: (bool value) {
              setState(() {
                showHiddenFiles = value;
              });
            },
          ),
          ListTile(
            title: Text('Sort by'),
            subtitle: Text('$sortBy >'),
            onTap: () {
              _showSortByDialog(context);
            },
          ),
          ListTile(
            title: Text('Theme'),
            subtitle: Text('$theme >'),
            onTap: () {
              _showThemeDialog(context);
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Other',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text('About >'),
            onTap: () {
              _showAboutDialog(context);
            },
          ),
          ListTile(
            title: Text('Help & Feedback >'),
            onTap: () {
              _showHelpAndFeedbackDialog(context);
            },
          ),
        ],
      ),
    );
  }

  void _showThemeDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select theme'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('System'),
                onTap: () {
                  setState(() {
                    theme = 'System';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Light'),
                onTap: () {
                  setState(() {
                    theme = 'Light';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Dark'),
                onTap: () {
                  setState(() {
                    theme = 'Dark';
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('About'),
          content: Text('This is a simple file manager app.'),
          actions: [
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showHelpAndFeedbackDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Help & Feedback'),
          content: Text('This feature is not yet implemented.'),
          actions: [
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
