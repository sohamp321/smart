import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartProvider with ChangeNotifier{

  double _totalPrice =0;
  double get totalPrice => _totalPrice;


  void _setPrefItems()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble('total_price', _totalPrice);
    notifyListeners();
  }

    void _getPrefItems()async{
      SharedPreferences prefs = await SharedPreferences.getInstance();
      _totalPrice=prefs.getDouble('total_price')?? 0.0;
      notifyListeners();
    }

    void addTotalPrice(double productPrice){
    _totalPrice=_totalPrice+productPrice;
    _setPrefItems();
    notifyListeners();
    }

    void removeTotalPrice(double productPrice){
    _totalPrice=_totalPrice-productPrice;
    _setPrefItems();
    notifyListeners();
  }

  double getTotalPrice(){
    _getPrefItems();
    return _totalPrice;

  }


}