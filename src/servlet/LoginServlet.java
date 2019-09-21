package servlet;

import domain.User;
import org.apache.commons.beanutils.BeanUtils;
import service.UserService;
import service.impl.UserServiceIpml;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

/**
 * @author zhangyu
 * @date 2019-09-04-15:41
 */
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        HttpSession session = request.getSession();
        Map<String, String[]> parameterMap = request.getParameterMap();

        String verifycode = request.getParameter("verifycode");
        String checkcode_server = (String) session.getAttribute("CHECKCODE_SERVER");

            session.removeAttribute("CHECKCODE_SERVER");
            if (checkcode_server==null){
                request.setAttribute("login_msg","验证码超时！请重新输入");
                request.getRequestDispatcher("/login.jsp").forward(request,response);
            }
            System.out.println(verifycode +"-->"+checkcode_server);
            if (!checkcode_server.equalsIgnoreCase(verifycode)){
                request.setAttribute("login_msg","验证码错误！");
                request.getRequestDispatcher("/login.jsp").forward(request,response);
                return;
        }
        User user=new User();
        try {
            BeanUtils.populate(user,parameterMap);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

        UserService service=new UserServiceIpml();
        User loginuser = service.login(user);
        if(loginuser!=null){
            session.setAttribute("user",loginuser);
            response.sendRedirect(request.getContextPath()+"/index.jsp");
        }else {
            request.setAttribute("login_msg","用户名或密码错误");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
