package Algorithm.Algorithms;

import Algorithm.Objects.Score;

public class BinarySearch {
    public static void main(String[] args) {
        Score[] scores = {//Assume that this vector was previously sorted
                new Score("Morris", 3.0),
                new Score("Joy", 4.0),
                new Score("Gerry", 5.0),
                new Score("Christian", 6.7),
                new Score("Amber", 7.0),
                new Score("Vera", 8.5),
                new Score("Sydney", 9.0),
                new Score("Veronica", 9.3),
                new Score("Alfred", 10.0),
        };

        double numberSearched = 9.8;
        int numberFound = binarySearch(scores, 0, scores.length, numberSearched);

        printResult(scores, numberSearched, numberFound);
    }

    private static int binarySearch(Score[] scores, int from, int to, double searching) {
        int middle = (from + to) / 2;
        Score score = scores[middle];

        if(from > to) {
            return -1;
        }
        if(searching == score.getScore()) {
            return middle;
        }
        if(searching < score.getScore()) {
            return binarySearch(scores, from, middle - 1, searching);
        }
        return binarySearch(scores, middle + 1, to, searching);
    }

    private static void printResult(Score[] scores, double searched, int positionFound) {
        if(positionFound >= 0) {
            System.out.println("The number " + searched + " was found in the position: " + positionFound);
        } else {
            System.out.println("The number " + searched + " was not found");
        }
    }
}
