import 'package:flutter/material.dart';
import 'package:tractor/Common/Constants/app_background.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:tractor/Common/Widgets/text_field_widget.dart';

class Conversation extends StatefulWidget {
  final String name;
  const Conversation({super.key, required this.name});

  @override
  State<Conversation> createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {
  late TextEditingController messageController;

  @override
  void initState() {
    super.initState();
    messageController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return NewAppBackground(
        color: Color(0xfff5f5f5),
        child: Scaffold(
            backgroundColor: Color(0xfff5f5f5),
            appBar: AppBar(
              backgroundColor: Color(0xfff5f5f5),
              title: Text(widget.name),
            ),
            body: Column(
              children: [
                Expanded(
                    child: GroupedListView<message, DateTime>(
                  groupSeparatorBuilder: (value) {
                    return Center(
                      child: Card(
                        color: const Color(0xff004b23),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          child: Text(
                            '11:22',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    );
                  },
                  elements: newMessage,
                  groupBy: (newMessage) => DateTime(2022),
                  sort: false,
                  itemBuilder: (context, message newMessage) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2.0, horizontal: 4),
                      child: Align(
                        alignment: newMessage.isCurrentUser
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Card(
                          color: newMessage.isCurrentUser
                              ? const Color(0xff004b23)
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadiusDirectional.circular(4)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 4.0, vertical: 8),
                                child: Text(
                                  newMessage.textmessage,
                                  style: TextStyle(
                                      color: newMessage.isCurrentUser
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
                  child: commonTextField(
                      isChat: true,
                      controller: messageController,
                      text: "Enter Message",
                      maxLines: 1,
                      onChange: (val) {},
                      isPassword: false,
                      obscure: false,
                      validator: () {}),
                )
              ],
            )));
  }
}

class message {
  final String textmessage;
  final bool isCurrentUser;
  final DateTime date;
  message(
      {required this.textmessage,
      required this.isCurrentUser,
      required this.date});
}

List<message> newMessage = [
  message(textmessage: "Hello", isCurrentUser: true, date: DateTime(2020)),
  message(
      textmessage: "Hello there", isCurrentUser: false, date: DateTime(2021)),
  message(textmessage: "Hello", isCurrentUser: true, date: DateTime(2020)),
  message(
      textmessage: "Hello there", isCurrentUser: false, date: DateTime(2021)),
  message(textmessage: "Hello", isCurrentUser: true, date: DateTime(2020)),
  message(
      textmessage: "Hello there", isCurrentUser: false, date: DateTime(2021)),
  message(textmessage: "Hello", isCurrentUser: true, date: DateTime(2020)),
  message(
      textmessage: "Hello there", isCurrentUser: false, date: DateTime(2021)),
  message(textmessage: "Hello", isCurrentUser: true, date: DateTime(2020)),
  message(
      textmessage: "Hello there", isCurrentUser: false, date: DateTime(2021)),
  message(textmessage: "Hello", isCurrentUser: false, date: DateTime(2020)),
  message(
      textmessage: "Hello there", isCurrentUser: false, date: DateTime(2021)),
  message(textmessage: "Hello", isCurrentUser: false, date: DateTime(2020)),
  message(
      textmessage: "Hello there", isCurrentUser: false, date: DateTime(2021)),
  message(textmessage: "Hello", isCurrentUser: true, date: DateTime(2020)),
  message(
      textmessage: "Hello there", isCurrentUser: false, date: DateTime(2021)),
  message(textmessage: "Hello", isCurrentUser: true, date: DateTime(2020)),
  message(
      textmessage: "Hello there", isCurrentUser: false, date: DateTime(2021)),
  message(textmessage: "Hello", isCurrentUser: false, date: DateTime(2020)),
  message(
      textmessage: "Hello there", isCurrentUser: false, date: DateTime(2021)),
  message(textmessage: "Hello", isCurrentUser: false, date: DateTime(2020)),
  message(
      textmessage: "Hello there", isCurrentUser: false, date: DateTime(2021)),
];
