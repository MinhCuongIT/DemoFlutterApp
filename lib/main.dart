import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final Widget titleSection = new Text(
    //   "This is a title section!",
    //    textAlign: TextAlign.center,
    //     style: new TextStyle(
    //       fontSize: 20.0,
    //       fontWeight: FontWeight.bold,
    //       color: Colors.blue,
    // ),);

    final Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: new Text(
                    "Aloha",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ),
                new Text(
                  "I been watting for the time, waitting for you to say you're mine",
                  style: new TextStyle(fontSize: 16.0, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          new Container(
            padding: new EdgeInsets.only(right: 4.0),
            child: new Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          new Text(
            "100",
            style: new TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    );

    final Widget titleSectionColumn = new Container(
      child: new Column(
        children: <Widget>[
          new Text("This is item 1c"),
          new Text("This is item 2c"),
          new Text("This is item 3c"),
          new Text("This is item 4c"),
        ],
      ),
    );

    final bottomTextSection = new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Text(
        '''Sunflower (Helianthus annuus L.) belongs to the family Asteraceae. The Helianthus genus contains 65 different species of which 14 are annual plants. The sunflower plant originated in eastern North America. It is thought to have been domesticated around 3000 B.C. by Native Americans. In the late 1800s the sunflower was introduced in the Russian Federation where it became a food crop and Russian farmers made significant improvements in the way that the sunflower was cultivated. Since 3000 B.C. a wide range of uses of sunflower have been reported throughout the world such as ornamental plant, medicinal, alimentary, feedstock, fodder, dyes for textile industry, body painting, decorations, and so on. Sunflower species are allelopathic in nature and this crop appears to have a bright future, especially if the scientists can translate the cutting-edge research into technologies that will reduce the reliance on synthetic herbicides, pesticides, and crop protection chemicals. On the one hand sunflower is well known by its phytoremediation potential, thus it can be speculated that the good tolerance of sunflower towards pollutants coupled with an increased accumulation/degradation capacity might contribute to an efficient removal of pollutants from soil and water; on the other hand sunflower possesses the potential to develop bioenergy systems that allow for synergies between food and energy production. Because the sunflower has several potential markets, it is a good choice for growers on both small and large scales. However, it has to be remembered that scientific, technical or agricultural projects linked with sunflower have to include side effects elsewhere in order to shape a sustainable future. ONLY AVAILABLE ON THE STORE OF NOVA SCIENCE PUBLISHERS & AMAZON.''',
        style: new TextStyle(fontSize: 16.0, color: Colors.grey[850]),
      ),
    );

    Widget buildButton(IconData icon, String buttonTitle) {
      final tintColor = Colors.blue;
      return new Column(
        children: <Widget>[
          new Icon(
            icon,
            color: tintColor,
          ),
          new Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: new Text(
              buttonTitle,
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      );
    }

    final Widget fourButtonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButton(Icons.home, "Home"),
          buildButton(Icons.arrow_back_ios, "Back"),
          buildButton(Icons.arrow_forward_ios, "Next"),
          buildButton(Icons.share, "Share"),
        ],
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn Layout in Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Layout in Flutter"),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/sun_flower.jpg',
              fit: BoxFit.cover,
            ),
            titleSection,
            fourButtonSection,
            bottomTextSection,
          ],
        ),
      ),
    );
  }
}
