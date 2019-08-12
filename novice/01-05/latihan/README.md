Async Await in Dart

Aynchronous berupa hasil eksekusi atau 

In a nutshell, there are two keywords to undestand - `async` and `await`.

```
void hello() async {
  print('something exciting is going to happen here...');
}
```
The await part basically says - `go ahead` anda `run` this function aynchronously.

```
void main() async {
  await hello();
  print('all done');
}
```

PART 2

```
import 'dart:async';

class Employee {
  int id;
  String firstName;
  String lastName;
  
  Employee(this.id, this.firstName, this.lastName);
}

void main() async {
  print("getting employee...");
  var x = await getEmployee(33);
  print("Got back ${x.firstName} ${x.lastName} with id# ${x.id}");
}

Future<Employee> getEmployee(int id) async {
  //Simluate what a real service call delay may look like by delaying 2 seconds   
  await Future<Employee>.delayed(const Duration(seconds: 2));
  //and then return an employee - lets pretend we grabbed this out of a database 🙂
  var e = new Employee(id, "Joe", "Coder");
  return e;
}
```