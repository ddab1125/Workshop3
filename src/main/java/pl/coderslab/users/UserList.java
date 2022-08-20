package pl.coderslab.users;
import pl.coderslab.dao.User;
import pl.coderslab.dao.UserDao;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet("/user/list")
public class UserList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao dao = new UserDao();
        User[] users = dao.findAll();
        request.setAttribute("users", users);


        getServletContext().getRequestDispatcher("/users/list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
