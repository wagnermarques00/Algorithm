package Algorithm.Algorithms;

import Algorithm.Objects.Product;

public class InsertionSorting {
    public static void main(String[] args) {
        Product[] products = {
                new Product("Lamborghini", 1000000.0),
                new Product("Jeep", 46000.0),
                new Product("Ford", 16000.0),
                new Product("Smart", 46000.0),
                new Product("Toyota", 17000.0)
        };

        insertSort(products, products.length);
        printProducts(products);
    }

    private static void printProducts(Product[] products) {
        for(Product product : products) {
            System.out.println(product.getName() + " costs " + product.getPrice());
        }
    }

    private static void insertSort(Product[] products, int quantityElements) {
        for(int actual = 0; actual < quantityElements;actual++) {
            int analysis = actual;

            while(analysis > 0 && products[analysis].getPrice() < products[analysis - 1].getPrice()) {
                changePosition(products, analysis);
                analysis--;
            }
        }
    }

    private static void changePosition(Product[] products, int analysis) {
        Product productAnalysis = products[analysis];
        Product productAnalysisOneLess = products[analysis - 1];

        products[analysis] = productAnalysisOneLess;
        products[analysis - 1] = productAnalysis;
    }
}
