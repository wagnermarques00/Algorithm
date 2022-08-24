package Algorithm.Sorting;

import Objects.Score;

public class MergeSorting {

    public static void main(String[] args) {
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

        mergeSort(scores, 0, scores.length);
        printScore(scores);
    }

    private static void mergeSort(Score[] scores, int start, int end) {
        int numberOfElements = end - start;

        if(numberOfElements > 1) {
            int middle = (start + end) / 2;

            mergeSort(scores, start, middle);
            mergeSort(scores, middle, end);
            merge(scores, start, middle, end);
        }
    }

    private static void printScore(Score[] scores) {
        for (Score score : scores) {
            System.out.println(score.getStudentName() + " : " + score.getScore());
        }
    }

    private static void merge(Score[] score, int start, int middle, int end) {
        Score[] result = new Score[end - start];

        int actual = 0;
        int actualFirstScore = start;
        int actualSecondScore = middle;

        while(actualFirstScore < middle && actualSecondScore < end) {
            Score firstScore = score[actualFirstScore];
            Score secondScore = score[actualSecondScore];

            if (firstScore.getScore() < secondScore.getScore()) {
                result[actual] = firstScore;
                actualFirstScore++;
            } else {
                result[actual] = secondScore;
                actualSecondScore++;
            }
            actual++;
        }

        while(actualFirstScore < middle) {
            result[actual] = score[actualFirstScore];
            actual++;
            actualFirstScore++;
        }
        while(actualSecondScore < end) {
            result[actual] = score[actualSecondScore];
            actual++;
            actualSecondScore++;
        }

        for(int i = 0; i < actual; i++) {
            score[start + i] = result[i];
        }
    }
}
