import 'package:get/get.dart';
import 'package:sensex/model/investment.dart';
import 'package:sensex/model/live_market_index.dart';
import 'package:sensex/utils/image_helper.dart';

class HomeController extends GetxController {

  RxList liveMarketData = [].obs;
  RxList investmentData = [].obs;
  RxInt pageIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    _initMarketData();
    _initInvestmentData();
  }

  _initMarketData(){
    liveMarketData.add(LiveMarketIndex("BSE SENSEX", "2.36%", "45045.67", "243.56", "14 Aug 2022 3.40 PM"));
    liveMarketData.add(LiveMarketIndex("NIFTY FIFTY", "4.56%", "64045.67", "243.56", "14 Jul 2022 3.40 PM"));
    liveMarketData.add(LiveMarketIndex("GOLD", "2.36%", "54045.67", "243.56", "14 May 2022 3.40 PM"));
    liveMarketData.add(LiveMarketIndex("TRIDENT LTD", "5.36%", "54045.67", "243.56", "14 Feb 2022 3.40 PM"));
    liveMarketData.add(LiveMarketIndex("UPL LTD", "4.16%", "54045.67", "243.56", "14 Aug 2022 3.40 PM"));
  }

  _initInvestmentData(){
    investmentData.add(Investment(goldImage, "Gold", "14.56 Lakhs"));
    investmentData.add(Investment(mutualFundImage, "Mutual Fund", "14.56 Lakhs"));
    investmentData.add(Investment(smartDepositImage, "Smart Deposit", "14.56 Lakhs"));
    investmentData.add(Investment(epfImage, "EPF", "14.56 Lakhs"));
    investmentData.add(Investment(fixedDepositImage, "Fixed Deposit", "14.56 Lakhs"));
    investmentData.add(Investment(npsImage, "NPS", "14.56 Lakhs"));
  }

}