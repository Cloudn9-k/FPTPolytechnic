package com.example.tongankhang_th03591_sof3012_asm1.until;

import com.example.tongankhang_th03591_sof3012_asm1.enity.Class;
import com.example.tongankhang_th03591_sof3012_asm1.enity.Class_Registration;
import com.example.tongankhang_th03591_sof3012_asm1.enity.Gym_Member;
import com.example.tongankhang_th03591_sof3012_asm1.enity.Trainer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import java.util.Properties;

public class HibernateUntil {
    private static final SessionFactory FACTORY;

    static {
        Configuration conf = new Configuration();

        Properties properties = new Properties();
        properties.put(Environment.DIALECT, "org.hibernate.dialect.SQLServerDialect");
        properties.put(Environment.DRIVER, "com.microsoft.sqlserver.jdbc.SQLServerDriver");
        properties.put(Environment.URL, DbMetadata.getConnectString());
        properties.put(Environment.SHOW_SQL, "true"); // Hiển thị câu lệnh SQL thực hiện
        // properties.put(Environment.HBM2DDL_AUTO, "create"); // tự động sinh db

        conf.setProperties(properties);
        conf.addAnnotatedClass(Gym_Member.class);
        conf.addAnnotatedClass(Class.class);
        conf.addAnnotatedClass(Class_Registration.class);
        conf.addAnnotatedClass(Trainer.class);
        // conf.addAnnotatedClass(ViecCanLam.class);

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
        getFactory();
        System.out.println("Hibernate run successfully!");
    }
}
