package Algorithm.Algorithms;

import Algorithm.Objects.Score;

public class Partition {

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
                new Score("Veronica", 9.3),
                sampleScore
        };

        int newPosition = partition(scores, 0, scores.length);
        printResult(scores, newPosition);
    }

    private static void printResult(Score[] scores, int position) {
        System.out.println("The example was inserted in the " + position + "th position");
        for (Score score : scores) {
            System.out.println(score.getStudentName() + ": " + score.getScore());
        }
    }

    private static int partition(Score[] scores, int start, int end) {
        int minorsFound = 0;
        Score pivot = scores[end - 1];

        for(int i = 0; i < end - 1; i++) {
            Score actual = scores[i];

            if(actual.getScore() <= pivot.getScore()) {
                changePosition(scores, i, minorsFound);
                minorsFound++;
            }
        }
        changePosition(scores, end - 1, minorsFound);
        return minorsFound;
    }

    private static void changePosition(Score[] scores, int from, int to) {
        Score score1 = scores[from];
        Score score2 = scores[to];

        scores[to] = score1;
        scores[from] = score2;
    }

}
