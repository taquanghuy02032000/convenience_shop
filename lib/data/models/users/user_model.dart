import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:convinient_shop/data/product/product_model.dart';

class UserModel {
  String? id;
  String? shippingAddress;
  String? role;
  String? nameUser;
  List<ProductModel>? productsInCart;
  String? createAt;

  UserModel(
    this.id,
    this.shippingAddress,
    this.role,
    this.nameUser,
    this.productsInCart,
    this.createAt,
  );

  factory UserModel.fromDocument(DocumentSnapshot doc) {
    final productsInCart = doc.get('productsInCart') as List;
    return UserModel(
      doc.id,
      doc.get('shippingAddress'),
      doc.get('role'),
      doc.get('nameUser'),
      productsInCart.map((e) => ProductModel.fromDocument(e)).toList(),
      doc.get('createAt'),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'shippingAddress': shippingAddress,
      'role': role,
      'nameUser': nameUser,
      'createAt': createAt,
      'productsInCart': productsInCart?.map((e) => e.toMap()).toList(),
    };
  }
}
