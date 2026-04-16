<%@ page import="java.util.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>

<style>
body { font-family:sans-serif; background:#f4f6f9; text-align:center; }

.card {
    background:white;
    margin:15px auto;
    width:300px;
    padding:15px;
    border-radius:10px;
    box-shadow:0 5px 15px rgba(0,0,0,0.1);
}

.btn {
    padding:10px 20px;
    background:#e74c3c;
    color:white;
    border:none;
    border-radius:5px;
}
</style>

</head>
<body>

<h2>🛒 Your Cart</h2>

<%
List<Integer> cart = (List<Integer>) session.getAttribute("cart");

if(cart != null && !cart.isEmpty()){
    for(Integer id : cart){
%>

<div class="card">
    Book ID: <%= id %>
</div>

<%
    }
} else {
%>

<p>Cart is empty</p>

<%
}
%>

<br>

<a href="payment.jsp">
    <button class="btn">Proceed to Payment</button>
</a>

</body>
</html>