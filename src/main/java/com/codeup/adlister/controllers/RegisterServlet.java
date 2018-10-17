package com.codeup.adlister.controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) {

        String username = request.getParameter("username");
        String email  = request.getParameter("email");
        String password = request.getParameter("password");
        String  passwordConfirm = request.getParameter("passwordConfirm");
        // TODO: ensure the submitted information is valid

        boolean inputInvalid = (username.isEmpty() || email.isEmpty() || password.isEmpty() || passwordConfirm.isEmpty())
                    && password.equals(passwordConfirm);

        if (inputInvalid == true) {
            try {
                response.sendRedirect("/register");
            } catch (IOException e) {
                e.printStackTrace();
            }
            return;
        }

        User newUser = new User(username, email, password);
        DaoFactory.getUsersDao().insert(newUser);
        try {
            response.sendRedirect("/login");
        } catch (IOException e) {
            e.printStackTrace();
        }

        // TODO: create a new user based off of the submitted information
        // TODO: if a user was successfully created, send them to their profile
    }
}
