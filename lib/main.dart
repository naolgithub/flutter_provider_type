import 'package:flutter/material.dart';
import 'package:flutter_provider_type/model.dart';
import 'package:provider/provider.dart';

void main() => runApp(const ProviderRootApp());

class ProviderRootApp extends StatelessWidget {
  const ProviderRootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<MyModel>(
      //     <--- Provider
      create: (context) => MyModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: const Text('Provider Type')),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.green[200],
                  child: Consumer<MyModel>(
                    // <--- Consumer
                    builder: (context, myModel, child) {
                      return ElevatedButton(
                        child: const Text('Do something'),
                        onPressed: () {
                          // We have access to the model.
                          myModel.doSomething();
                        },
                      );
                    },
                  )),
              Container(
                padding: const EdgeInsets.all(35),
                color: Colors.blue[200],
                child: Consumer<MyModel>(
                  // <--- Consumer
                  builder: (context, myModel, child) {
                    return Text(myModel.someValue);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
