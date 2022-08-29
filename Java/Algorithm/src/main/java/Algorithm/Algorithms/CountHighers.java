package Algorithm.Algorithms;

import Algorithm.Objects.Score;

public class CountHighers {

    public static void main(String[] args) {
        Score sampleScore = new Score("Joseph", 7.5);
        Score[] scores = {
            new Score("Alfred", 10.0),
            new Score("Amber", 7.0),
            new Score("Christian", 6.7),
            new Score("Gerry", 5.0),
            new Score("Joy", 4.0),
            new Score("Morris", 3.0),
            new Score("Sydney", 9.0),
            new Score("Vera", 8.5),
            new Score("Veronica", 9.3)
        };

        int lowerCount = findHigherCount(sampleScore, scores);
        System.out.println("Number of higher scores compared to the example: " + lowerCount);
    }

    private static int findHigherCount(Score exampleScore, Score[] score) {
        int higherCount = 0;

        for (Score actualScore : score) {
            if (actualScore.getScore() > exampleScore.getScore()) {
                higherCount++;
            }
        }
        return higherCount;
    }
}
