import 'package:flutter/material.dart';
import 'package:kbtradlink/api_service/api_service.dart';
import 'package:kbtradlink/screen/purchase_module/model/purchase_invoice_model.dart';
import 'package:kbtradlink/screen/sales_module/invoice/api/invoice_api.dart';
import 'package:kbtradlink/screen/sales_module/invoice/model/sales_invoice_model.dart';
import 'package:kbtradlink/screen/sales_module/model/sale_details_model.dart';

class PurchaseInvoiceProvider extends ChangeNotifier {

  PurchaseInvoiceModel? purchaseInvoiceModel;
  Future<PurchaseInvoiceModel?>getPurchaseInvoice(context,
      String? purchaseId,
      ) async {
    purchaseInvoiceModel = await ApiGetSalesInvoice.GetPurchaseInvoice(purchaseId);
    return purchaseInvoiceModel;
  }
}