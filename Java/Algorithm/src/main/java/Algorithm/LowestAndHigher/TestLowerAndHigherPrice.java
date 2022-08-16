package Algorithm.LowestAndHigher;

public class TestLowerAndHigherPrice {
	public static void main(String[] args) {
		double[] prices = new double[5];
		prices[0] = 1000000.0;
		prices[1] = 46000.0;
		prices[2] = 16000.0;
		prices[3] = 46000.0;
		prices[4] = 17000.0;

		int lowestPrice = 0;
		int highestPrice = 0;

		for (int actualPrice = 0; actualPrice <= 4; actualPrice++) {
			if (prices[actualPrice] < prices[lowestPrice]) {
				lowestPrice = actualPrice;
			}
			if (prices[actualPrice] > prices[highestPrice]) {
				highestPrice = actualPrice;
			}
		}

		System.out.println("Lowest position: " + lowestPrice);
		System.out.println("Highest position: " + highestPrice);
		System.out.println("The lowest price is " + prices[lowestPrice]);
		System.out.println("The highest price is " + prices[highestPrice]);
	}
}
