main(List<String> args) {
  Set awarna = new Set.from(["merah", "kuning", "hijau"]);
  Set bwarna = new Set.from(["kuning", "hijau", "jingga"]);

  Set abwarna = bwarna.intersection(awarna); // untuk membandingkan nilai dari awarna dan bwarna

  for(String warna in abwarna) {
    print(warna);
  }

}





// main(List<String> args) {
//  Set numberSet = new Set();
//  numberSet.add(30);
//  numberSet.add(40);
//  numberSet.add(50);
//  print("Default implementation ${numberSet.runtimeType}");
 
//  numberSet.add(100);
//  for(var no in numberSet){
//    print(no);
//  }
// }