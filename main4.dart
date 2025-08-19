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
        appBar: AppBar(title: Text('Dashboard'), centerTitle: true),
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          StatsOverview(),
          SizedBox(height: 10),
          MonthlyReport(),
          SizedBox(height: 15),
          RecentUser(),
          SizedBox(height: 15),
          RecentOrders(),
        ],
      ),
    );
  }
}

class StatsCard extends StatelessWidget {
  const StatsCard({
    super.key,
    required this.color,
    required this.text,
    required this.number,
  });
  final Color color;
  final String text;
  final String number;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: SizedBox(
          width: 50,
          child: Column(
            children: [
              Text(
                number,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(text, style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}

class StatsOverview extends StatelessWidget {
  StatsOverview({super.key});
  final List<StatsCard> stats = [
    StatsCard(color: Colors.red, text: 'Users', number: '120'),
    StatsCard(color: Colors.green, text: 'Sales', number: '55'),
    StatsCard(color: Colors.blue, text: 'Orders', number: '30'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: stats.map((e) => e).toList(),
    );
  }
}

class MonthlyReport extends StatelessWidget {
  const MonthlyReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: SizedBox(
        height: 150,
        child: Column(
          children: [
            Text(
              'Monthly Report',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Icon(
                  Icons.bar_chart_outlined,
                  color: Colors.grey,
                  size: 35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecentUser extends StatelessWidget {
  const RecentUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent Users',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Card(
          child: Column(
            children: [
              RecentUserItem(title: 'Alice', subtitle: 'alice@gmail.com'),
              Divider(),
              RecentUserItem(title: 'Bob', subtitle: 'bob@gmail.com'),
              Divider(),
              RecentUserItem(title: 'Charlie', subtitle: 'charlie@gmail.com'),
              SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}

class RecentUserItem extends StatelessWidget {
  const RecentUserItem({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(radius: 19, child: Text(title[0])),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}

class RecentOrders extends StatelessWidget {
  const RecentOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Recent Orders', style: TextStyle(fontSize: 20)),
        Card(
          child: Column(
            children: [
              RecentOrdersItem(code: '#1001', text: 'Shipped'),
              Divider(),
              RecentOrdersItem(code: '#1002', text: 'Pending'),
              Divider(),
              RecentOrdersItem(code: '#1003', text: 'Dlivered'),
            ],
          ),
        ),
      ],
    );
  }
}

class RecentOrdersItem extends StatelessWidget {
  const RecentOrdersItem({super.key, required this.code, required this.text});
  final String code;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.shopping_cart),
      title: Text(code),
      trailing: Text(text),
    );
  }
}
