import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';
import 'package:shop/providers/counter.dart';

class CounterPage extends StatefulWidget {
  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // const ProductDetailPage({required this.product, super.key});
  @override
  Widget build(BuildContext context) {
    final provider = CounterProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Teste"),
      ),
      body: Column(
        children: [
          Text(provider?.state.value.toString() ?? "0"),
          IconButton(
            onPressed: () {
              setState(() {
                provider?.state.inc();
              });
              print(provider?.state.value);
            },
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                provider?.state.dec();
              });
              print(CounterProvider.of(context)?.state.value);
            },
            icon: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
