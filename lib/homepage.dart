import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
// Define variables and methods that will change here

  @override
  Widget build(BuildContext context) {
    const _homeTextColor = Color(0xFF57150B);
    const _backgroundColor = Color(0xFFFFCC00);
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        backgroundColor: _homeTextColor,
        title: const Text(
          "RU Fossil Park",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            "images/fossils.png",
            width: 375,
            height: 264,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("FossilPark");
            },
            child: const Text(
              'ABOUT RU FOSSIL PARK',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: _homeTextColor),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Fossils Found at RU Fossil Park',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20,
                color: _homeTextColor,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("Invertebrates");
            },
            child: const Text(
              "INVERTEBRATES",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: _homeTextColor),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("Vertebrates");
            },
            child: const Text(
              "VERTEBRATES",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: _homeTextColor),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("NonFossils");
            },
            child: const Text(
              "NON-FOSSILS",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: _homeTextColor),
            ),
          ),
        ],
      )),
    );
  }
}

class FossilPark extends StatelessWidget {
  const FossilPark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://www.rowan.edu/fossils/",
      appBar: AppBar(
        title:
            const Text("RU Fossil Park", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF57150B),
      ),
    );
  }
}

//Invertibrates
class Invertebrates extends StatefulWidget {
  const Invertebrates({Key? key}) : super(key: key);

  @override
  InvertebratesState createState() => InvertebratesState();
}

class InvertebratesState extends State<Invertebrates> {
  List invertebratesNames = [
    "Cucullaea (Clam)",
    "Crassatellites vadosus (Clam)",
    "Turritella vertebroides (Snail)",
    "Oleneothyris harlani (Brachiopod)",
    "Terebratulina atlantica (Brachiopod)",
    "Pycnodonte dissimilaris (Oysters)",
    "Gryphaeostrea vomeri (Oyster)",
    "Thalassinoides sp. Burrow",
    "Peridonella dichotoma (Sponge)",
    "Flabellum mortoni (Coral)",
  ];

  List invertebratesDescription = [
    "This genus of clam is commonly called a false ark clam and spans the Cretaceous/Paleocene extinction at Edelman Fossil Park. The former mine workers here nicknamed these fossils as 'squirrel heads' because of their shape. There are three species preserved at this locality: 1) Cucullaea neglecta - found in the Navesink Formation, 2) Cucullaea vulgaris - found in the lower Hornerstown Formation, and 3) Cucullaea macrodonta - found in upper Hornerstown Formation. Most guests find the common Cucullaea vulgaris. Its species name vulgaris (Latin for \"common\") refers to how frequently this fossil is found. The genus Cucullaea can still be found today and is canned in southeast Asia for human consumption. Like most invertebrate fossils preserved at Edelman Fossil Park, Cucullaea are preserved as internal casts, also known as steinkerns (German for \"stone center \")",
    "Crassatellites is the second most common clam found at Edelman Fossil Park, behind Cucullaea. Crassatellites are flatter than Cucullaea, have more pointed hinges, and smaller \"wing\" projecting behind the hinge. It is likely this clam filtered its food from the water and burrowed into the sand. Crassatellites, like most invertebrate fossils preserved at the site, are preserved as internal casts, also known as steinkerns (German for \"stone center \" )",
    "Turritella was a tall-spired snail that burrowed into the sand and filtered its food from the water. As a snail, it belongs to the class Gastropoda which means \"stomach foot\". Like most invertebrate fossils preserved at the Edelman Fossil Park, Turritella are preserved as internal casts, also known as steinkerns (German for \"stone center\")",
    "Although these fossils may look like clams, they are only distantly related. Oleneothyris belongs to the phylum Brachiopoda not Mollusca (which includes clams). The main difference between brachiopods and clams is that the former lacks symmetry about its hinge; the two valves of the shell are not identical in shape. The one hooks over the other to form the hinge. Brachiopods have existed for over 500 million years. The vast majority of brachiopods found at Edelman Fossil Park are Paleocene in age. Oleneothyris is the larger of the two brachiopod species found at Edelman Fossil Park and, like most invertebrate fossils preserved here, they are preserved as internal casts, also known as steinkerns (German for \"stone center\")",
    "Terebratulina is the smaller of the two brachiopod species found at Edelman Fossil Park. Although these fossils may look like clams they are only distantly related. Terebratulina belongs to the phylum Brachiopoda not Mollusca (which includes clams). The main difference between brachiopods and clams is that the former lacks symmetry about its hinge; the two valves of the shell are not identical in shape. The one hooks over the other to form the hinge. Brachiopods have existed for over 500 million years. The vast majority of brachiopods found at Edelman Fossil Park are Paleocene in age. Like most invertebrate fossils preserved here, they are preserved as internal casts, also known as steinkerns (German for \"stone center\")",
    "This is the only invertebrate preserved at Edelman Fossil Park that preserves as a fossil shell (not as a steinkern). Their shells have been replaced by tiny crystals of pyrite (commonly known as Fool's Gold). The pyrite crystals cause the fossil to look speckled with gold in the sunlight, especially when wet. Their shells are very fragile and are often recovered as fragments. Sometimes at Edelman Fossil Park Pycnodonte can be found preserved as an internal cast, also known as steinkern (German for \"stone center\")",
    "This is a second species of oyster found at the Edelman Fossil Park. Like other oysters, Gryphaeostrea was a filter feeder and ate tiny food particles in the water. It is shaped like a fingernail and, unlike Pycnodonte, is more common to be preserved as internal casts also known as steinkerns (German for \"stone center\") and not replaced with pyrite",
    "The sediment at the Edelman Fossil Park has been over 80% bio-turbated. This means that millions of years ago crustaceans dug burrows in the sea floor. Lobsters are the most likely taxa to have made these burrows as holes to live in. Some of these burrows have since filled and are preserved as casts or as the mud lining and remain hollow",
    "This is one of the most common fossils at Edelman Fossil Park. Sponges (Phylum: Porifera) are one of the oldest groups of multicellular animals on Earth, having evolved over 600 million years ago. They anchor themselves on the sea floor and are filter feeders. The fossils preserved at this site are usually tube like and sometimes branched. They preserve a patterned texture of very small holes, through which they circulated water to filter out bits of organic material",
    "Flabellum was a solitary horn coral unlike most colonial corals living today. As a coral, it had a symbiotic relationship with microorganisms",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0xFF57150B),
            title: const Text("RU Fossil Park Fossils",
                style: TextStyle(
                  color: Colors.white,
                ))),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                primary: const Color(0xFF57150B),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("Invertebrates");
              },
              child: const Text('Invertebrates'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: const Color(0xFF57150B),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("Vertebrates");
              },
              child: const Text('Vertebrates'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: const Color(0xFF57150B),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("NonFossils");
              },
              child: const Text('Non Fossils'),
            )
          ]),
          Expanded(
              child: ListView.separated(
            itemCount: invertebratesNames.length,
            itemBuilder: (context, int index) {
              return ListTile(
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  _detailsDialog(context, index);
                },
                title: Text(invertebratesNames.elementAt(index),
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              );
            },
            separatorBuilder: (context, position) {
              return const Divider(
                color: Color(0xFF57150B),
                thickness: 1,
              );
            },
          ))
        ])));
  }

  Future _detailsDialog(BuildContext context, int index) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Fossil Details"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(invertebratesDescription[index]),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Close"))
            ],
          );
        });
  }
}

//Vertebrates
class Vertebrates extends StatefulWidget {
  const Vertebrates({Key? key}) : super(key: key);

  @override
  VertebratesState createState() => VertebratesState();
}

class VertebratesState extends State<Vertebrates> {
  List vertebratesNames = [
    "Coprolites (Fossilized Poop)",
    "Otodus obliquus (Mackerel shark)",
    "Squalicorax pristodonthus (Crow Shark)",
    "Odontaspis cuspidata (Sand Tiger Shark)",
    "Cretolamna appendiculata (Mackerel shark)",
    "Enchodus ferox (Saber-Toothed Herring)",
    "Fish Fin Spine",
    "Fish Vertebra",
    "Shark Vertebra",
  ];

  List vertebratesDescriptions = [
    "Fecal matter occasionally fossilizes and can provide information on prehistoric diets. At Edelman Fossil Park, multiple types of coprolites are preserved. Shark coprolites are readily identifiable from their spiral shape as a result of the spiral shaped colon of sharks. Crocodile and turtle coprolites are more cylindrical.",
    "This mackerel shark is only found in the Paleocene at Edelman Fossil Park from about 60 to 45 million years ago. It can be larger than its older relative Cretolamna appendiculata that lived during the Cretaceous Period. Modern mackerel sharks are about 10ft in length, eat smaller fish, and are still found off the north east coast of the United States. Most of what we know about this fossil species comes from fossilized teeth as the cartilaginous skeletons of sharks do not preserve well.",
    "This prehistoric shark could grow up to 15 feet. Most of what we know about this species comes from fossilized teeth as the cartilaginous skeletons of sharks do not preserve well.",
    "Modern sand tiger sharks live in coastal regions worldwide and can reach lengths of up to 11 feet. Most of what we know about this species comes from fossilized teeth as the cartilaginous skeletons of sharks do not preserve well.",
    "This mackerel shark is only found in the Cretaceous at Edelman Fossil Park. It lived from about 90 to 50 million years ago around the world and is considered one of the most successful sharks in history. It is smaller than its younger relative Otodus obliquus that lived during the Paleocene. Modern mackerel sharks are about 10 feet in length, eat smaller fish, and are still found off the north east coast of the United States. Most of what we know about this species comes from fossilized teeth as the cartilaginous skeletons of sharks do not preserve well.",
    "The saber-toothed herring was a bony fish found worldwide from 90 to 50 million years ago. At Edelman Fossil Park we most commonly find teeth of this fish. After the fish had earned its nickname, scientists discovered it was actually more closely related to salmon than herring.",
    "These spines helped hold up the dorsal fin of a fish that lived millions of years ago. Many fish species used to live in ancient New Jersey, but few can be identified by a fin spine.",
    "This is a bone from the spine of an ancient fish. It is distinguished from a shark vertebra primarily by its hour-glass shape. Many fish species used to live in ancient New Jersey, but few can be identified by vertebrae.",
    "This is a bone from the spinal column of an ancient shark. Behind a shark's teeth, vertebrae are the next most common element of to fossilize. It is distinguished from a fish vertebra primarily by its hockey puck shape. Many shark species used to live in New Jersey, but few can be identified by vertebrae.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0xFF57150B),
            title: const Text("RU Fossil Park Fossils",
                style: TextStyle(
                  color: Colors.white,
                ))),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                primary: const Color(0xFF57150B),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("Invertebrates");
              },
              child: const Text('Invertebrates'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: const Color(0xFF57150B),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("Vertebrates");
              },
              child: const Text('Vertebrates'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: const Color(0xFF57150B),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("NonFossils");
              },
              child: const Text('Non Fossils'),
            )
          ]),
          Expanded(
              child: ListView.separated(
            itemCount: vertebratesNames.length,
            itemBuilder: (context, int index) {
              return ListTile(
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  _detailsDialog(context, index);
                },
                title: Text(vertebratesNames.elementAt(index),
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              );
            },
            separatorBuilder: (context, position) {
              return const Divider(
                color: Color(0xFF57150B),
                thickness: 1,
              );
            },
          ))
        ])));
  }

  Future _detailsDialog(BuildContext context, int index) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Fossil Details"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(vertebratesDescriptions[index]),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Close"))
            ],
          );
        });
  }
}

//NonFossils
class NonFossils extends StatefulWidget {
  const NonFossils({Key? key}) : super(key: key);

  @override
  NonFossilsState createState() => NonFossilsState();
}

class NonFossilsState extends State<NonFossils> {
  List nonCommonNames = [
    "Concretions",
    "Iron",
    "Vivianite (Mineral)",
    "Bacterial Precipitate (Bacteria Poop)",
    "Quartz (Mineral)"
  ];

  List nonCommonDescriptions = [
    "These are rocks that form by small sand and clay grains cementing together over time. Because of this they have a rough and grainy surface texture. The can be any random shape and usually are not symmetrical. Concretions are more common than fossils at the Edelman Fossil Park.",
    "The element iron precipitates from the ground water to form these red-orange, rusty colored rocks commonly called \"Bog Iron\". The orange color forms as a result of oxidation - the same process that causes rust to form on a car.",
    "This is an iron phosphate mineral and often blue and glassy when first found. But this mineral commonly reacts with the oxygen in the air (a process called 'oxidation'; the same process by which a car rusts) to turn white and crusty.",
    "Though not technically bacteria poop, this rock is a mineral precipitate that forms from the waste of the bacteria living in the ground water at Edelman Fossil Park. It is originally tan in color and looks like a sea sponge but is hard. It can be coated with an iron precipitate that is orange in color.",
    "This mineral is clear in color when pure but often picks up trace elements that make it any color. Quartz found at Edelman Fossil Park is often white, yellow, orange, or pink but other colors can be found. The quartz preserved at this site did not form in New Jersey. Instead it was picked up by the glaciers north of here during the last Ice Age and was deposited by the melt water of the receding glaciers at the top of the quarry. It then fell down to the quarry floor where guests can collect it."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0xFF57150B),
            title: const Text("RU Fossil Park Fossils",
                style: TextStyle(
                  color: Colors.white,
                ))),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                primary: const Color(0xFF57150B),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("Invertebrates");
              },
              child: const Text('Invertebrates'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: const Color(0xFF57150B),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("Vertebrates");
              },
              child: const Text('Vertebrates'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: const Color(0xFF57150B),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("NonFossils");
              },
              child: const Text('Non Fossils'),
            )
          ]),
          Expanded(
              child: ListView.separated(
            itemCount: nonCommonNames.length,
            itemBuilder: (context, int index) {
              return ListTile(
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  _detailsDialog(context, index);
                },
                title: Text(nonCommonNames.elementAt(index),
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              );
            },
            separatorBuilder: (context, position) {
              return const Divider(
                color: Color(0xFF57150B),
                thickness: 1,
              );
            },
          ))
        ])));
  }

  Future _detailsDialog(BuildContext context, int index) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Fossil Details"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(nonCommonDescriptions[index]),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Close"))
            ],
          );
        });
  }
}
