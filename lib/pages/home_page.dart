import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int workoutCount = 0;
  int meditationCount = 0;
  int showerCount = 0;
  int readingCount = 0;

  getPercentage(int count) {
    if (count > 30) {
      return 1.0;
    }
    return count / 30;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 224, 240, 9),
      child: SingleChildScrollView(
          child: Column(
        children: [
          AppBar(title: const Text("Track Habits")),
          const SizedBox(
            height: 20,
          ),
          Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
                // ignore: prefer_const_literals_to_create_immutables
                title: Row(children: [
                  //const ImageIcon(AssetImage("image_icons/dumbbell.png")),
                  Image.asset("image_icons/dumbbell.png",
                      fit: BoxFit.cover, height: 30),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 10.0),
                    child: const Text("Workout"),
                  ),
                  CircularPercentIndicator(
                    radius: 20.0,
                    lineWidth: 8.0,
                    percent: getPercentage(workoutCount),
                    progressColor: Colors.white,
                  )
                ]),
                subtitle: Text("Count: $workoutCount"),
                trailing: SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(
                            icon: const Icon(Icons.arrow_upward_rounded),
                            onPressed: () => {
                                  setState(() {
                                    workoutCount += 1;
                                  })
                                }), //_update(documentSnapshot)),
                        IconButton(
                            icon: const Icon(Icons.arrow_downward_rounded),
                            onPressed: () => {
                                  if (workoutCount > 0)
                                    {
                                      setState(() {
                                        workoutCount -= 1;
                                      })
                                    }
                                }) //_delete(documentSnapshot.id)),
                      ],
                    ))),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
                title: Row(children: [
                  //const ImageIcon(AssetImage("image_icons/dumbbell.png")),
                  Image.asset("image_icons/meditation.png",
                      fit: BoxFit.cover, height: 30),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 10.0),
                    child: const Text("Meditation"),
                  ),
                  CircularPercentIndicator(
                    radius: 20.0,
                    lineWidth: 8.0,
                    percent: getPercentage(meditationCount),
                    progressColor: Colors.white,
                  )
                ]),
                subtitle: Text("Count: $meditationCount"),
                trailing: SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(
                            icon: const Icon(Icons.arrow_upward_rounded),
                            onPressed: () => {
                                  setState(() {
                                    meditationCount += 1;
                                  })
                                }), //_update(documentSnapshot)),
                        IconButton(
                            icon: const Icon(Icons.arrow_downward_rounded),
                            onPressed: () => {
                                  if (meditationCount > 0)
                                    {
                                      setState(() {
                                        meditationCount -= 1;
                                      })
                                    }
                                }) //_delete(documentSnapshot.id)),
                      ],
                    ))),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
                title: Row(children: [
                  //const ImageIcon(AssetImage("image_icons/dumbbell.png")),
                  Image.asset("image_icons/book.png",
                      fit: BoxFit.cover, height: 30),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 10.0),
                    child: const Text("Reading"),
                  ),
                  CircularPercentIndicator(
                    radius: 20.0,
                    lineWidth: 8.0,
                    percent: getPercentage(readingCount),
                    progressColor: Colors.white,
                  )
                ]),
                subtitle: Text("Count: $readingCount"),
                trailing: SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(
                            icon: const Icon(Icons.arrow_upward_rounded),
                            onPressed: () => {
                                  setState(() {
                                    readingCount += 1;
                                  })
                                }), //_update(documentSnapshot)),
                        IconButton(
                            icon: const Icon(Icons.arrow_downward_rounded),
                            onPressed: () => {
                                  if (readingCount > 0)
                                    {
                                      setState(() {
                                        readingCount -= 1;
                                      })
                                    }
                                }) //_delete(documentSnapshot.id)),
                      ],
                    ))),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
                title: Row(children: [
                  //const ImageIcon(AssetImage("image_icons/dumbbell.png")),
                  Image.asset("image_icons/shower.png",
                      fit: BoxFit.cover, height: 30),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 10.0),
                    child: const Text("Cold Shower"),
                  ),
                  CircularPercentIndicator(
                    radius: 20.0,
                    lineWidth: 8.0,
                    percent: getPercentage(showerCount),
                    progressColor: Colors.white,
                  )
                ]),
                subtitle: Text("Count: $showerCount"),
                trailing: SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(
                            icon: const Icon(Icons.arrow_upward_rounded),
                            onPressed: () => {
                                  setState(() {
                                    showerCount += 1;
                                  })
                                }), //_update(documentSnapshot)),
                        IconButton(
                            icon: const Icon(Icons.arrow_downward_rounded),
                            onPressed: () => {
                                  if (showerCount > 0)
                                    {
                                      setState(() {
                                        showerCount -= 1;
                                      })
                                    }
                                }) //_delete(documentSnapshot.id)),
                      ],
                    ))),
          ),
        ],
      )),
    );
  }
}
