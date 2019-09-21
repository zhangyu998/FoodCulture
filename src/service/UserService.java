package service;

import domain.User;

/**
 * @author zhangyu
 * @date 2019-09-04-15:39
 */
public interface UserService {
    User login(User user);

   int regist(User user);

    User findUserByUsername(String username);

    int modify(User user);
}
