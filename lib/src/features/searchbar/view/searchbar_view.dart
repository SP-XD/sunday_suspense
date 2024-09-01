import 'package:flutter/material.dart' hide SearchBar;
import 'package:midnight_suspense/src/features/searchbar/searchbar.dart';

class SearchBarView extends StatefulWidget {
  const SearchBarView({super.key});

  @override
  State<SearchBarView> createState() => _SearchBarViewState();
}

class _SearchBarViewState extends State<SearchBarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SearchBar(),
        ],
      ),
    );
  }
}
