import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:new_project/models/ModelProvider.dart';
import 'package:amplify_api/amplify_api.dart';


void main() {
  runApp(const Apipage());
}

class Apipage extends StatelessWidget {
  const Apipage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  
  Future<void> signOutCurrentUser() async {
    try {
      await Amplify.Auth.signOut();
    } on AuthException catch (e) {
      safePrint(e.message);
    }
  }
  Future<void> createTodo() async {
    try {
      final todo = Todo(name: 'my first todo', description: 'todo description');
      safePrint(todo);
      final request = ModelMutations.create(todo);
      safePrint('sucess request');
      final response = await Amplify.API.mutate(request: request).response;

      final createdTodo = response.data;
      if (createdTodo == null) {
        safePrint('errors: ${response.errors}');
        return;
      }
      safePrint('Mutation result: ${createdTodo.name}');
    } on ApiException catch (e) {
      safePrint('Mutation failed: $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'apipage',
              style: Theme.of(context).textTheme.headline4,
            ),
            FloatingActionButton(
              onPressed: createTodo,
              tooltip: 'Increment',
              child: const Icon(Icons.plus_one),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: signOutCurrentUser,
        tooltip: 'Increment',
        child: const Icon(Icons.logout),
      ),
      
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
