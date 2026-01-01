package model;

public class Student {
    private final String name;
    private final String email;
    private final int year;

    public Student(String name, String email, int year) {
        this.name = name;
        this.email = email;
        this.year = year;
    }

    public String getName() { return name; }
    public String getEmail() { return email; }
    public int getYear() { return year; }
}
