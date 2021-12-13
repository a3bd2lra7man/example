import 'package:example/take_order/contracts/take_order_view.dart';

class TakeOrderPresenter{

  TakeOrderView view;


  TakeOrderPresenter(this.view);


  void handleButton1Pressed(){
    view.updateLable1("pressed 1");
  }

  void handleButton2Pressed(){
    view.updateLable2("pressed 2");
  }

  void handleButton3Pressed(){
    view.updateLable3("pressed 3");
  }

}