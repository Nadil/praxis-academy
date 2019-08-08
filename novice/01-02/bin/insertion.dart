// 1. Insertion Sort

List<int> insertionSort(List<int> data){
  for (int i = 1; i < data.length; i++) {
    print('Langkah: $i');

    int key = data[i];
    print('Key: $key');

    int j = i;
    while (j > 0 && data[j - 1] > key) {
      print('Menemukan angka lebih besar dari: ${data[j-1]}');
      data[j] =data[j - 1];
      print('Insert ${data[j]}');
      j = j - 1;
      
     }
   data[j] = key;
   print('hasil: ${data[j]}');
  }
  return data;
}

void main(List<String> args) {
  List<int> data = [3,9,1];
  List<int> sorted = insertionSort(data);
  print(sorted);
}