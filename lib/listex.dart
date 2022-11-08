import 'package:flutter/material.dart';

class Listex extends StatefulWidget {
  final int itemsCount;
  final Widget Function(BuildContext, int) itemBuilder;
  final List<String> filters;

  const Listex({
    Key? key,
    required this.itemsCount,
    required this.itemBuilder,
    required this.filters,
  }) : super(key: key);

  @override
  State<Listex> createState() => _ListexState();
}

class _ListexState extends State<Listex> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: widget.filters.map((e) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Chip(label: Text(e)),
            )).toList(),
          ),
        ),
        Expanded(
          flex: 4,
          child: ListView.builder(
            itemCount: widget.itemsCount,
            itemBuilder: widget.itemBuilder,
          ),
        )
      ],
    );
  }
}
