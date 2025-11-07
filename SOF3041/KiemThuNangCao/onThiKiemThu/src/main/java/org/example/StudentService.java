package org.example;

public class StudentService {
    //Stub dữ liệu
    protected Student student = new Student(
            "01","Khuất Ánh Ngọc",20,8.5F,3,"Công nghệ thông tin"
    );

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }
    public void update(Student students){
        if(students == null){
            throw new IllegalArgumentException("Đối tượng sv k được rỗng");
        }
        if(students.getId()==null || students.getId().isEmpty() ||
        students.getName()==null || students.getName().isEmpty() ||
                students.getMajor()==null || students.getMajor().isEmpty()){
            throw new IllegalArgumentException("Các thuộc tính không được rỗng");
        }
        if(students.getAge()<18){
            throw new IllegalArgumentException("Tuổi phải >= 18");
        }
        if(students.getAvgMark()<0 ||  students.getAvgMark()>10){
            throw new IllegalArgumentException("Điểm phải từ 0 - 10");
        }
        student.setId(students.getId());
        student.setName(students.getName());
        student.setMajor(students.getMajor());
        student.setAge(students.getAge());
        student.setAvgMark(students.getAvgMark());

    }
}
