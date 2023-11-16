import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class firebase {
  final auth = FirebaseAuth.instance;
  final store = FirebaseDatabase.instance;
  final cloud = FirebaseFirestore.instance;
  static Rxn<User> currentFirebaseuser = Rxn<User>();
}
