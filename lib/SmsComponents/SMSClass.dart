import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';
import 'package:payplan/GsheetComponents/ImportToGsheetClass.dart';
import 'package:sms/sms.dart';

class SMSClass {
  SmsQuery query = new SmsQuery();
  //late List<SmsMessage> allMessages;

  // List<String> getAllMessages() {
  //   List<SmsMessage> messages;
  //   Future.delayed(Duration.zero, () async {
  //     //List<SmsMessage> messages = await query.getAllSms;
  //     messages = await query.querySms(
  //       //querySms is from sms package
  //       kinds: [SmsQueryKind.Inbox],
  //       //filter Inbox, sent or draft messages
  //       count: 1, //number of sms to read
  //     );
  //     //update UI
  //     //allMessages = messages;
  //   });
  //   //List<String> ls = messages.map((e) => e.body).toList();
  //   //return ls;
  // }
}

// class SMSClass extends StatefulWidget {
//   @override
//   _SMSClassState createState() => _SMSClassState();
// }
//
// class _SMSClassState extends State<SMSClass> {
//   SmsQuery query = new SmsQuery();
//   late List<SmsMessage> allMessages;
//
//   @override
//   void initState() {
//     getAllMessages();
//     super.initState();
//   }
//
//   void getAllMessages() {
//     Future.delayed(Duration.zero, () async {
//       //List<SmsMessage> messages = await query.getAllSms;
//       List<SmsMessage> messages = await query.querySms(
//         //querySms is from sms package
//         kinds: [SmsQueryKind.Inbox],
//         //filter Inbox, sent or draft messages
//         count: 10, //number of sms to read
//       );
//       setState(() {
//         //update UI
//         allMessages = messages;
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Read SMS Inbox"),
//           backgroundColor: Colors.redAccent,
//         ),
//         body: SingleChildScrollView(
//           child: Container(
//             padding: EdgeInsets.all(20),
//             child: allMessages == null
//                 ? Center(child: CircularProgressIndicator())
//                 : Column(
//                     children: allMessages.map((messageone) {
//                     //populating children to column using map
//                     String type =
//                         "NONE"; //get the type of message i.e. inbox, sent, draft
//                     if (messageone.kind == SmsMessageKind.Received) {
//                       type = "Inbox";
//                     } else if (messageone.kind == SmsMessageKind.Sent) {
//                       type = "Outbox";
//                     } else if (messageone.kind == SmsMessageKind.Draft) {
//                       type = "Draft";
//                     }
//                     return Container(
//                       child: Card(
//                           child: ListTile(
//                         leading: Icon(Icons.message),
//                         title: Padding(
//                             child: Text(messageone.address + " (" + type + ")"),
//                             padding: EdgeInsets.only(
//                                 bottom: 10, top: 10)), // printing address
//                         subtitle: Padding(
//                             child: Text(messageone.date.toString() +
//                                 "\n" +
//                                 messageone.body),
//                             padding: EdgeInsets.only(
//                                 bottom: 10,
//                                 top: 10)), //pringint date time, and body
//                       )),
//                     );
//                   }).toList()),
//           ),
//         ));
//   }
// }
