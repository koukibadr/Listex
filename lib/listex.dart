import 'package:flutter/material.dart';

class Listex extends StatefulWidget {
  final int itemsCount;
  final Widget Function(BuildContext, int) itemBuilder;

  const Listex({
    Key? key,
    required this.itemsCount,
    required this.itemBuilder,
  }) : super(key: key);

  @override
  State<Listex> createState() => _ListexState();
}

class _ListexState extends State<Listex> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.itemsCount,
      itemBuilder: widget.itemBuilder,
    );
  }
}
