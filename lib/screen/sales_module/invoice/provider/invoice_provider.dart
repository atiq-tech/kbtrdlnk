import 'package:flutter/material.dart';
import 'package:kbtradlink/api_service/api_service.dart';
import 'package:kbtradlink/screen/sales_module/invoice/api/invoice_api.dart';
import 'package:kbtradlink/screen/sales_module/invoice/model/sales_invoice_model.dart';
import 'package:kbtradlink/screen/sales_module/model/sale_details_model.dart';

class SalesInvoiceProvider extends ChangeNotifier {

  SalesInvoiceModel? salesInvoiceModel;
  Future<SalesInvoiceModel?>getSalesInvoice(context,
      String? salesId,
      ) async {
    salesInvoiceModel = await ApiGetSalesInvoice.GetApiGetSalesInvoice(
      salesId,
    );
    return salesInvoiceModel;
  }
}