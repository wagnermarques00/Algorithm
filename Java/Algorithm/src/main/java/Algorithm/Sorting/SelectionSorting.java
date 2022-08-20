package Algorithm.Sorting;

import Objects.Product;

public class SelectionSorting {
    public static void main(String[] args) {
        Product[] products = {
                new Product("Lamborghini", 1000000.0),
                new Product("Jeep", 46000.0),
                new Product("Ford", 16000.0),
                new Product("Smart", 46000.0),
                new Product("Toyota", 17000.0)
        };

        selectionSort(products, products.length);
        printProducts(products);
    }

    private static void printProducts(Product[] products) {
        for(Product product : products) {
            System.out.println(product.getName() + " costs " + product.getPrice());
        }
    }

    private static int searchLowerValue(Product[] products, int start, int end) {
        int lowerValue = start;

        for(int actualValue = start; actualValue <= end; actualValue++) {
            if(products[actualValue].getPrice() < products[lowerValue].getPrice()) {
                lowerValue = actualValue;
            }
        }
        return lowerValue;
    }

    private static void selectionSort(Product[] products, int quantityElements) {
        for(int actualValue = 0; actualValue < quantityElements -1; actualValue++) {
            int lowerValue = searchLowerValue(products, actualValue, products.length - 1);

            changePosition(products, actualValue, lowerValue);
        }
    }

    private static void changePosition(Product[] products, int actualValue, int lowerValue) {
        Product actualProduct = products[actualValue];
        Product lowerProduct = products[lowerValue];

        products[actualValue] = lowerProduct;
        products[lowerValue] = actualProduct;
    }
}
