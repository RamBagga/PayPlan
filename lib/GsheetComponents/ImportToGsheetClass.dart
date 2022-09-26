import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';
import 'package:payplan/SmsComponents/SMSClass.dart';
import 'package:sms/sms.dart';

class ImportClass {
  void importX(List<String> msgBody) async {
    final gSheets = GSheets(_credentials);
    final ss = await gSheets.spreadsheet(_spreadSheetId);
    var sheet = ss.worksheetByTitle('WorkSheet1');
    //await sheet!.values.insertValue('Akshay', column: 1, row: 1);
    await sheet!.values.appendColumn(msgBody, fromRow: 2, inRange: true);
    //await sheet!.values.appendColumns([msgBody, msgDate]);
  }
}
// class ImportClass extends StatefulWidget {
//   const ImportClass({Key? key}) : super(key: key);
//
//   @override
//   State<ImportClass> createState() => _ImportClassState();
// }
//
// class _ImportClassState extends State<ImportClass> {
//   @override
//   void initState() {
//     import();
//     super.initState();
//   }
//
//   void import() async {
//     final gSheets = GSheets(_credentials);
//     final ss = await gSheets.spreadsheet(_spreadSheetId);
//     var sheet = ss.worksheetByTitle('WorkSheet1');
//     //await sheet!.values.insertValue('Akshay', column: 1, row: 1);
//     await sheet!.values.appendColumn(['hello', 'getout']);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: Text(
//           "PAYPLAN",
//           style: TextStyle(fontSize: 30),
//         ),
//       ),
//     );
//   }
// }
