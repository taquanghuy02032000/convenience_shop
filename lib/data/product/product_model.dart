import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  String? id;
  String? title;
  String? imageUrl;
  String? description;
  String? productType; // fruits, drinks,...
  int? quantityOrder;
  int? totalNumber;
  double? price;
  int? isOnSale; //1 true 0 false
  double? percentReducePrice;

  ProductModel(
    this.id,
    this.title,
    this.imageUrl,
    this.description,
    this.productType,
    this.quantityOrder,
    this.totalNumber,
    this.price,
    this.isOnSale,
    this.percentReducePrice,
  );

  factory ProductModel.fromDocument(DocumentSnapshot doc) {
    return ProductModel(
      doc.id,
      doc.get('title'),
      doc.get('imageUrl'),
      doc.get('description'),
      doc.get('productType'),
      doc.get('quantityOrder'),
      doc.get('totalNumber'),
      doc.get('price'),
      doc.get('isOnSale'),
      doc.get('percentReducePrice'),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'imageUrl': imageUrl,
      'description': description,
      'productType': productType,
      'quantityOrder': quantityOrder,
      'totalNumber': totalNumber,
      'price': price,
      'isOnSale': isOnSale,
      'percentReducePrice': percentReducePrice,
    };
  }
}
