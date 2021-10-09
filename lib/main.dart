import 'package:flutter/material.dart';
import 'models/deletePersonal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff979B9F),
        appBar: AppBar(
          title: Icon(Icons.arrow_back),
        ),
        body: ListView(
          children: [
            Center(
              child: Image(
                image: AssetImage('images/apple-settings-1-493162.png'),
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Settings',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('images/person.jpg'),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text('Ruaa Mohamed'),
                    subtitle: Text('Personal Information'),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DeletePersonal()),
                      );
                    },
                    icon: const Icon(Icons.arrow_forward_ios))
              ],
            ),
            Divider(
              color: Colors.black,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.calendar_today_outlined,
                    size: 30,
                  ),
                ),
                Text(
                  'MyCards',
                  style: TextStyle(fontSize: 15),
                ),
                Expanded(child: Container()),
                IconButton(
                    onPressed: null, icon: const Icon(Icons.arrow_forward_ios))
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.notifications,
                    size: 30,
                  ),
                ),
                Text(
                  'Notifications',
                  style: TextStyle(fontSize: 15),
                ),
                Expanded(child: Container()),
                IconButton(
                    onPressed: null, icon: const Icon(Icons.arrow_forward_ios))
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.security,
                    size: 30,
                  ),
                ),
                Text(
                  'Security',
                  style: TextStyle(fontSize: 15),
                ),
                Expanded(child: Container()),
                IconButton(
                    onPressed: null, icon: const Icon(Icons.arrow_forward_ios))
              ],
            ),
            Divider(
              color: Colors.black,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.translate,
                    size: 30,
                  ),
                ),
                Text(
                  'Language',
                  style: TextStyle(fontSize: 15),
                ),
                Expanded(child: Container()),
                IconButton(
                    onPressed: null, icon: const Icon(Icons.arrow_forward_ios))
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.text_fields,
                    size: 30,
                  ),
                ),
                Text(
                  'Text Size',
                  style: TextStyle(fontSize: 15),
                ),
                Expanded(child: Container()),
                IconButton(
                    onPressed: null, icon: const Icon(Icons.arrow_forward_ios))
              ],
            ),
          ],
        ));
  }
}
