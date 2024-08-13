import 'package:flutter/material.dart';
import 'package:roll_rice_app/components/switch.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: const [SwitchAppTheme()],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.network('https://github.com/SaraTuma.png')),
                accountName: Text('Sara Tuma'),
                accountEmail: Text('sara@gmail.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Início"),
              subtitle: Text('Tela de início'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Sair"),
              subtitle: Text('Terminar sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/login');
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Voce clicou aqui varias vezes:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            //const SwitchAppTheme(),
            Container(
              height: 200,
              width: 200,
              color: Colors.white,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment Teste',
        child: const Icon(Icons.add),
      ),
    );
  }
}
