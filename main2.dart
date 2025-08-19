import 'package:flutter/material.dart';

void main() {
  runApp(Dashboard());
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Tech Tools'), centerTitle: true),
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  Body({super.key});
  final List<CardToolsModel> tools = [
    CardToolsModel(
      title: 'Flutter',
      subtitle1: 'Cross-platform framework',
      subtitle2: 'Build beautiful native apps in record time',
      icon: Icons.flutter_dash_rounded,
    ),
    CardToolsModel(
      title: 'Dart',
      subtitle1: 'Programming Language',
      subtitle2: 'Optimized for UI, developed by Google.',
      icon: Icons.fireplace_outlined,
    ),
    CardToolsModel(
      title: 'Firebase',
      subtitle1: 'Backend as a Service',
      subtitle2: 'Realtime database, auth, and more',
      icon: Icons.flutter_dash,
    ),

    CardToolsModel(
      title: 'GitHub',
      subtitle1: 'Code Hosting',
      subtitle2: 'Host and review code, manage projects.',
      icon: Icons.generating_tokens_sharp,
    ),
    CardToolsModel(
      title: 'VS Code',
      subtitle1: 'Code Editor',
      subtitle2: 'Free, open source code editor by Microsoft.',
      icon: Icons.flutter_dash,
    ),
    CardToolsModel(
      title: 'Android',
      subtitle1: 'Code Editor',
      subtitle2: 'Most popular mobile operating system.',
      icon: Icons.flutter_dash,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(height: 20),
      itemCount: tools.length,
      itemBuilder: (context, index) => TechToolsItem(model: tools[index]),
    );
  }
}

class CardToolsModel {
  final String title;
  final String subtitle1;
  final String subtitle2;
  final IconData icon;

  CardToolsModel({
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
    required this.icon,
  });
}

class TechToolsItem extends StatelessWidget {
  const TechToolsItem({super.key, required this.model});
  final CardToolsModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            SizedBox(width: 10),
            Icon(model.icon, size: 30),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  model.subtitle1,
                  style: TextStyle(color: Colors.indigo, fontSize: 15),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width - 100,
                  child: Text(model.subtitle2, style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios, color: Colors.indigo),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
