import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> getProductosAcero() async {
  CollectionReference productosRef = FirebaseFirestore.instance.collection('acero');
  QuerySnapshot querySnapshot = await productosRef.get();

  return querySnapshot.docs.map((doc) => doc as QueryDocumentSnapshot<Map<String, dynamic>>).toList();
}
