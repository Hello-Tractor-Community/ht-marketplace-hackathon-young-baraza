import 'package:flutter/material.dart';
import 'package:tractor/Common/Constants/app_background.dart';
import 'package:tractor/Screens/Chat/conversation.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return NewAppBackground(
        child: Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        title: Text('Chats'),
        backgroundColor: Color(0xfff5f5f5),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) =>
                                const Conversation(name: 'John Doe')));
                      },
                      child: ListTile(
                        leading: Container(
                          padding: const EdgeInsets.all(12),
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/t2.png')),
                              color: Colors.red,
                              shape: BoxShape.circle),
                        ),
                        title: const Text("John Doe"),
                        subtitle:
                            const Text("Our track are still in good condition"),
                        trailing: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text("12:40"),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xff004b23),
                                  shape: BoxShape.circle),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "3",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    ));
  }
}
