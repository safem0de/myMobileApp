import 'program_item.dart';
import 'package:flutter/material.dart';

class GridApp extends StatefulWidget {
  const GridApp({Key? key}) : super(key: key);

  @override
  State<GridApp> createState() => _GridAppState();
}

class _GridAppState extends State<GridApp> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        crossAxisSpacing: 2,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => LayoutBuilder(
        builder: (context, BoxConstraints constraints) {
          return ProgramItem(constraints.maxHeight);
        },
      ),
      itemCount: 5,
    );
  }
}
