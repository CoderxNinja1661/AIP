<%@ page import="java.sql.*,com.bookstore.DBConnection" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<meta charset="UTF-8">
<title>Books</title>

<style>
body { font-family:sans-serif; background:#f4f6f9; }

.container {
    display:grid;
    grid-template-columns:repeat(auto-fill,minmax(250px,1fr));
    gap:20px;
    padding:30px;
}

.card {
    background:white;
    padding:20px;
    border-radius:10px;
    box-shadow:0 5px 15px rgba(0,0,0,0.1);
    text-align:center;
}

.btn {
    background:#e74c3c;
    color:white;
    padding:10px;
    border:none;
    border-radius:5px;
    cursor:pointer;
}
</style>

</head>
<body>

<h2 style="text-align:center;">📚 Available Books</h2>

<div class="container">

<%
Connection con = DBConnection.getConnection();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("SELECT * FROM books");

while(rs.next()){
%>

<div class="card">
    <h3><%= rs.getString("title") %></h3>
    <p><%= rs.getString("author") %></p>
    <h4>&#8377;<%= String.format("%.0f", rs.getDouble("price")) %></h4>

    <a href="CartServlet?id=<%=rs.getInt("id")%>">
        <button class="btn">Add to Cart</button>
    </a>
</div>

<% } %>

</div>

<div style="text-align:center;">
    <a href="cart.jsp"><button class="btn">Go to Cart</button></a>
</div>

</body>
</html>