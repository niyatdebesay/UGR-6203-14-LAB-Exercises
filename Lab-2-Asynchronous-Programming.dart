import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  var httpClient = http.Client();
  var request = http.Request('GET', Uri.parse(url));
  var response = await httpClient.send(request);

  var file = File(savePath);
  var sink = file.openWrite();

  await response.stream.forEach((data) {
    sink.add(data);
  });

  await sink.close();
  httpClient.close();

  print('File downloaded successfully.');
}

void main() async {
  String url = 'https://example.com/samplefile.txt';
  String savePath = './samplefile.txt';

  try {
    await downloadFile(url, savePath);
  } catch (e) {
    print('Error occurred during file download: $e');
  }
}