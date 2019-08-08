#Minggu 1 Hari 1

**VARIABEL**

Variabel merupakan sebuah simbol untuk menyimpan nilai. Untuk membuat sebuah variabel pada Dart, dapat menggunakan kata `var`. 
`var` dapat diisi dengan semua tipe data.


Contoh:

```
var name = 'Voyager I';
var year = 1977;
var antennaDiameter = 3.7;
var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var image = {
  'tags': ['saturn'],
  'url': '//path/to/saturn.jpg'
};
```

**FUNGSI**

Main merupakan sebuah fungsi yang dapat digunakan untuk menampilkan hasil program.

Contoh:

```
main(){
  print(name);
  print(year);
  if (year >= 2001) {
  print('21st century');
} else if (year >= 1901) {
  print('20th century');
}
for (var object in flybyObjects) {
  print(object);
}
}
```
