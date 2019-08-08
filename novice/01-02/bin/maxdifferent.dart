// MaxValue(A, p, r ){
//   int max = p;
//   for (int i = p + 1; i < r; i++){
//     if(A[i] > A[max]){
//       max = i;
//     }
//   }
//   return max;
// } 

// main(List<String> args) {
//   var T = [10, 2, 20, 4, 9, 30];
//   print(MaxValue(T, 0, T.length));
// }


// // Maximum differences
// List<int> MaxDifference(List<int> A) {
//   var maxDiff = A[1] - A[0];
//   var min = A[0];
//   for (int i = 1; i < A.length; i++){
//     if (A[i] - min > maxDiff) {
//       maxDiff = A[i] - min;
//     }
//     if (A[i] < min){
//       min = A[i];
//     }
//   }
//   return maxDiff;
// }

// void main(List<String> args) {
//   List<int> A = [3,9,1];
//   List<int> sorted = MaxDifference(A);
//   print(sorted);
// }

// // Selection Sort

// List<int> SelectionSort(A){
//   for (int i = 0; i < A.length; i--){
//     indexMin = i;
//     for (int j = i+1; i < A.length; i++){
//       if (A[j] < A[indexMin]){
//         indexMin = j;
//       }
//     }
//     if (indexMin != 1) {
//       int temp = A[i];
//       A[i] = A[indexMin];
//       A[indexMin] = temp;
//     }
//   }
// }

// // MinMax Values
List<int> MinMax(A) {
  int min = A[0];
  int max= A[0];
  for (int i = 0; i < A.length; i++){
    if (A[i] < min) {
      min = A[i];
    }
    if (A[i] > max) {
      max = A[i];
    }
  }
  return [min, max];
}

void main(List<String> args) {
  var T = [6, 2, 3, 66, 3, 1];

  print("Minimum value: ${MinMax()}");
  print("Maximum value: ${max[T]}");
}


