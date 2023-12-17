import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_drawer/new_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.amber),
        home: const HomePage(),
        routes: <String, WidgetBuilder>{
          "/a": (BuildContext context) => const NewPage("New Page"),
        });
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer App by Aquib"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("Mohd Aquib Usmani"),
              accountEmail: Text("aquibu1807@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.brown,
                child: Text("A"),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("M"),
                ),
              ],
            ),
            ListTile(
              title: const Text("Page 1"),
              trailing: const Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/a");
              },
            ),
            ListTile(
              title: const Text("Page 2"),
              trailing: const Icon(Icons.arrow_downward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const NewPage("Page Two"),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Text("Close"),
              trailing: const Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("Home Page"),
      ),
    );
  }
}
