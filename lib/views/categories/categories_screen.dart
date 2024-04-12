import 'dart:math';

import 'package:cabo_empire_store/models/categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<Category> categories = Category.categories;
  List<int> _extends = [];

  final rnd = Random();
  @override
  void initState() {
    _loadCategory();
    super.initState();
  }

  void _loadCategory() async {
    final extent =
        List<int>.generate(categories.length, (index) => rnd.nextInt(3) + 2);

    setState(() {
      _extends = extent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Row(
          children: [
            const Text('Categories'),
          ],
        ),
      ),
      body: MasonryGridView.count(
        padding: const EdgeInsets.only(
          top: 120,
          left: 4.0,
          right: 4.0
        ),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        itemCount: Category.categories.length,
        crossAxisCount: 3,
        itemBuilder: (context, index) {
          final height = _extends[index] * 100;
          return InkWell(
            onTap: (){},
            child: Hero(
              tag: categories[index].id,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(image: NetworkImage(categories[index].imageUrl),
                  fit: BoxFit.cover)
                ),
                height: height.toDouble(),
              ),
            ),
          );
        },
      ),
    );
  }
}
