import 'package:flutter/material.dart';

class Snip_page extends StatefulWidget {
  const Snip_page({Key? key}) : super(key: key);

  @override
  State<Snip_page> createState() => _SnipState();
}

class _SnipState extends State<Snip_page> {
  List Snip_List = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Customize Snippets'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home');
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Text(
                '-Frequently Used Snippets-',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            Divider(
              height: 20,
              color: Colors.black,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: Snip_List.length,
                itemBuilder: (BuildContext context, int index) {
                  return Snip_List[index];
                },
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                  Snip_List.add(Snip());
                },
                child: Text('Add Snippet')),
          ],
        ),
      ),
    );
  }
}

class Snip extends StatelessWidget {
  const Snip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '1. Snippet',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                GestureDetector(
                  //onTap: ""Edit Snippet"",
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/edit');
                  },
                  child: Icon(
                    Icons.edit,
                    color: Colors.black,
                    size: 15,

                  ),
                )
              ],
            ),
            Divider(
              height: 10,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
