package poly.phunglv.servlet;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lab3.bean.User;
import com.lab3.bean.Video;

/**
 * Servlet implementation class Search
 */
@WebServlet("/search")
public class Search extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userId = req.getParameter("userId");

        // Nạp persistence.xml và tạo EntityManagerFactory
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("PolyOE");
        EntityManager em = emf.createEntityManager();

        try {
            em.getTransaction().begin(); // Bắt đầu Transaction
            
            // Tìm kiếm thông tin user
            User user = em.find(User.class, userId);
            if (user != null) {
                // Truy vấn các video yêu thích của người dùng
                String jpql = "SELECT o.video FROM Favorite o WHERE o.user.id = :uid";
                TypedQuery<Video> query = em.createQuery(jpql, Video.class);
                query.setParameter("uid", userId);
                List<Video> videos = query.getResultList();
                
                // Gửi thông tin user và video list về JSP
                req.setAttribute("user", user);
                req.setAttribute("videos", videos);
            } else {
                req.setAttribute("message", "User not found with ID: " + userId);
            }

            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback(); // Hủy thao tác nếu có lỗi
            req.setAttribute("message", "Error occurred: " + e.getMessage());
        } finally {
            em.close();
            emf.close();
        }
        
        // Chuyển tiếp request đến JSP để hiển thị kết quả
        req.getRequestDispatcher("/search.jsp").forward(req, resp);
    }
}

