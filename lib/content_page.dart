import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          bottom: const TabBar(
              tabs: [
                Text(
                  'CHATS',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'STATUS',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'CALLS',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                color: Colors.white,
                width: 3,
              ))),
          actions: const [
            Icon(
              Icons.search_sharp,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
            ),
          ],
          backgroundColor: const Color(0xff128C7E),
          centerTitle: false,
          title: const Text(
            'WhatsApp',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                  margin: const EdgeInsets.all(10),
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white30,
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: const CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              'https://img.freepik.com/free-photo/portrait-beautiful-brunette-girl-with-crossed-arms_176420-9832.jpg?size=626&ext=jpg&ga=GA1.1.1141335507.1719273600&semt=ais_user'),
                        ),
                      ),
                      Expanded(
                          child: chatDetails('KAL VISULAS', 'Where are you?')),
                    ],
                  ));
            }),
      ),
    );
  }

  Widget chatDetails(String name, String mes) {
    return ListTile(
      title: Text(name),
      subtitle: Text(mes),
    );
  }
}
