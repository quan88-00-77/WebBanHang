package spring.dao;

import spring.entity.User;

import java.util.List;

public interface UserDAO {
    public List<User> getUsers();

    public User getUserById(int id);

    public User getUserByEmail(String email);

    public void saveUser(User user);

    public User checkLogin(String email, String password);
}
