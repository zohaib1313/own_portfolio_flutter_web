void printWrapped(String text) {
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(text).forEach(
      // ignore: avoid_print
      (match) => print("\n********TAGGGG*********\n${match.group(0)}"));
}
