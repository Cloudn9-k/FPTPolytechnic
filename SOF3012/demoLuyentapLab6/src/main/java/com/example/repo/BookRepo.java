package com.example.repo;

import com.example.module.Books;
import com.example.util.Hibernate;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class BookRepo {
    public static List<Books> getAll(){
        Session session = Hibernate.getSession();
        Query<Books> query = session.createQuery("from Books", Books.class);
        List<Books> books = query.getResultList();
        session.close();
        return books;
    }
    public static List<Books> getBooksByCategory(){
        Session session = Hibernate.getSession();
        Query<Books> query = session.createQuery("from Books b Where b.category like :category", Books.class);
        query.setParameter("category", "Tiểu thuyết");
        List<Books> books = query.getResultList();
        session.close();
        return books;
    }
    public static List<Books> getBooksOutofStock(){
        Session session = Hibernate.getSession();
        Query<Books> query = session.createQuery("from Books b Where b.quantityInStock <20", Books.class);
        List<Books> books = query.getResultList();
        session.close();
        return books;
    }
    public static List<Books> getBooksReturnDate(){
        Session session = Hibernate.getSession();
        Query<Books> query = session.createQuery("from Books b order by b.returnDueDate desc ", Books.class);
        List<Books> books = query.getResultList();
        session.close();
        return books;
    }
    public static List<Books> getBooksByKeyword(String keyword){
        Session session = Hibernate.getSession();
        Query<Books> query = session.createQuery("from Books b Where b.title like :keyword or b.summary like :keyword", Books.class);
        query.setParameter("keyword", "Tiểu thuyết");
        List<Books> books = query.getResultList();
        session.close();
        return books;

    }

}
