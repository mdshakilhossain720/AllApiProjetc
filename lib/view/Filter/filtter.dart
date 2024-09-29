
import 'package:flutter/material.dart';

import 'model.dart';
import 'serives.dart';


class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  // for filtering the items
  List<Products> filterLists = [];

  // Method to fetch products and filter them
  filterProduct() async {
    var value = await ApiServices().myFilterList();
    if (value != null && value.products != null) {
      setState(() {
        // Clear previous results to prevent duplicates
        filterLists.clear();
        filterLists.addAll(myItems(value.products!));
      });
    }
  }

  // Method to filter items based on ratings
  List<Products> myItems(List<Products> list) {
    return list.where((element) => element.rating > 4.7 && element.rating < 5).toList();
  }

  @override
  void initState() {
    filterProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filter The Item's From API"),
      ),
      body: filterLists.isEmpty
          ? const Center(child: CircularProgressIndicator()) // Show loading if empty
          : ListView.builder(
        shrinkWrap: true,
        itemCount: filterLists.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              filterLists[index].title.toString(),
            ),
            subtitle: Text(
              "Rating : ${filterLists[index].rating.toString()}",
            ),
          );
        },
      ),
    );
  }
}
