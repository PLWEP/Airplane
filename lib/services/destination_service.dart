import 'package:airplane/models/destination_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DestinationService {
  final CollectionReference _destinationRef =
      FirebaseFirestore.instance.collection('destination');

  Future<List<DestinationModel>> fetchDestinations() async {
    try {
      QuerySnapshot result = await _destinationRef.get();

      List<DestinationModel> destination = result.docs
          .map((e) =>
              DestinationModel.fromJson(e.id, e.data() as Map<String, dynamic>))
          .toList();

      return destination;
    } catch (e) {
      rethrow;
    }
  }
}
