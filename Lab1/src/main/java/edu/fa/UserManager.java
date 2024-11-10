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
public void update(String id) {
	EntityManager em = emf.createEntityManager();
	User user=em.find(User.class,id);
	if(user!=null) {
		try {
			em.getTransaction().begin();
			user.setFullname("Đã cập nhật");
			user.setEmail("Đã cập nhật");
			em.getTransaction().begin();
			em.merge(user);
			em.getTransaction().commit();
			System.out.println("Xóa Thành Công");
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
		em.close();
	}
	else {
		System.out.println("Nhân Viên Không Tồn Tại");
	}
}
    public List<User> findAll() {
        EntityManager em = emf.createEntityManager();
        List<User> users = em.createQuery("SELECT u FROM User u", User.class).getResultList();
        em.close();
        return users;
    }
    public void seachId(String id) {
    	 EntityManager em = emf.createEntityManager();
    	 User user=em.find(User.class,id );
    	 System.out.println("Tên:"+user.getFullname());
    	 System.out.println("Pass:"+user.getPassword());
    	 System.out.println("Email:"+user.getEmail());
    }
    public void deleteById(String id) {
    	 EntityManager em = emf.createEntityManager();
    	User user=em.find(User.class,id);
    	try {
			if(user!=null) {
				em.getTransaction().begin();
				em.remove(user);
				em.getTransaction().commit();
				System.out.println("Xóa Thành Công");
				em.close();
			}
			else {
				System.out.println("Nhân Viên Không Tồn Tại");
			}
		} catch (Exception e) {
			em.getTransaction().rollback();
			em.close();
		}
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
