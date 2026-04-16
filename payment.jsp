<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>

<style>
body { font-family:sans-serif; background:#f4f6f9; text-align:center; }

.box {
    background:white;
    width:300px;
    margin:50px auto;
    padding:20px;
    border-radius:10px;
    box-shadow:0 5px 15px rgba(0,0,0,0.1);
}

input {
    width:90%;
    padding:10px;
    margin:10px;
}

.btn {
    background:#e74c3c;
    color:white;
    padding:10px;
    border:none;
    width:100%;
}
</style>

</head>
<body>

<div class="box">
<h2>💳 Payment</h2>

<form action="PaymentServlet" method="post">

<input type="text" name="card" placeholder="Card Number" required>
<input type="text" name="cvv" placeholder="CVV" required>

<button class="btn">Pay Now</button>

</form>

</div>

</body>
</html>