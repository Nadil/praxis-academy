import 'dart:io';

void main(List<String> args) {
  stdout.write("Jumlah Perulangan : ");
  int n = int.parse(stdin.readLineSync());

  for (int i=1; i<=n; i++){
    print("Perulangan ke-$i");
  }
}

// Dart untuk Percabangan If Else
void main(List<String> args) {
  print("=== PROGRAM GRADE ===");
  stdout.write("Input nilai : ");
  int nilai = int.parse(stdin.readLineSync());

  String grade;

  if(nilai >= 90) grade = "A+";
  else if(nilai >=80) grade = "A";
  else if(nilai >= 70) grade = "A-";
  else if(nilai >= 60) grade = "B+";
  else if(nilai >=50) grade = "B";
  else if(nilai >= 40) grade = "B-";

  print("Grade : $grade");
}

//  Percabangan If
void main(List<String> args) {
  print("Program Diskon");
  stdout.write("Total belanja :");
  int total = int.parse(stdin.readLineSync());

  if (total >= 100000){
    print("ANda mendapatkan bonus!");
  }
}


// Dart untuk Aritmatika
void main(List<String> args) {
  stdout.write("Nilai a :");
  int a = int.parse(stdin.readLineSync()) ;

  stdout.write("Nilai b :");
  int b = int.parse(stdin.readLineSync());

  int hasil;

  hasil = a + b;    
  print("Penjumlahan: $a + $b = $hasil");

  if (hasil > 10) {
    print("luar biasa");
  } else {
    print("hmmm");
  }

  hasil = a - b;
  print("Pengurangan: $a - $b = $hasil");
}

import 'dart:io';
void main(List<String> args) {
  print("Tuliskan nama: ");

  String nama = stdin.readLineSync();
  print("Hai ${nama}");
}
// asynchronous operation dijalankan pada scope, terpisah dari scope  a readLinSync
// stdin : menunggu inputan


// void main(
//     {List<int> list = const [1, 2, 3],
//     Map<String, String> gifts = const {
//       'first': 'paper',
//       'second': 'cotton',
//       'third': 'leather'
//     }}) {
//   print('list:  $list');
//   print('gifts: $gifts');
// }


main() {
  var clapping = '\u{1f44f}';
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  Runes input = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(new String.fromCharCodes(input));
}


String nama = 'Nadila';
int umur = 22;
String alamat = 'Jakal km 14,5';
const bar = 1000000; // Unit of pressure (dynes/cm2)
const double atm = 1.01325 * bar; // Standard atmosphere

void main() {
  print("Nama : $nama");
  print("Umur : $umur");
  print("Alamat : $alamat");
  print(atm);
}


// Define a function.
printInteger(int aNumber) {
  print('The number is $aNumber.'); // Print to console.
}

// This is where the app starts executing.
main() {
  var number = 42; // Declare and initialize a variable.
  printInteger(number); // Call a function.
}

// printNama(dynamic aNama){
//   print("Namanya adalah $aNama");
// }

// main(){
//   var nama = "nadila";
//   printNama(nama);
// }