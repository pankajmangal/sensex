import 'package:get/get.dart';
import 'package:sensex/model/live_market_index.dart';

class HomeController extends GetxController {

  RxList liveMarketData = [].obs;

  @override
  void onInit() {
    super.onInit();
    _initMarketData();
  }

  _initMarketData(){
    liveMarketData.add(LiveMarketIndex("BSE SENSEX", "2.36%", "45045.67", "243.56", "14 Aug 2022 3.40 PM"));
    liveMarketData.add(LiveMarketIndex("NIFTY FIFTY", "4.56%", "64045.67", "243.56", "14 Jul 2022 3.40 PM"));
    liveMarketData.add(LiveMarketIndex("GOLD", "2.36%", "54045.67", "243.56", "14 May 2022 3.40 PM"));
    liveMarketData.add(LiveMarketIndex("TRIDENT LTD", "5.36%", "54045.67", "243.56", "14 Feb 2022 3.40 PM"));
    liveMarketData.add(LiveMarketIndex("UPL LTD", "4.16%", "54045.67", "243.56", "14 Aug 2022 3.40 PM"));
  }
}