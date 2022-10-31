import 'package:equatable/equatable.dart';
import 'package:airplane/models/destination_model.dart';

class TransactionModel extends Equatable {
  final String id;
  final DestinationModel destination;
  final int amountOfTraveler;
  final String selectedSeats;
  final bool insurance;
  final bool refundable;
  final double vet;
  final int price;
  final int grandTotal;

  const TransactionModel({
    this.id = '',
    required this.destination,
    this.amountOfTraveler = 0,
    this.selectedSeats = '',
    this.insurance = false,
    this.refundable = false,
    this.vet = 0,
    this.price = 0,
    this.grandTotal = 0,
  });

  @override
  List<Object> get props {
    return [
      destination,
      amountOfTraveler,
      selectedSeats,
      insurance,
      refundable,
      vet,
      price,
      grandTotal,
    ];
  }

  factory TransactionModel.fromJson(String id, Map<String, dynamic> json) =>
      TransactionModel(
        id: id,
        destination: DestinationModel.fromJson(
            json['destination']['id'], json['destination']),
        amountOfTraveler: json['amountOfTraveler'],
        selectedSeats: json['selectedSeats'],
        grandTotal: json['grandTotal'],
        insurance: json['insurance'],
        refundable: json['refundable'],
        vet: json['vet'],
        price: json['price'],
      );
}
