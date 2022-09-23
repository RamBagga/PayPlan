import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';
import 'package:payplan/GsheetComponents/ImportToGsheetClass.dart';
import 'package:payplan/SmsComponents/SMSClass.dart';
import 'package:sms/sms.dart';

const _credentials = r'''
{
  "type": "service_account",
  "project_id": "payplan-cloud",
  "private_key_id": "75920a659cfd12358564f92f5fe3f69dc996459c",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQC6H/s5ZflW7ILp\nZwk54ScUOl1z75roO8t9TL68GYabv1EZ5gJDEVbzVAnH1IBhUi1kLWwgnIihaIoR\nHf0e6c58kPm6sSNIhaWLF526t0hwev38zKBCJ9W9WG1cRSPrUXZIE3Ur66YqKRDe\nW29733FVOi6bPL6gKIIr9S2oHBa5ZLu9ACGaxiDvf25J7bOYeu+xpZC7aXV+3JCx\nCqma5z6VAM52Eh0nLoOeW4EOvwBkZ8O0F0kayus4yOISkEQDwJNHk45FkXpXE+IZ\nC4LZ6Yb7ifsL+ePixr1DJnOUQCvzfiwG6Qr1XXFjUhKjNws01KSCc0v8YbfTWRe/\nV7MrYLrNAgMBAAECggEAL2u9jMK789cfhYsQcTQ5yjASplq6S4gMkPiQMgmI376v\nUZtmISNWVXmoYkb0jJcs5HSkM2zebM1fO/w5hPpJ9zfSwKuoEy6l3lnegHd5F9tm\nQdX60NAoZ20Ts+oTvD1NlxCKDm4kMGK1HwoJzfRAglfoDvo7kT+w5rU5dDbv3Tzr\nUrEVcFojEljNhxrWtzmICAwfQgJHd+4aWB9SEsk5P/pp0vYEcavsLZJRvUBUa9rt\n4IAlGDSueuD2lOuXh8ADgOyIl+sb/MTn/JkuyFvJgbz7X0UGEqVvQUYzrI7CR9Aa\nADRfwiQM8Z0H8bOPxca9SYwhCqDk4ULfehSOE2e+WwKBgQDbo5Hg50i82k7v3tFw\nSX3NEa1LMQlULDWuRxthzn0yJtZFtIQnYVha5rnPkeoF2z6+t/7QFyNyPRokLpIZ\nmNtySY6+IvzBskh0hgA/LMpB4QZ7jSJ35SIj6SKViME0rZEjN5j8oO1aWM4szgpQ\nhBDgAprel8K+pIIGcS7gs29ZGwKBgQDY8BE9ygLFClBFQ3MSymWjsWwqnb0h2T1U\nXtMLVDHAD3PUgvklHS7U9e6H3HRNaHm4vdlMGElNhlHdAghS22+tTvBIoIzbildu\nv0flJ/VJS9/BJEV9dWX0mjGp68iTWR2CG+lXnWV4t2ceklA47wTF0jk80Ye+7ZO+\nI7qKDs0iNwKBgQDawRIU9yYp+iCupbThakDikx2PCzroW9PnTSkHg/qLjcTRzhXl\nhv3SI4SjKQf1Z0UZ/PXMWY9TQ2oa6UtYNTczn/GMjBpD7QZfD+uFAF49uRqUyZ+v\n3EXhkFyCpJ8RkWFBuykjTEC6QEKwu1HomXCZO971nh83c2+RbP8si2p2SwKBgQC9\nnnkzjROGr1EieaZn0kmtHzPwvBfJMl2NFaVazaj+u4L/ScwESNHai2yHjIaL8roS\nZL8+6CuKe9GqYFBuPCgNUGZu1QbKDs4Fm2R4RMj93DgkVlP3KVqIxw6J+/JB+S71\nvvfjAUzki0qzSiic2y9MykgFhRAmLvtow0oVyoI7WQKBgGbxe0cbNQihnMfv3v7n\nQFYLL9nwoYdeU9/ibO/eBXKRLZj3dn5cMC9UtygtNOjnmEQNpaHxtoQ0J3vitWTv\nxd3AqmzEzzq2PAs0OmpvHFZo9oOxg7ina/BG4kofYWkytUWSfUv/oq6GHSMAoiAf\nSuo27wDBtxO+YPJPU1FRgpZ3\n-----END PRIVATE KEY-----\n",
  "client_email": "payplan-cloud@payplan-cloud.iam.gserviceaccount.com",
  "client_id": "105886907431261718024",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/payplan-cloud%40payplan-cloud.iam.gserviceaccount.com"
}
''';

const _spreadSheetId = '10yCrrO9vi73Ew6hFeRQXNzc3VeYZTHPYjBjRmGIwpbg';

// class HomeScreen extends StatefulWidget {
//   HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   SmsQuery query = new SmsQuery();
//   late List<SmsMessage> allMessages;
//   late String val;
//
//   @override
//   void initState() {
//     getAllMessages();
//     import();
//     super.initState();
//   }
//
//   void getAllMessages() {
//     Future.delayed(Duration.zero, () async {
//       List<SmsMessage> messages = await query.getAllSms;
//       // List<SmsMessage> messages = await query.querySms(
//       //   //querySms is from sms package
//       //   kinds: [SmsQueryKind.Inbox],
//       //   //filter Inbox, sent or draft messages
//       //   count: 1, //number of sms to read
//       // );
//       setState(() {
//         //update UI
//         allMessages = messages;
//       });
//     });
//   }
//
//   void import() async {
//     final gSheets = GSheets(_credentials);
//     final ss = await gSheets.spreadsheet(_spreadSheetId);
//     var sheet = ss.worksheetByTitle('WorkSheet1');
//     List<String> ele = allMessages.map((e) => e.body).toList();
//     await sheet!.values.appendColumn(ele);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 100.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           //crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 getAllMessages();
//               },
//               child: Text('Get Messages'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//               },
//               child: Text('Import to Excel'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SmsQuery query = new SmsQuery();
  late List<SmsMessage> allMessages;
  late String val;
  ImportClass _import = ImportClass();
  SMSClass _sms = SMSClass();
  @override
  void initState() {
    getAllMessages();
    super.initState();
  }

  void getAllMessages() {
    Future.delayed(Duration.zero, () async {
      List<SmsMessage> messages = await query.getAllSms;
      // List<SmsMessage> messages = await query.querySms(
      //   //querySms is from sms package
      //   kinds: [SmsQueryKind.Inbox],
      //   //filter Inbox, sent or draft messages
      //   count: 1, //number of sms to read
      // );
      setState(() {
        //update UI
        allMessages = messages;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> msgB = allMessages.map((e) => e.body).toList();
    //List<DateTime> msgD = allMessages.map((e) => e.date).toList();
    _import.importX(msgB);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                getAllMessages();
              },
              child: Text('Get Messages'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Import to Excel'),
            ),
          ],
        ),
      ),
    );
  }
}
