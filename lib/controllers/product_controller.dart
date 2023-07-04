import 'package:flutter/foundation.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../data/repository/product_repo.dart';
import '../models/product_model.dart';

class ProductController extends GetxController{
  final ProductRepo productRepo;
  ProductController({required this.productRepo});
  List<dynamic>_productList=[];
  List<dynamic> get productList =>_productList;
  Future<void>getProductList()async{
    Response response= await productRepo.getProductList();
    if(response.statusCode==200){
      print("got products");
      _productList=[];
      _productList.addAll(product.fromJson(response.body).products);
      print(_productList);
      update();
    }
    else{
      print("nothing");

    }
  }
}