import 'package:flutter/material.dart';
import 'package:toku/components/items.dart';
import 'package:toku/models/item_model.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);

  final List<ItemModel> familyMembers = const [
    ItemModel(
        sound: "sounds/family_members/father.wav",
        image: "assets/images/family_members/family_father.png",
        jpName: "chichi",
        enName: "father"),
    ItemModel(
        sound: "sounds/family_members/mother.wav",
        image: "assets/images/family_members/family_mother.png",
        jpName: "haha",
        enName: "mother"),
    ItemModel(
        sound: "sounds/family_members/grand father.wav",
        image: "assets/images/family_members/family_grandfather.png",
        jpName: "ojiisan",
        enName: "grandfather"),
    ItemModel(
        sound: "sounds/family_members/grand mother.wav",
        image: "assets/images/family_members/family_grandmother.png",
        jpName: "sobo",
        enName: "grandmother"),
    ItemModel(
        sound: "sounds/family_members/older bother.wav",
        image: "assets/images/family_members/family_older_brother.png",
        jpName: "oniisan",
        enName: "older brother"),
    ItemModel(
        sound: "sounds/family_members/older sister.wav",
        image: "assets/images/family_members/family_older_sister.png",
        jpName: "ane",
        enName: "older sister"),
    ItemModel(
        sound: "sounds/family_members/younger brohter.wav",
        image: "assets/images/family_members/family_younger_brother.png",
        jpName: "otouto",
        enName: "younger brother"),
    ItemModel(
        sound: "sounds/family_members/younger sister.wav",
        image: "assets/images/family_members/family_younger_sister.png",
        jpName: "imouto",
        enName: "younger sister"),
    ItemModel(
        sound: "sounds/family_members/son.wav",
        image: "assets/images/family_members/family_son.png",
        jpName: "musuko",
        enName: "son"),
    ItemModel(
        sound: "sounds/family_members/daughter.wav",
        image: "assets/images/family_members/family_daughter.png",
        jpName: "musume",
        enName: "daughter"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          "Family Members",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return Items(
            item: familyMembers[index],
            containerColor: const Color(0xff558B37),
          );
        },
      ),
    );
  }
}
