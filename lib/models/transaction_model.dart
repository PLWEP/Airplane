// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:airplane/models/destination_model.dart';

class TransactionModel extends Equatable {
  final DestinationModel destination;
  final int amountOfTraveler;
  final String selectedSeats;
  final bool insurance;
  final bool refundable;
  final double vet;
  final int price;
  final int grandTotal;

  const TransactionModel({
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
}
