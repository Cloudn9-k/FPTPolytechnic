package com.example.helloworldsof3012;

import java.util.List;

public class MainApp {
    public static void main(String[] args) {
        SimpleUserRepo repo = new SimpleUserRepo();
        List<SimpleUser> danhSachNhanVien = repo.getAll();
        for (SimpleUser nhanVien : danhSachNhanVien) {
            System.out.println("ID: " + nhanVien.getId_user());
            System.out.println("Họ và tên: " + nhanVien.getUserName());
            System.out.println("Email: " + nhanVien.getEmail());
        }

        ContactRepo repos = new  ContactRepo();
        List< Contact> danhSachContact = repos.getAll();
        for ( Contact contact : danhSachContact) {
            System.out.println("ID: " + contact.getId());
            System.out.println("Họ và tên: " + contact.getFullName());
            System.out.println("Email: " + contact.getEmail());
            System.out.println("Birth " + contact.getBirthDate());
        }

        ProductRepo repos1 = new  ProductRepo();
        List<Product> danhSachPD = repos1.getAll();
        for (Product pd : danhSachPD) {
            System.out.println("ID: " + pd.getIdpd());
            System.out.println("ten pd " + pd.getNamePD());
            System.out.println("price: " + pd.getPricePD());
            System.out.println("Instock " + pd.getIn_stock());
            System.out.println("date " + pd.getCreateAt());
        }
        TaskRepo repos2 = new  TaskRepo();
        List<Task> danhSachT = repos2.getAll();
        for (Task t : danhSachT) {
            System.out.println("ID: " + t.getIdTask());
            System.out.println("title " + t.getTitle());
            System.out.println("des " + t.getDesc());
            System.out.println("status " + t.ge`tStatus());
            System.out.println("due-date " + t.getDue_date());
        }
        NewsletterSubscriberRepo repos3 = new  NewsletterSubscriberRepo();
        List<NewsletterSubscriber> danhSachN = repos3.getAll();
        for (NewsletterSubscriber N : danhSachN) {
            System.out.println("ID: " + N.getId());
            System.out.println("emails " + N.getEmail());
            System.out.println("sub " + N.getSubscribed());
            System.out.println("sub_at " + N.getSubscribed_at());
        }
    }
}
