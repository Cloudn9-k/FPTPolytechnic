package org.example;

public class Student {
    private String id;
    private String name;
    private int age = 0;
    private float avgMark = 0.0F;
    private int semester;
    private String major;

    public Student() {
    }

    public Student(String id, String name, int age, float avgMark, int semester, String major) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.avgMark = avgMark;
        this.semester = semester;
        this.major = major;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public float getAvgMark() {
        return avgMark;
    }

    public void setAvgMark(float avgMark) {
        this.avgMark = avgMark;
    }

    public int getSemester() {
        return semester;
    }

    public void setSemester(int semester) {
        this.semester = semester;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }
}
