import 'package:gsheets/gsheets.dart';

const _credentials = {
  "type": "service_account",
  "project_id": "payplan-cloud",
  "private_key_id": "75920a659cfd12358564f92f5fe3f69dc996459c",
  "private_key":
      "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQC6H/s5ZflW7ILp\nZwk54ScUOl1z75roO8t9TL68GYabv1EZ5gJDEVbzVAnH1IBhUi1kLWwgnIihaIoR\nHf0e6c58kPm6sSNIhaWLF526t0hwev38zKBCJ9W9WG1cRSPrUXZIE3Ur66YqKRDe\nW29733FVOi6bPL6gKIIr9S2oHBa5ZLu9ACGaxiDvf25J7bOYeu+xpZC7aXV+3JCx\nCqma5z6VAM52Eh0nLoOeW4EOvwBkZ8O0F0kayus4yOISkEQDwJNHk45FkXpXE+IZ\nC4LZ6Yb7ifsL+ePixr1DJnOUQCvzfiwG6Qr1XXFjUhKjNws01KSCc0v8YbfTWRe/\nV7MrYLrNAgMBAAECggEAL2u9jMK789cfhYsQcTQ5yjASplq6S4gMkPiQMgmI376v\nUZtmISNWVXmoYkb0jJcs5HSkM2zebM1fO/w5hPpJ9zfSwKuoEy6l3lnegHd5F9tm\nQdX60NAoZ20Ts+oTvD1NlxCKDm4kMGK1HwoJzfRAglfoDvo7kT+w5rU5dDbv3Tzr\nUrEVcFojEljNhxrWtzmICAwfQgJHd+4aWB9SEsk5P/pp0vYEcavsLZJRvUBUa9rt\n4IAlGDSueuD2lOuXh8ADgOyIl+sb/MTn/JkuyFvJgbz7X0UGEqVvQUYzrI7CR9Aa\nADRfwiQM8Z0H8bOPxca9SYwhCqDk4ULfehSOE2e+WwKBgQDbo5Hg50i82k7v3tFw\nSX3NEa1LMQlULDWuRxthzn0yJtZFtIQnYVha5rnPkeoF2z6+t/7QFyNyPRokLpIZ\nmNtySY6+IvzBskh0hgA/LMpB4QZ7jSJ35SIj6SKViME0rZEjN5j8oO1aWM4szgpQ\nhBDgAprel8K+pIIGcS7gs29ZGwKBgQDY8BE9ygLFClBFQ3MSymWjsWwqnb0h2T1U\nXtMLVDHAD3PUgvklHS7U9e6H3HRNaHm4vdlMGElNhlHdAghS22+tTvBIoIzbildu\nv0flJ/VJS9/BJEV9dWX0mjGp68iTWR2CG+lXnWV4t2ceklA47wTF0jk80Ye+7ZO+\nI7qKDs0iNwKBgQDawRIU9yYp+iCupbThakDikx2PCzroW9PnTSkHg/qLjcTRzhXl\nhv3SI4SjKQf1Z0UZ/PXMWY9TQ2oa6UtYNTczn/GMjBpD7QZfD+uFAF49uRqUyZ+v\n3EXhkFyCpJ8RkWFBuykjTEC6QEKwu1HomXCZO971nh83c2+RbP8si2p2SwKBgQC9\nnnkzjROGr1EieaZn0kmtHzPwvBfJMl2NFaVazaj+u4L/ScwESNHai2yHjIaL8roS\nZL8+6CuKe9GqYFBuPCgNUGZu1QbKDs4Fm2R4RMj93DgkVlP3KVqIxw6J+/JB+S71\nvvfjAUzki0qzSiic2y9MykgFhRAmLvtow0oVyoI7WQKBgGbxe0cbNQihnMfv3v7n\nQFYLL9nwoYdeU9/ibO/eBXKRLZj3dn5cMC9UtygtNOjnmEQNpaHxtoQ0J3vitWTv\nxd3AqmzEzzq2PAs0OmpvHFZo9oOxg7ina/BG4kofYWkytUWSfUv/oq6GHSMAoiAf\nSuo27wDBtxO+YPJPU1FRgpZ3\n-----END PRIVATE KEY-----\n",
  "client_email": "payplan-cloud@payplan-cloud.iam.gserviceaccount.com",
  "client_id": "105886907431261718024",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url":
      "https://www.googleapis.com/robot/v1/metadata/x509/payplan-cloud%40payplan-cloud.iam.gserviceaccount.com"
};

const _spreadSheetId = '10yCrrO9vi73Ew6hFeRQXNzc3VeYZTHPYjBjRmGIwpbg';

class ImportToGsheetClass {
  void importX(List<String?> msgAddress, List<String?> msgDT,
      List<String?> msgContent) async {
    final gSheets = GSheets(_credentials);
    final ss = await gSheets.spreadsheet(_spreadSheetId);
    var sheet = ss.worksheetByTitle('WorkSheet1');
    print("Imported");
    await sheet!.values.appendColumns([msgAddress, msgDT, msgContent]);
  }
}
