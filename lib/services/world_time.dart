import 'package:http/http.dart' as http;
import 'dart:convert';

class WorldTime {
  String location;
  late String time;
  String flag;
  String url; //Europe%2FAmsterdam

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTimeData() async {
    Uri uri = Uri.parse(
      'https://timeapi.io/api/time/current/zone?timeZone=$url',
    );
    http.Response result = await http.get(uri);
    Map date = jsonDecode(result.body);
    time = date['dateTime'];
  }
}
