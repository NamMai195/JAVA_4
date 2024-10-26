package edu.fa;

import java.util.List;

import com.lab1.entity.User;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.TypedQuery;

public class UserManager {
    private EntityManagerFactory emf;

    public UserManager() {
        emf = Persistence.createEntityManagerFactory("PolyOE");
    }

    public void addUser(User user) {
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(user);
        em.getTransaction().commit();
        em.close();
    }

    public List<User> findAll() {
        EntityManager em = emf.createEntityManager();
        List<User> users = em.createQuery("SELECT u FROM User u", User.class).getResultList();
        em.close();
        return users;
    }

    public List<User> findNonAdminFptUsers() {
        EntityManager em = emf.createEntityManager();
        TypedQuery<User> query = em.createQuery("SELECT u FROM User u WHERE u.email LIKE :search AND u.admin = :role", User.class);
        query.setParameter("search", "%@fpt.edu.vn");
        query.setParameter("role", false);
        List<User> users = query.getResultList();
        em.close();
        return users;
    }

    public List<User> getUsersByPage(int pageNumber, int pageSize) {
        EntityManager em = emf.createEntityManager();
        TypedQuery<User> query = em.createQuery("SELECT u FROM User u", User.class);
        query.setFirstResult(pageNumber * pageSize);
        query.setMaxResults(pageSize);
        List<User> users = query.getResultList();
        em.close();
        return users;
    }

    public void close() {
        if (emf != null) {
            emf.close();
        }
    }
}
