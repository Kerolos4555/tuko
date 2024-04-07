import 'package:flutter/material.dart';
import 'package:toku/components/phrase_item.dart';
import 'package:toku/models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  final List<ItemModel> colors = const [
    ItemModel(
        sound: "sounds/phrases/are_you_coming.wav",
        jpName: "Kimasu ka?",
        enName: "Are you coming?"),
    ItemModel(
        sound: "sounds/phrases/dont_forget_to_subscribe.wav",
        jpName: "Koudoku o wasurenaide kudasai.",
        enName: "Don't forget to subscribe."),
    ItemModel(
        sound: "sounds/phrases/how_are_you_feeling.wav",
        jpName: "Ogenki desu ka?",
        enName: "How are you feeling?"),
    ItemModel(
        sound: "sounds/phrases/i_love_anime.wav",
        jpName: "Anime ga daisuki desu.",
        enName: "I love anime."),
    ItemModel(
        sound: "sounds/phrases/i_love_programming.wav",
        jpName: "Puroguramingu ga daisuki desu.",
        enName: "I love programming."),
    ItemModel(
        sound: "sounds/phrases/programming_is_easy.wav",
        jpName: "Puroguramingu wa kantan desu.",
        enName: "Programming is easy."),
    ItemModel(
        sound: "sounds/phrases/what_is_your_name.wav",
        jpName: "Anata no onamae wa nan desu ka?",
        enName: "What is your name?"),
    ItemModel(
        sound: "sounds/phrases/where_are_you_going.wav",
        jpName: "Doko ni iku no desu ka?",
        enName: "Where are you going?"),
    ItemModel(
        sound: "sounds/phrases/yes_im_coming.wav",
        jpName: "Hai, ikimasu.",
        enName: "Yes I'm coming."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          "Phrases",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return PhraseItem(
            item: colors[index],
            containerColor: const Color(0xff50ADC7),
          );
        },
      ),
    );
  }
}
