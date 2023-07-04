import 'package:ecommerce_app/data/api/api_client.dart';
import 'package:ecommerce_app/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/product_controller.dart';
import '../data/repository/product_repo.dart';

Future<void>init()async{
  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL));
  //repos
  Get.lazyPut(()=>ProductRepo(apiClient:Get.find()));
  //controllers
  Get.lazyPut(()=>ProductController(productRepo:Get.find()));


}