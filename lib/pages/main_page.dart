import 'package:flutter/material.dart';
import 'package:routes_flutter/routes/routes.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  dynamic result = 'Data to come back';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text(
                'Go to second page',
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.secondPage);
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              child: Text('Go to third page'),
              onPressed: () async {
                var resultBack = await Navigator.of(context)
                    .pushNamed(RouteManager.thirdPage, arguments: {
                  'name': 'Pratima Subedi',
                });
                setState(() {
                  result = resultBack;
                });
              },
            ),
            Text('$result'),
          ],
        ),
      ),
    );
  }
}
