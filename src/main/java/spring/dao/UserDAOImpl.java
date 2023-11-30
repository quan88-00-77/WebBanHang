package spring.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import spring.entity.User;

import java.util.List;

@Repository
public class UserDAOImpl implements UserDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<User> getUsers() {
        Session currentSession = sessionFactory.getCurrentSession();
        Query<User> query = currentSession.createQuery("from User", User.class);
        return query.getResultList();
    }

    @Override
    public User getUserById(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        return currentSession.get(User.class, id);
    }

    @Override
    public User getUserByEmail(String email) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query<User> query = currentSession.createQuery("from User where email=:userEmail", User.class);
        query.setParameter("userEmail", email);
        return query.uniqueResult();
    }

    @Override
    public void saveUser(User user) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(user);
    }

    @Override
    public User checkLogin(String email, String password) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query<User> query = currentSession.createQuery("from User where email=:userEmail and password=:userPassword", User.class);
        query.setParameter("userEmail", email);
        query.setParameter("userPassword", password);
        List<User> users = query.list();
        
        if (users != null && !users.isEmpty()) {
            return users.get(0); // Trả về người dùng đầu tiên trong danh sách
        } else {
            return null; // Trả về null nếu không tìm thấy kết quả
        }
    }

}
