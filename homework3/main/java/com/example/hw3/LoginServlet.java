package com.example.HW3;

import com.example.HW3.User.UserCheck;
import com.example.HW3.User.UserManagement;
import com.example.HW3.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String log = (String) session.getAttribute("admin");
        String userlog= (String) session.getAttribute("username");
        if (log != null && log.equals("log")) {
            request.getRequestDispatcher("admin").forward(request, response);
        }
        else if(userlog!=null){
            response.sendRedirect("user");
        }
        else {
            response.sendRedirect("Login.jsp");
            return;
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username= request.getParameter("user").trim();
        String password = request.getParameter("pwd").trim();

//        if(UserCheck.checkUserLogin(username,password)){
            User user=UserManagement.getUserByName(username);
            int id=user.getId();
            request.getSession().setAttribute("username", username);
            request.getSession().setAttribute("id", id);
            response.sendRedirect("user");
//        }
//        else {
//            response.sendRedirect("login-error.jsp");
//        }
//        return;
    }
}
