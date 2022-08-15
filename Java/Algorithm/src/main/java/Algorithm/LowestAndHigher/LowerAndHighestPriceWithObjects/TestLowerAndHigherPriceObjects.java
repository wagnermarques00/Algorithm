package Algorithm.LowestAndHigher.LowerAndHighestPriceWithObjects;

public class TestLowerAndHigherPriceObjects {

    public static void main(String[] args) {
        Product[] products = {
                new Product("Lamborghini", 1000000.0),
                new Product("Jeep", 46000.0),
                new Product("Ford", 16000.0),
                new Product("Smart", 46000.0),
                new Product("Toyota", 17000.0)
        };

        int lowestPrice = searchLowerValue(products, 0, 4);
        int highestPrice = searchHigherValue(products, 0, 4);

        System.out.println("Cheapest position: " + lowestPrice);
        System.out.println("Highest position: " + highestPrice);
        System.out.println(
            "The cheapest car is " + products[lowestPrice].getName() +
            " and costs " + products[lowestPrice].getPrice()
        );
        System.out.println(
                "The highest car is " + products[highestPrice].getName() +
                        " and costs " + products[highestPrice].getPrice()
        );
    }

    private static int searchLowerValue(Product[] products, int start, int end) {
        int lower = start;

        for (int actualValue = start; actualValue <= end; actualValue++) {
            if (products[actualValue].getPrice() < products[lower].getPrice()) {
                lower = actualValue;
            }
        }
        return lower;
    }

    private static int searchHigherValue(Product[] products, int start, int end) {
        int higher = start;

        for (int actualValue = start; actualValue <= end; actualValue++) {
            if (products[actualValue].getPrice() > products[higher].getPrice()) {
                higher = actualValue;
            }
        }
        return higher;
    }
}
