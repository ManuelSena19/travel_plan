import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Widget drawerWidget() {
  return Drawer(
    elevation: 0,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                const Icon(
                  Icons.message_outlined,
                  color: Colors.blue,
                  size: 50,
                ),
                const Text(
                  "USMS-GH",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(child: Container()),
                const Icon(
                  Icons.circle_notifications_outlined,
                  color: Colors.blue,
                ),
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
          const ListTile(
            title: Text("Recharge"),
            leading: Icon(Icons.shopping_cart_outlined),
          ),
          const ListTile(
            title: Text("SMS"),
            leading: Icon(Icons.messenger_outline),
          ),
          const ListTile(
            title: Text("WhatsApp"),
            leading: Icon(MdiIcons.whatsapp),
          ),
          const ListTile(
            title: Text("Contact Groups"),
            leading: Icon(Icons.person_outlined),
          ),
          const ListTile(
            title: Text("Sending"),
            leading: Icon(Icons.send),
          ),
          const ListTile(
            title: Text("Coverage / Routing"),
            leading: Icon(Icons.wifi),
          ),
          const ListTile(
            title: Text("Blacklist"),
            leading: Icon(Icons.shield_outlined),
          ),
          const ListTile(
            title: Text("Chat Box"),
            leading: Icon(Icons.numbers),
          ),
          const ListTile(
            title: Text("Support"),
            leading: Icon(Icons.flash_on_outlined),
          ),
          const ListTile(
            title: Text("Reports"),
            leading: Icon(Icons.bar_chart_outlined),
          ),
          const ListTile(
            title: Text("API Integration"),
            leading: Icon(Icons.code),
          ),
          const ListTile(
            title: Text("Knowledge Base"),
            leading: Icon(MdiIcons.libraryOutline),
          ),
        ],
      ),
    ),
  );
}
