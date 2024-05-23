import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:educational_kids_game/constant.dart';
import 'package:educational_kids_game/features/Games/puzzle_games/presantation/view/widgets/contaner_view_next.dart';
import 'package:educational_kids_game/features/Games/puzzle_games/presantation/view/widgets/custom_appbar.dart';
import 'package:educational_kids_game/features/Games/puzzle_games/presantation/view/widgets/custom_contaner_view.dart';
import 'package:educational_kids_game/features/Games/puzzle_games/presantation/view/widgets/view_alphabet_text_fiield.dart';
import 'package:flutter/material.dart';

class PuzzleGameViewBody extends StatefulWidget {
  const PuzzleGameViewBody({super.key});

  @override
  State<PuzzleGameViewBody> createState() => _PuzzleGameViewBodyState();
}

class _PuzzleGameViewBodyState extends State<PuzzleGameViewBody> {
  String? messfirebase;
  CollectionReference users =
      FirebaseFirestore.instance.collection(kcolliction);
  // ignore: non_constant_identifier_names
  Future<void> Initial() {
    return users
        .add({
          'not played': messfirebase,
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  // ignore: non_constant_identifier_names
  Future<void> Faulier() {
    return users
        .add({
          'Faulier': 'messfirebase',
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  // ignore: non_constant_identifier_names
  Future<void> Success() {
    return users
        .add({
          'Success': messfirebase,
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  Future<void> fetchData() async {
    QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection(kcolliction).get();
    if (snapshot.docs.isNotEmpty) {
      print("Data is saved in the cloud.");
      for (var doc in snapshot.docs) {
        print(doc.data());
      }
    } else {
      print("No data is saved in the cloud.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          CustomAppBarforGames(
            title: 'Level $levelcount',
            color: const Color(0xffF55454),
          ),
          const SizedBox(
            height: 25,
          ),
          const CustomContanerview(),
          const SizedBox(
            height: 35,
          ),
          const ViewOtp(),
          const SizedBox(
            height: 40,
          ),
          ContanerViewNext(
            ontap: () async {
              Initial();
              fetchData();
              Faulier();
            },
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
