import 'package:flutter/material.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/models/item_model.dart';

class PhraseItem extends StatelessWidget {
  final ItemModel item;
  final Color containerColor;
  const PhraseItem({Key? key, required this.item, required this.containerColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: containerColor,
      child: ItemInfo(
        item: item,
      ),
    );
  }
}
