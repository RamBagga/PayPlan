import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:payplan/GsheetComponents/ImportToGsheetClass.dart';
import 'package:payplan/Screens/IntroductoryScreens/IntroScreen.dart';
import 'package:telephony/telephony.dart';

class BackgroundScriptClass extends StatefulWidget {
  const BackgroundScriptClass({Key? key}) : super(key: key);

  @override
  State<BackgroundScriptClass> createState() => _BackgroundScriptClassState();
}

class _BackgroundScriptClassState extends State<BackgroundScriptClass> {
  ImportToGsheetClass import = ImportToGsheetClass();
  final Telephony telephony = Telephony.instance;
  late List<SmsMessage> messages;

  @override
  void initState() {
    importY();
    super.initState();
  }

  Future<List<List<String?>>> getAllMessages() async {
    messages = await telephony.getInboxSms(
      columns: [SmsColumn.ADDRESS, SmsColumn.BODY, SmsColumn.DATE],
      //filter: SmsFilter.where(SmsColumn.ADDRESS).equals("AX-SBIUPI"),
      // sortOrder: [
      //   OrderBy(SmsColumn.ADDRESS, sort: Sort.ASC),
      //   OrderBy(SmsColumn.BODY)
      // ]
    );

    List<String?> address = messages.map((e) => e.address).toList();

    List<String?> dat = messages.map((e) {
      var d = DateTime.fromMillisecondsSinceEpoch(e.date!);
      return DateFormat('dd/MM/yyyy, HH:mm').format(d);
    }).toList();
    List<String?> content = messages.map((e) => e.body).toList();
    List<List<String?>> output = [(address), (dat), (content)];

    return output;
  }

  void importY() async {
    List<List<String?>> arr = await getAllMessages();
    import.importX(arr[0], arr[1], arr[2]);
  }

  @override
  Widget build(BuildContext context) {
    return IntroScreen();
  }
}
