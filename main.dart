import 'package:flutter/material.dart';

void main() {
  runApp(MayApp());
}

class MayApp extends StatelessWidget {
  const MayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BodyTest());
  }
}

class BodyTest extends StatelessWidget {
  const BodyTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Page'), centerTitle: true),
      body: ListView(
        children: const [
          ProfileImage(),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NameUser(),
                SizedBox(height: 10),
                CallMy(icon: Icons.email, text: 'Yasmeen@gmail.com'),
                SizedBox(height: 10),
                CallMy(icon: Icons.phone, text: '+20 123456789'),
                SizedBox(height: 20),
                TaskInfo(
                  icon: Icons.check_circle,
                  title: 'Tasks1',
                  subtitle: 'Complete your Profile',
                  iconColor: Colors.green,
                ),
                SizedBox(height: 10),
                TaskInfo(
                  icon: Icons.hourglass_bottom,
                  title: 'Tasks2',
                  subtitle: 'Verify your Email',
                  iconColor: Colors.amber,
                ),
                TaskInfo(
                  icon: Icons.close,
                  title: 'Tasks3',
                  subtitle: 'add your phone number',
                  iconColor: Colors.red,
                ),
                SizedBox(height: 10),
                Setting(),
                SizedBox(height: 10),
                MemberCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: Color.fromARGB(255, 102, 124, 137),
        ),
        const Positioned(
          bottom: 10,
          left: 16,
          child: CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQn9zilY2Yu2hc19pDZFxgWDTUDy5DId7ITqA&s',
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 16,

          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit, size: 30, color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class NameUser extends StatelessWidget {
  const NameUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Yasmeen Tarak',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}

class CallMy extends StatelessWidget {
  const CallMy({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.black),
        SizedBox(width: 10),
        Text(text, style: TextStyle(fontSize: 20)),
      ],
    );
  }
}

class TaskInfo extends StatelessWidget {
  const TaskInfo({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.iconColor,
  });
  final IconData icon;
  final String title;
  final String subtitle;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(Icons.task),
        trailing: Icon(icon, color: iconColor),
      ),
    );
  }
}

class Setting extends StatelessWidget {
  const Setting({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(title: Text('Setting'), leading: Icon(Icons.settings)),
    );
  }
}

class MemberCard extends StatelessWidget {
  const MemberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      child: ListTile(
        title: Text('Premium Member', style: TextStyle(color: Colors.white)),
        trailing: Icon(Icons.star, color: Colors.yellow),
      ),
    );
  }
}
