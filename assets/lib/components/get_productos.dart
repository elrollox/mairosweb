import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> getProductos() async {
  CollectionReference productosRef = FirebaseFirestore.instance.collection('mairos');
  QuerySnapshot querySnapshot = await productosRef.get();

  return querySnapshot.docs.map((doc) => doc as QueryDocumentSnapshot<Map<String, dynamic>>).toList();
}
