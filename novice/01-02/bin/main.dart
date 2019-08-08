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
var name = 'Voyager I';
var year = 1977;
var antennaDiameter = 3.7;
var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var image = {
  'tags': ['saturn'],
  'url': '//path/to/saturn.jpg'
};