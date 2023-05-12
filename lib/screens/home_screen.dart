import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String _greeting;

  void setGreeting() {
    int hour = DateTime.now().hour;
    String greeting;
    if (hour >= 6 && hour < 12) {
      greeting = "Good morning";
    } else if (hour >= 12 && hour < 18) {
      greeting = "Good afternoon";
    } else {
      greeting = "Good evening";
    }
    setState(() {
      _greeting = greeting;
    });
  }

  @override
  void initState() {
    super.initState();
    setGreeting();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 250,
            child: Material(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        CircleAvatar(
                          child: Image(image: AssetImage("assets/user.png")),
                        ),
                        SizedBox(height: 30,),
                        Text(
                          "Hello William",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                        Divider(thickness: 2)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ListTile(
                    title: Text("Dashboard"),
                    leading: Icon(Icons.home_outlined),
                    tileColor: Colors.blue,
                  ),
                  ListTile(
                    title: const Text("2021 Trips"),
                    trailing: PopupMenuButton(
                      icon: const Icon(Icons.arrow_right),
                      itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<String>>[
                        const PopupMenuItem(
                          value: "Domestic Trips",
                          child: Text("Domestic Trips"),
                        ),
                        const PopupMenuItem(
                          value: "International Trips",
                          child: Text("International Trips"),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    title: const Text("2022 Trips"),
                    trailing: PopupMenuButton(
                      icon: const Icon(Icons.arrow_right),
                      itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<String>>[
                        const PopupMenuItem(
                          value: "Domestic Trips",
                          child: Text("Domestic Trips"),
                        ),
                        const PopupMenuItem(
                          value: "International Trips",
                          child: Text("International Trips"),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    title: const Text("2023 Trips"),
                    trailing: PopupMenuButton(
                      icon: const Icon(Icons.arrow_right),
                      itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<String>>[
                        const PopupMenuItem(
                          value: "Domestic Trips",
                          child: Text("Domestic Trips"),
                        ),
                        const PopupMenuItem(
                          value: "International Trips",
                          child: Text("International Trips"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              title: const Text("TRAVEL PLANNERS GHANA"),
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  const SizedBox(
                    height: 45,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          title: const Text(
                            "10",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: const Text("Contact Groups"),
                          trailing: const Icon(Icons.people_alt_outlined),
                          iconColor: Colors.blue,
                          tileColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: ListTile(
                          title: const Text(
                            "14,300",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: const Text("Contacts"),
                          trailing: const Icon(Icons.person_outline),
                          iconColor: Colors.green,
                          tileColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          height: 275,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  "$_greeting, Travel Planners",
                                  style: const TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Welcome back to your personalized Dashboard. Check out charts, resources, and useful USMS-GH solutions tailored to your account.",
                                  maxLines: 3,
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
