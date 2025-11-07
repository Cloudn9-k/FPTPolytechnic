import org.example.Student;
import org.example.StudentService;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;

import static org.junit.jupiter.api.Assertions.*;

public class TestEntity {
    protected static Student student;
    protected static StudentService studentService;

    @BeforeAll
    public static void init(){
        studentService = new StudentService();
    }
    @AfterAll
    public static void destroy(){
        studentService = null;
    }

    //testcase normal (update thanh cong)
    @Test
    public void testUpdate(){
        student = new Student(
          //stub dl
                "01","Khuất Ánh Ngọc",20,7.5F,3,"Công nghệ thông tin"
        );

        assertEquals(7.5F, student.getAvgMark());
    }

    //Abtestcase normal (update voi diem < 0)
    @Test
    public void testUpdate2(){
        student = new Student(
                //stub dl
                "01","Khuất Ánh Ngọc",20,-1.0F,3,"Công nghệ thông tin"
        );

        Exception ex = assertThrows(IllegalArgumentException.class, ()-> studentService.update(student));
        assertEquals("Điểm phải từ 0 - 10", ex.getMessage());
    }

    @Test
    public void testUpdate3(){
        student = new Student( "01","Khuất Ánh Ngọc",20,11.0F,3,"Công nghệ thông tin");

        Exception ex = assertThrows(IllegalArgumentException.class, ()-> studentService.update(student));
        assertEquals("Điểm phải từ 0 - 10", ex.getMessage());
    }

    @Test
    public void testUpdate4(){
        student = new Student( "01","Khuất Ánh Ngọc",20,0.0F,3,"Công nghệ thông tin");

        assertEquals(0.0F, student.getAvgMark());
    }

    @Test
    public void testUpdat5(){
        student = new Student( "01","Khuất Ánh Ngọc",20,10.0F,3,"Công nghệ thông tin");

        assertEquals(10.0F, student.getAvgMark());
    }

}
