package com.bookstore;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.*;
import java.util.*;

@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        HttpSession session = req.getSession();
        List<Integer> cart = (List<Integer>) session.getAttribute("cart");

        if(cart == null){
            cart = new ArrayList<>();
        }

        int id = Integer.parseInt(req.getParameter("id"));
        cart.add(id);

        session.setAttribute("cart", cart);

   
        res.sendRedirect("books.jsp");
    }
}