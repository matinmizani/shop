import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsService {
  final _instance = FirebaseAnalytics.instance;

  Future<void> logAddItem() async {
    await _instance.logAddToCart();
  }

  Future<void> logPurchase() async {
    await _instance.logPurchase(items: [
      AnalyticsEventItem(
          itemName: "Chocolate",
          currency: "pkr",
          parameters: {"userId": "asdasddabs"})
    ]);
  }
}
