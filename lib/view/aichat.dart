// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:nuqta/bloc/chat_bloc.dart';
import 'package:nuqta/model/chatmodel.dart';

class AiChat extends StatefulWidget {
  const AiChat({super.key});

  @override
  State<AiChat> createState() => _AiChatState();
}

class _AiChatState extends State<AiChat> {
  final ChatBloc chatBloc = ChatBloc();
  TextEditingController textEditingController = TextEditingController();
  IconData sw = Icons.volume_off_rounded;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 210, 209, 214),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 210, 209, 214),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    sw == Icons.volume_off_rounded
                        ? sw = Icons.volume_up_rounded
                        : sw = Icons.volume_off_rounded;
                  });
                },
                icon: Icon(sw)),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "دحيح",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 67, 104, 231),
                          fontFamily: 'cairo',
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("متصل",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: const Color.fromARGB(255, 75, 186, 78),
                            fontFamily: 'cairo',
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('images/robot.png'),
                  )),
                ),
              ],
            )
          ],
        ),
      ),
      body: BlocConsumer<ChatBloc, ChatState>(
        bloc: chatBloc,
        listener: (context, state) {},
        builder: (context, state) {
          switch (state.runtimeType) {
            case ChatSuccessState:
              List<ChatMessageModel> messages =
                  (state as ChatSuccessState).messages;
              return Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 210, 209, 214)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: ListView.builder(
                      itemCount: messages.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            BubbleSpecialOne(
                              text: messages[index].parts.first.text,
                              isSender:
                                  messages[index].role == "user" ? true : false,
                              textStyle: TextStyle(
                                  fontFamily: 'cairo',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,)
                             ,color:messages[index].role == "user" ? Color.fromARGB(255,51,105,255) : Color.fromARGB(255,238,238,238),
                             ),
                             SizedBox(height: 5 ,)
                          ],
                        ); 
                        
                        // Text(
                        //       messages[index].parts.first.text,
                        //       textAlign: TextAlign.center,
                        //       style: TextStyle(
                        //           fontFamily: 'cairo',
                        //           fontSize: 20,
                        //           fontWeight: FontWeight.w500,
                        //           color: messages[index].role == "user"
                        //               ? Color.fromARGB(255, 222, 234, 255)
                        //               : Colors.black),
                        //     );
                      },
                    )),
                    if (chatBloc.genrating)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 50, right: 10),
                            child: Text(
                              "نقطة تعليم يلامس المستقبل",
                              style: TextStyle(
                                  fontFamily: 'cairo',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Expanded(child: Lottie.asset("images/nga7.json")),
                        ],
                      ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 10, left: 10, right: 10, bottom: 10),
                      child: TextField(
                        controller: textEditingController,
                        style: TextStyle(
                            fontFamily: 'cairo',
                            color: Color.fromARGB(255, 40, 37, 73)),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.question_mark_outlined,
                            color: const Color.fromARGB(255, 55, 148, 254),
                          ),
                          hintText: "اكتب رسالتك هنا",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid,
                            ),
                          ),
                          suffixIcon: Container(
                            margin: EdgeInsets.all(8),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(100, 50),
                                backgroundColor:
                                    Color.fromARGB(255, 55, 148, 254),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                              ),
                              child: Text(
                                "ارسل",
                                style: TextStyle(
                                    fontFamily: 'cairo', color: Colors.black),
                              ),
                              onPressed: () {
                                if (textEditingController.text.isNotEmpty) {
                                  String text = textEditingController.text;
                                  textEditingController.clear();
                                  chatBloc.add(ChatGenerateNewTextMessageEvent(
                                      inputMessage: text));
                                }
                              },
                            ),
                          ),
                        ),
                        onSubmitted: (value) {
                          if (textEditingController.text.isNotEmpty) {
                            String text = textEditingController.text;
                            textEditingController.clear();
                            chatBloc.add(ChatGenerateNewTextMessageEvent(
                                inputMessage: text));
                          }
                        },
                      ),
                    ),
                  ],
                ),
              );
            default:
              return Container(
                color: Colors.black,
              ); // Placeholder return, adjust as needed
          }
        },
      ),
    );
  }
}

/*Container(
          width: double.maxFinite,
          height: double.maxFinite,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Expanded(child: ListView()),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        style:
                            TextStyle(fontFamily: 'cairo', color: Colors.black),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                    )),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.send),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ); */