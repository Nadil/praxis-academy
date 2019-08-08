// void main() {
//   Buah c1 = new Buah.named('Semangka');
//   Buah c2 = new Buah();
// }

// class Buah { 
//   Buah() {
//     print("Untuk memanggil konstruktor");
//   }
//   Buah.named(String buah){
//     print("nama buah: ${buah}");
//   }

// }

// Getter & SEtter
class Sayur{
  String nama;
  int jumlah;

  String get s_nama{
    return nama;
  }
  void set s_nama(String nama){
    this.nama = nama;
  }

  void set s_jumlah(int jumlah){
    if(jumlah<=0){
      print("Jumlah tidak sesuai!");
    } else{
      this.jumlah = jumlah;
    }
  }

  int get s_jumlah{
    return jumlah;
  }
}

void main(List<String> args) {
  Sayur s = new Sayur();
  s.nama = "Bayam";
  s.jumlah = 6;
  print("Nama Sayur : ${s.s_nama}");
  print("Jumlah : ${s.s_jumlah}");
}