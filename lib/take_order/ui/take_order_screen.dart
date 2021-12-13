import 'package:example/take_order/ui/take_order_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TakeOrderScreen extends StatelessWidget {
  const TakeOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),

          Consumer<TakeProvider>(
              builder: (context, provider, child) =>
                  Text(provider.model.label1)),

          Consumer<TakeProvider>( builder: (context, provider, child) => TextButton(onPressed:  provider.handleButton1Pressed, child: Text("Button 1"))),

          Consumer<TakeProvider>(
              builder: (context, provider, child) =>
                  Text(provider.model.label2)),

          Consumer<TakeProvider>( builder: (context, provider, child) => TextButton(onPressed:  provider.handleButton2Pressed, child: Text("Button 2"))),

          Consumer<TakeProvider>(
              builder: (context, provider, child) =>
                  Text(provider.model.label3)),

          Consumer<TakeProvider>( builder: (context, provider, child) => TextButton(onPressed:  provider.handleButton3Pressed, child: Text("Button 2"))),



        ],
      ),
    );
  }


}
