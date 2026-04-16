<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<html>
<head>
<meta charset="UTF-8">
<title>Receipt</title>

<style>
body {
    font-family:sans-serif;
    background:#f4f6f9;
    text-align:center;
}

.box {
    background:white;
    width:400px;
    margin:50px auto;
    padding:25px;
    border-radius:10px;
    box-shadow:0 5px 15px rgba(0,0,0,0.2);
}

h2 { color:green; }

.btn {
    margin-top:20px;
    padding:10px;
    background:#e74c3c;
    color:white;
    border:none;
    border-radius:5px;
}
</style>

</head>

<body>

<div class="box">

<h2>✅ Payment Successful</h2>

<%
Integer orderId = (Integer) session.getAttribute("orderId");
Integer total = (Integer) session.getAttribute("total");
List<Integer> items = (List<Integer>) session.getAttribute("cartItems");
Date date = (Date) session.getAttribute("date");
%>

<p><b>Order ID:</b> <%= orderId %></p>
<p><b>Date:</b> <%= date %></p>

<hr>

<h3>Items:</h3>

<%
if(items != null){
    for(Integer id : items){
%>
    Book ID: <%= id %><br>
<%
    }
}
%>

<hr>

<h3>Total: &#8377;<%= total %></h3>

<a href="index.jsp">
    <button class="btn">Back to Home</button>
</a>

</div>

</body>
</html>