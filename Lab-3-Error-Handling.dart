import 'dart:io';

void readFile(String filePath) {
  try {
    File file = File(filePath);
    String contents = file.readAsStringSync();
    print('File contents:\n$contents');
  } catch (e) {
    if (e is FileSystemException && e.osError?.errorCode == 2) {
      print('Error: File not found at the specified path.');
    } else {
      print('An error occurred while reading the file: $e');
    }
  }
}

void main() {
  String filePath = 'path/to/nonexistent/file.txt';

  readFile(filePath);
}