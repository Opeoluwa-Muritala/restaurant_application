import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var itemHeader = TextStyle(
      color: Colors.grey.shade600,
      fontSize: 16.0,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "my profile",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20.0),
          Center(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Stack(
                children: [
                  Ink(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.brown.shade300,
                      image: const DecorationImage(
                          image: AssetImage("assets/bugar.jpg"),
                          fit: BoxFit.cover),
                    ),
                    child: Image.asset("assets/profile.png"),
                  ),
                  Align(
                    alignment: const Alignment(1.5, 1.5),
                    child: MaterialButton(
                      minWidth: 0,
                      onPressed: () {},
                      textColor: Colors.white,
                      color: Theme.of(context).colorScheme.secondary,
                      elevation: 0,
                      shape: const CircleBorder(),
                      child: const Icon(Icons.camera_alt),
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            title: Text(
              "notifications",
              style: itemHeader,
            ),
            leading: const Icon(Icons.notifications),
          ),
          SwitchListTile(
            value: true,
            title: const Text("email notifications"),
            onChanged: (value) {},
            secondary: const SizedBox(
              width: 10,
            ),
          ),
          _buildDivider(),
          const ListTile(
            title: Text("feedback"),
            subtitle: Text("we would love to hear your experience"),
            leading: Icon(Icons.feedback),
          ),
          const ListTile(
            title: Text("Contact us"),
            subtitle:
                Text("muritalaopeoluwa10@gmail.com or baddestkid736@gmail.com"),
            leading: Icon(Icons.email),
          ),
          ListTile(
            onTap: () {
              SystemNavigator.pop();
            },
            title: const Text("logout"),
            subtitle: const Text("you can logout from here"),
            leading: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
    );
  }

  Padding _buildDivider() {
    return const Padding(
      padding: EdgeInsets.only(left: 70),
      child: Divider(
        color: Colors.black,
      ),
    );
  }
}
