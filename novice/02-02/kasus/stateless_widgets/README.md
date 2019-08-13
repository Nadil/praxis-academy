# stateless_widgets

# kasus

<img src="https://user-images.githubusercontent.com/16263151/62920762-dd96b700-bdd0-11e9-8802-1402ed72d093.jpeg" width="200" height="375">

<img src="https://user-images.githubusercontent.com/16263151/62920709-bf30bb80-bdd0-11e9-9eb2-c4b7bd67f32b.jpeg" width="200" height="375">


Tampilan hasil
Logic dari aplikasi: apa yang dilakukan oleh aplikasi
Jelaskan widgets, layouts, serta interaktifitas yang ada pada 4 aplikasi kecil tersebut

# Kasus 1 - 02 Flutter: Stateless Widgets

<img src="https://user-images.githubusercontent.com/16263151/62920709-bf30bb80-bdd0-11e9-9eb2-c4b7bd67f32b.jpeg" width="200" height="375">
 

 Main() untuk menjalankan aplikasi dan  menampilkan dari kelas MyStatelessWidget().

 ```
 void main() {
  runApp(new MaterialApp(
    //home: new Text("Cool")
    home: new MyStatelessWidget()
  ));
}
```

Widget build merupakan 

```
Widget build(BuildContext context){
    return new Container(
      //adding bottom padding on card
      padding: new EdgeInsets.only(bottom: 20.0),
      child: new Card(
        child: new Container(
          //adding padding inside card
          padding: new EdgeInsets.all(15.0),
          child: new Column(
          children: <Widget>[
              // new Text("I love Flutter"),
              // new Icon(Icons.favorite)

              this.title,
              this.icon
            ]
          )
        )
      )
    );
  }
}
```

children: <Widget> merupakan.
new MyCard untuk menampilkan.
```
children: <Widget>[
  new MyCard(
    title: new Text("I love Flutter", style: new TextStyle(fontSize: 20.0)),
    icon: new Icon(Icons.favorite, size: 40.0, color: Colors.redAccent)
  ),
  new MyCard(
    title: new Text("I love Donuts", style: new TextStyle(fontSize: 20.0)),
    icon: new Icon(Icons.donut_large, size: 40.0, color: Colors.brown)
  ),
  new MyCard(
    title: new Text("I see you", style: new TextStyle(fontSize: 20.0)),
    icon: new Icon(Icons.visibility, size: 40.0, color: Colors.blue)
  )
]
```  


