package com.example.demo.utils;

import java.util.Properties;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;
public class Hibernate {

    private static final SessionFactory FACTORY;

    static {
        Configuration conf = new Configuration();
        Properties properties = new Properties();
        properties.put(Environment.DIALECT, "org.hibernate.dialect.SQLServerDialect");
        properties.put(Environment.DRIVER, "com.microsoft.sqlserver.jdbc.SQLServerDriver");
        properties.put(Environment.URL, DbMetaData.getConnectString());
        properties.put(Environment.SHOW_SQL, "true"); // Hiển thị câu lệnh SQL thực hiện
//         properties.put(Environment.HBM2DDL_AUTO, "create"); // tự động sinh db

        conf.setProperties(properties);
//        conf.addAnnotatedClass(SimpleUser.class);
//        conf.addAnnotatedClass(Contact.class);
//        conf.addAnnotatedClass(Product.class);
//        conf.addAnnotatedClass(Task.class);
//        conf.addAnnotatedClass(NewsletterSubscriber.class);
//        // Tạm thời comment dòng này vì chưa có class ViecCanLam

        ServiceRegistry registry = new StandardServiceRegistryBuilder()
                .applySettings(conf.getProperties())
                .build();
        FACTORY = conf.buildSessionFactory(registry);
    }

    public static SessionFactory getFactory() {
        return FACTORY;
    }

    public static synchronized Session getSession() {
        return FACTORY.openSession();
    }

    public static void main(String[] args) {
        // Gọi getFactory() để khởi tạo SessionFactory
        getFactory();
        System.out.println("Hibernate run successfully!");
    }
}
