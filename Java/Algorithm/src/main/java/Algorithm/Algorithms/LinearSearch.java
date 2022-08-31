package Algorithm.Algorithms;

import Algorithm.Objects.Score;

public class LinearSearch {
    public static void main(String[] args) {
        Score[] scores = { //Assume that this vector was previously sorted
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

        double numberSearched = 9.3;
        int numberFound = linearSearch(scores, 0, scores.length, numberSearched);

        printResult(scores, numberSearched, numberFound);
    }

    private static int linearSearch(Score[] scores, int from, int to, double searching) {
        for(int actual = from; actual < to; actual++) {
            if(scores[actual].getScore() == searching) {
                return actual;
            }
        }
        return -1;
    }

    private static void printResult(Score[] scores, double searched, int positionFound) {
        System.out.println("The number " + searched + " was found in the position: " + positionFound);
        for(int i = 0; i < scores.length; i++) {
            Score score = scores[i];

            System.out.println(score.getStudentName() + ": " + score.getScore());
        }
    }
}
