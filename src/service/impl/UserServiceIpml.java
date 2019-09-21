package service.impl;

import dao.Impl.UserDaoIpml;
import dao.UserDao;
import domain.User;
import service.UserService;

/**
 * @author zhangyu
 * @date 2019-09-04-15:44
 */
public class UserServiceIpml implements UserService {
    private UserDao dao=new UserDaoIpml();
    @Override
    public User login(User user) {
        return dao.finduser(user.getUsername(),user.getPassword()) ;
    }

    @Override
    public int regist(User user) {
        return dao.regist(user.getUsername(),user.getPassword(),user.getName(),user.getGender(),
                     user.getAge(),user.getAddres(),user.getQq(),user.getPhone());

    }

    @Override
    public User findUserByUsername(String username) {
        return dao.findUserByUsername(username);
    }

    @Override
    public int modify(User user) {
       return dao.modify(user);
    }


}
