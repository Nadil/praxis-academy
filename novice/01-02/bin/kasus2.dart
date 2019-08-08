// // Part 1 
// void Index_Equal_Value(T, st, end) {
//   if (st > end){
//     return -1;
//   }
//   var mid = (st + end) / 2;
//   if (T[mid] > mid) {
//     return Index_Equal_Value(T, st, mid - 1);
//   }
//   else if (T[mid] < mid) {
//     return Index_Equal_Value(T, mid + 1, end);
//   }  
//   else {
//     return mid;
//   } 
// }

// // Part 2
// for (i <= 1; to length[A] - 1) {
//    do key <- A[i];
//    j <- i;
//    while (j > 0 && A[j - 1] > key) {
//      do A[j] <- A[j - 1]
//        j <- j - 1;
//    A[j] <- key;
//   }
// }
       
// // Part 3
// void MaxValue(A, p, r){
//   max <- p;
//   for (i <- p + 1 to r) {
//     if (A[i] > A[max]){
//       max <- i;
//     }
//   return max;
//   }  
// }

// // Part 4
// void CountNum(A, n, t, num){
//   if (A[n - 1] = num) {
//     return count <- 1;
//   } else {
//     return count <- 0;
//   }
//   if (n > 1 ){
//     return count <- count + CountNum(A, n - 1, num);
//   }
//   return count;
// }

// // Part 5
// void CountNum(A, n,, num, t){
//   if (t<0){
//     return false;
//   }
//   if (n = 2) {
//     if (t = 0){
//       return true;
//     } else {
//       return false;
//     }
//   }
//   if (A[n - 1] = num){
//     return t <- t - 1;
//   }
//   return CountNum(A, n - 1, num ,t);
// }

    
