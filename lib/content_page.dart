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
            actions: [
              const Icon(
                Icons.search_sharp,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.person,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    child: Text('New Group'),
                  ),
                  const PopupMenuItem(
                    child: Text('Settings'),
                  ),
                  const PopupMenuItem(
                    child: Text('Logout'),
                  ),
                ],
              ),
            ],
            backgroundColor: const Color(0xff128C7E),
            centerTitle: false,
            title: const Text(
              'WhatsApp',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          body: TabBarView(children: [
            // ListView.builder(
            //     itemCount: 10,
            //     itemBuilder: (context, index) {
            //       return Container(
            //           margin: const EdgeInsets.all(10),
            //           height: 80,
            //           width: MediaQuery.of(context).size.width,
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //             color: Colors.white30,
            //           ),
            //           child: Row(
            //             children: [
            //               Container(
            //                 margin: const EdgeInsets.all(10),
            //                 child: const CircleAvatar(
            //                   radius: 25,
            //                   backgroundImage: NetworkImage(
            //                       'https://img.freepik.com/free-photo/portrait-beautiful-brunette-girl-with-crossed-arms_176420-9832.jpg?size=626&ext=jpg&ga=GA1.1.1141335507.1719273600&semt=ais_user'),
            //                 ),
            //               ),
            //               Expanded(
            //                   child: chatDetails(
            //                       'KAL VISULAS', 'Where are you?', '6:30 AM')),
            //             ],
            //           ));
            //     }),
            ListView.builder(itemBuilder: (context, index) {
              return const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-photo/portrait-beautiful-brunette-girl-with-crossed-arms_176420-9832.jpg?size=626&ext=jpg&ga=GA1.1.1141335507.1719273600&semt=ais_user'),
                ),
                title: Text('Kall Villians'),
                subtitle: Text('Where are you'),
                trailing: Text('2:30 AM'),
              );
            }),
            ListView.builder(itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text('New Status'),
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.green, width: 3)),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://img.freepik.com/free-photo/portrait-beautiful-brunette-girl-with-crossed-arms_176420-9832.jpg?size=626&ext=jpg&ga=GA1.1.1141335507.1719273600&semt=ais_user'),
                          ),
                        ),
                        title: const Text('Kall Villians'),
                        subtitle: const Text('20min ago'),
                      ),
                    ],
                  ),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Watched Status'),
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.green, width: 0)),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://img.freepik.com/free-photo0portrait-beautiful-brunette-girl-with-crossed-arms_176420-9832.jpg?size=626&ext=jpg&ga=GA1.1.1141335507.1719273600&semt=ais_user'),
                          ),
                        ),
                        title: const Text('Kall Villians'),
                        subtitle: const Text('20min ago'),
                      ),
                    ],
                  ),
                );
              }
            }),
            ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-photo/portrait-beautiful-brunette-girl-with-crossed-arms_176420-9832.jpg?size=626&ext=jpg&ga=GA1.1.1141335507.1719273600&semt=ais_user'),
                ),
                title: const Text('Kall Villians'),
                subtitle: Text(index / 2 == 0
                    ? "You've missed the voice call"
                    : "You've missed the video call"),
                trailing: Icon(
                    index / 2 == 0 ? Icons.phone : Icons.video_call_outlined),
              );
            }),
          ])),
    );
  }

  // Widget chatDetails(String name, String mes, String time) {
  //   return ListTile(
  //     title: Text(name),
  //     subtitle: Text(mes),
  //     trailing: Text(time),
  //   );
  // }

  // Widget callDetails(String text, IconData icon) {
  //   return ListTile(
  //     title: Text(text),
  //     subtitle: Icon(icon),
  //   );
  // }
}
