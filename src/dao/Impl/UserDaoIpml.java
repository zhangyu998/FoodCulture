package dao.Impl;

import dao.UserDao;
import domain.User;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import util.JDBCUtils;

/**
 * @author zhangyu
 * @date 2019-09-04-15:48
 */
public class UserDaoIpml implements UserDao {
    private JdbcTemplate template=new JdbcTemplate(JDBCUtils.getDataSource());

    @Override
    public User finduser(String username, String password) {
            try {
                String sql = "select * from user where username = ? and password = ?";
                User user=template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), username, password);
                return user;
            }catch (Exception e) {
                e.printStackTrace();
                return null;
            }

    }


    public User finduser(String username) {
        try {
            String sql = "select * from user where username =?";
            User user=template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), username);
            return user;
        }catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }

    @Override
    public int regist(String username, String password, String name, String gender, String age, String addres, String qq, String phone) {
        //1.定义sql
        User finduser = finduser(username);
        int flag=0;
            if (finduser==null){
                String sql = "insert into user values(null,?,?,?,?,?,?,?,?)";
                //2.执行sql
                flag= template.update(sql, username, password, name, gender, age, addres, qq, phone);
                System.out.println(flag);
            }

      return flag;

    }

    @Override
    public User findUserByUsername(String username) {
        String sql = "select * from user where username = ?";
        return template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class),username);
    }

    @Override
    public int modify(User user) {
        String sql = "update user set name = ?,password = ?,gender = ? ,age = ? , addres = ? , qq = ?, phone = ? where id = ?";
        //修改成功1
        return template.update(sql, user.getName(), user.getPassword(), user.getGender(), user.getAge(), user.getAddres(), user.getQq(), user.getPhone(), user.getId());

    }


}