package com.example.repo;

import com.example.module.Dishes;
import com.example.util.Hibernate;
import org.hibernate.Session;

import java.util.List;

public class DishesRepo {
        private Session session = null;

        public DishesRepo() {
            session = Hibernate.getFactory().openSession();
        }

        public List<Dishes> getAllDishes() {
            return session.createQuery("FROM Dishes").list();
        }

        public Dishes getDishes(Integer id) {
            return session.find(Dishes.class, id);
        }

        public void themDishes(Dishes Dishes) {
            try {
                session.getTransaction().begin();
                session.persist(Dishes);
                session.getTransaction().commit();
            } catch (Exception e) {
                session.getTransaction().rollback();
                e.printStackTrace();
            }
        }

        public void suaDishes(Dishes Dishes) {
            try {
                session.getTransaction().begin();
                session.merge(Dishes);
                session.getTransaction().commit();
            } catch (Exception e) {
                session.getTransaction().rollback();
                e.printStackTrace();
            }
        }

        public void xoaDishes(Integer id) {
            try {
                session.getTransaction().begin();
                session.remove(this.getDishes(id));
                session.getTransaction().commit();
            } catch (Exception e) {
                session.getTransaction().rollback();
                e.printStackTrace();
            }
        }
    

}
