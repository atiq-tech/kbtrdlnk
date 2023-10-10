import 'package:flutter/material.dart';
import 'package:kbtradlink/api_service/api_service.dart';
import 'package:kbtradlink/screen/acount_module/model/cash_transaction_model.dart';
import 'package:kbtradlink/screen/report_module/model/busniess_monitor_model.dart';

class BusinessMonitorProvider extends ChangeNotifier {

  static bool isLoading = false;
  BusinessMonitorModel? businessMonitorModel;

  getBusinessMonitor(String dateFrom, String dateTo) async {
    businessMonitorModel = await ApiService.fetchBusinessMonitor(dateFrom,dateTo);
    off();
    notifyListeners();
  }

  off(){
    Future.delayed(Duration(seconds: 1),() {
      print('offff');
      isLoading = false;
      notifyListeners();
    },);
  }
  on(){
    print('onnn');
    isLoading = true;
    notifyListeners();
  }
}
