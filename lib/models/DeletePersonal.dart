import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeletePersonal extends StatelessWidget {
  const DeletePersonal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delete Personal"),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 39),
              child: Image(
                image: AssetImage('images/delete.png'),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Delete Personal Information',
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold, wordSpacing: 1),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
                child: Text(
              'Are you sure you want to delete personal information?',
              style: TextStyle(),
              textAlign: TextAlign.center,
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, //Center Row contents horizontally,
              crossAxisAlignment:
                  CrossAxisAlignment.center, //Center Row contents vertically,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: ElevatedButton(
                    onPressed: null,
                    child: Text('Cancel'),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.grey)),
                            
                    // foreground),
                  ),
                ),
                ElevatedButton(
                  onPressed: null,
                  child: Text('Delete'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red)),
                  // foreground),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
