import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class SearchBar extends StatelessWidget {
  SearchBar({super.key});

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SearchBarAnimation(
      textEditingController: _textEditingController,
      isOriginalAnimation: false,
      buttonBorderColour: Colors.black45,
      buttonWidget: const Icon(Icons.search),
      secondaryButtonWidget: const Icon(Icons.clear),
      trailingWidget: const Icon(Icons.search),
      onFieldSubmitted: (String value) {
        debugPrint('onFieldSubmitted value $value');
        _textEditingController.clear();
      },
    );
  }
}

/*
class SearchBar extends StatelessWidget {
  final TextEditingController textEditingController;

  const SearchBar({Key? key, required this.textEditingController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[200],
      ),
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: 'Rechercher',
          prefixIcon: Icon(Icons.search),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
    );
  }
}
*/
