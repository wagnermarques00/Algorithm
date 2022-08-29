package Algorithm.Algorithms;

import Algorithm.Objects.Product;

public class FindLower { 
    public static void main(String[] args) {
        Product[] products = {
            new Product("Lamborghini", 1000000.0),
            new Product("Jeep", 46000.0),
            new Product("Ford", 16000.0),
            new Product("Smart", 46000.0),
            new Product("Toyota", 17000.0)
        };

        int lowestPrice = searchLowerValue(products, 0, 4);
        printResult(products, lowestPrice);
    }

    private static void printResult(Product[] products, int lowestPrice) {
        System.out.println("Cheapest position: " + lowestPrice);
        System.out.println(
                "The cheapest car is " + products[lowestPrice].getName() +
                        " and costs " + products[lowestPrice].getPrice()
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
}
