void setup() {
  size(100, 100);
  parseFile();
}

void parseFile() {
  // Open the file from the createWriter() example
  BufferedReader reader = createReader("positions.txt");
  String line = null;
  try {
    while ((line = reader.readLine()) != null) {
      String[] pieces = split(line, ",");
      int x = int(pieces[0]);
      int y = int(pieces[1]);
      point(x*100, y*100);
    }
    reader.close();
  } 
  catch (IOException e) {
    e.printStackTrace();
  }
} 
