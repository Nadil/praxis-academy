enum CurrentState {
  sleeping,
  barking,
  eating,
  walking
}

class Dog {
  String name;
  int age;
  CurrentState state;

  Dog(this.name, this.age, this.state);

  static bark() {
    print('Bow Wow');
  }
}

main(List<String> args) {
  Dog d = new Dog('Duffy', 12, CurrentState.sleeping);
  print(d.state == CurrentState.sleeping);
}



// main(List<String> args) {
//   DataHolder<String> dataHolder = new DataHolder('Some data');
//   print(dataHolder.getData());
//   dataHolder.setData('New Data');
//   print(dataHolder.getData());
// }

// class DataHolder<T> {
//   T data;
//   DataHolder(this.data);

//   getData(){
//     return data;
//   }

//   setData(){
//     this.data = data;
//   }
// }

// class Location<E> {
//   E lat, lng;
//   Location(this.lat, this.lng);

//   toString() => "Have you been to ${lat}, ${lng}";
// }

// void main(List<String> args) {
//   var location1 = new Location<double>(21.271488, -157.822806);
//   print(location1);

//   var location2 = new Location<int>(21, -157);
//   print(location2);

//   var location3 = new Location<String>('21.271488', '-157.822806');
//   print(location3);

// }