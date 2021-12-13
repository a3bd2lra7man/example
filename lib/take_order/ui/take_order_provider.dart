import 'package:example/take_order/contracts/take_order_view.dart';
import 'package:example/take_order/models/take_orde_model.dart';
import 'package:example/take_order/presenters/take_order_presenter.dart';
import 'package:flutter/cupertino.dart';


class TakeProvider extends ChangeNotifier implements TakeOrderView{

  late TakeOrderPresenter presenter;
  TakeOrderModel model  = TakeOrderModel();

  TakeProvider(){
    presenter = TakeOrderPresenter(this);
  }

  @override
  void onConfirmed() {
    // any other logic
    notifyListeners();
  }

  void handleButton1Pressed(){
    presenter.handleButton1Pressed();
  }

  void handleButton2Pressed(){
    presenter.handleButton2Pressed();
  }

  void handleButton3Pressed(){
    presenter.handleButton3Pressed();
  }

  @override
  void updateLable1(String text) {
    model.label1 = text;
    notifyListeners();
  }

  @override
  void updateLable2(String text) {
    model.label2 = text;
    notifyListeners();
  }

  @override
  void updateLable3(String text) {
    model.label3 = text;
    notifyListeners();
  }

}