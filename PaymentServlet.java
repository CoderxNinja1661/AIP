package com.bookstore;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.*;
import java.util.*;

@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        String card = req.getParameter("card");
        String cvv = req.getParameter("cvv");

        if(card != null) card = card.replaceAll(" ", "");

        HttpSession session = req.getSession();

        if(card != null && cvv != null &&
           card.matches("\\d{16}") && cvv.matches("\\d{3}")) {

            // 🔹 Get cart
            List<Integer> cart = (List<Integer>) session.getAttribute("cart");

            // 🔹 Generate Order ID
            int orderId = new Random().nextInt(100000);

            // 🔹 Calculate total (simple logic)
            int total = (cart != null) ? cart.size() * 500 : 0;

            // 🔹 Save data in session for receipt
            session.setAttribute("orderId", orderId);
            session.setAttribute("total", total);
            session.setAttribute("cartItems", cart);
            session.setAttribute("date", new Date());

            // 🔥 Clear cart
            session.removeAttribute("cart");

            res.sendRedirect("receipt.jsp");

        } else {
            res.sendRedirect("failure.jsp");
        }
    }
}