package com.lab1.test;

import java.util.List;

import com.lab1.entity.User;

import edu.fa.UserManager;

public class UserTest {
    public static void main(String[] args) {
        UserManager userManager = new UserManager();

        // Thêm một số người dùng mới
        User user1 = new User();
        user1.setFullname("Nguyen Van D");
        user1.setEmail("nguyenvand@fpt.edu.vn");
        user1.setPassword("password101");
        user1.setAdmin(false);
        userManager.addUser(user1);

        // Lấy tất cả người dùng
        List<User> allUsers = userManager.findAll();
        allUsers.forEach(user -> System.out.println(user.getFullname()));

        // Tìm kiếm người dùng không phải admin với email @fpt.edu.vn
        List<User> fptUsers = userManager.findNonAdminFptUsers();
        fptUsers.forEach(user -> System.out.println(user.getFullname() + " - " + user.getEmail()));

        // Lấy người dùng theo trang
        List<User> pageUsers = userManager.getUsersByPage(2, 5); // Trang 3
        pageUsers.forEach(user -> System.out.println(user.getFullname()));

        userManager.close();
    }
}
