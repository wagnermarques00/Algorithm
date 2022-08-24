package Objects;

public class Score {
    private String studentName;
    private Double score;

    public Score(String studentName, Double score) {
        this.studentName = studentName;
        this.score = score;
    }

    public String getStudentName() {
        return studentName;
    }

    public Double getScore() {
        return score;
    }
}
