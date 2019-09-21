package dao;

import domain.User;

/**
 * @author zhangyu
 * @date 2019-09-04-15:30
 */
public interface UserDao {
    User finduser(String username, String password);

    int regist(String username, String password, String name, String gender, String age, String addres, String qq, String phone);

    User findUserByUsername(String username);

    int modify(User user);
}
