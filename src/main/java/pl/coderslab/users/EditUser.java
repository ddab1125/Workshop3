package pl.coderslab.users;

import pl.coderslab.dao.User;
import pl.coderslab.dao.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/edit")
public class EditUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao dao = new UserDao();
        User user = dao.read(Integer.parseInt(request.getParameter("id")));
        request.setAttribute("user", user);
        getServletContext().getRequestDispatcher("/users/edituser.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao dao = new UserDao();
        User user = dao.read(Integer.parseInt(request.getParameter("id")));
        user.setUserName(request.getParameter("name"));
        user.setEmail(request.getParameter("email"));
        user.setPassword(request.getParameter("password"));
        dao.update(user);

        response.sendRedirect("/user/list");

    }
}

