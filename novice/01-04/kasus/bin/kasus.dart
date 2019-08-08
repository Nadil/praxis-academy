class GenericClass<T> {
  T ob;

  GenericClass(T o){
    ob = o;
  }

  getob() {
    return ob;
  }

  void showType() {
    print('Type of T is ${ob.runtimeType}');
  }
  
}

void main(List<String> args) {
  GenericClass<int> iOb = new GenericClass(88);
  iOb.showType();

  int v  = iOb.getob();
  print('Value: ${v}');

  GenericClass<String> strOb = new GenericClass('Generic Test');
  strOb.showType();

  String str = strOb.getob();
  print('value: ' +str);
  
}

