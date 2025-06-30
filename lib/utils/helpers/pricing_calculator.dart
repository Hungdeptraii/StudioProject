
class CPricingCalculator {

  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
  return totalPrice;
  }

  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
  return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
  return taxAmount.toStringAsFixed(2);
  }
  static double getTaxRateForLocation(String location) {
// Tra cứu thuế suất cho địa điểm đã cho từ cơ sở dữ liệu thuế suất hoặc API.
// Trả về thuế suất phù hợp.
    return 0.10;// Ví dụ thuế suất là 10%
  }

  static double getShippingCost(String location) {
// Tra cứu chi phí vận chuyển cho địa điểm đã cho bằng cách sử dụng API tỷ giá vận chuyển.
// Tính toán chi phí vận chuyển dựa trên các yếu tố khác nhau như khoảng cách, trọng lượng, v.v.

    return 5.00;// Ví dụ chi phí vận chuyển là 5 đô la
  }
}