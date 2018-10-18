package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: show the registration form
        {
            request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {

        if (request.getSession().getAttribute("password").equals(request.getSession().getAttribute("passwordConfirm"))) {
            // TODO: create a new user based off of the submitted information
            User user = new User(
                    request.getParameter("username"),
                    request.getParameter("email"),
                    request.getParameter("password")
            );
            DaoFactory.getUsersDao().insert(user);
            request.getSession().setAttribute("user", user.getUsername());
            // TODO: if a user was successfully created, send them to their profile
            try {
                response.sendRedirect("/profile");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
