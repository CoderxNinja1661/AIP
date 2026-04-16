<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Wallah</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

<style>

/* GLOBAL */
* {
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins', sans-serif;
}

body {
    background: linear-gradient(135deg,#eef2f7,#d9e4f5);
}

/* NAVBAR */
header {
    background: linear-gradient(90deg,#2c3e50,#34495e);
    color:white;
    padding:18px 50px;
    display:flex;
    justify-content:space-between;
    align-items:center;
    box-shadow:0 4px 15px rgba(0,0,0,0.2);
}

header h2 {
    font-weight:600;
    letter-spacing:1px;
}

/* HERO */
.hero {
    height:320px;
    background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)),
    url("https://images.unsplash.com/photo-1495446815901-a7297e633e8d");
    background-size:cover;
    display:flex;
    flex-direction:column;
    justify-content:center;
    align-items:center;
    color:white;
    text-align:center;
}

.hero h1 {
    font-size:42px;
    margin-bottom:10px;
    animation:fadeDown 1s ease;
}

.hero p {
    font-size:18px;
    opacity:0.9;
}

/* ANIMATION */
@keyframes fadeDown {
    from { opacity:0; transform:translateY(-20px); }
    to { opacity:1; transform:translateY(0); }
}

/* CONTAINER */
.container {
    display:flex;
    justify-content:center;
    gap:40px;
    margin-top:-80px;
    flex-wrap:wrap;
}

/* CARD */
.card {
    width:320px;
    padding:30px;
    border-radius:15px;
    background:rgba(255,255,255,0.75);
    backdrop-filter: blur(20px);
    box-shadow:0 15px 35px rgba(0,0,0,0.2);
    transition:0.4s;
}

.card:hover {
    transform:translateY(-10px) scale(1.02);
}

/* INPUT */
input {
    width:100%;
    padding:12px;
    margin:12px 0;
    border-radius:8px;
    border:1px solid #ccc;
    transition:0.3s;
}

input:focus {
    border-color:#e74c3c;
    box-shadow:0 0 8px rgba(231,76,60,0.4);
}

/* BUTTON */
.btn {
    width:100%;
    padding:12px;
    border:none;
    border-radius:8px;
    background:linear-gradient(45deg,#e74c3c,#ff6b6b);
    color:white;
    font-weight:600;
    cursor:pointer;
    transition:0.3s;
}

.btn:hover {
    transform:scale(1.05);
    box-shadow:0 5px 20px rgba(231,76,60,0.5);
}

/* BROWSE BUTTON */
.center {
    text-align:center;
    margin:50px;
}

.center .btn {
    width:220px;
    font-size:16px;
}

/* FOOTER */
footer {
    text-align:center;
    padding:25px;
    color:#666;
}

</style>

</head>

<body>

<!-- NAVBAR -->
<header>
    <h2>📚 Book Wallah</h2>
</header>

<!-- HERO -->
<div class="hero">
    <h1>Discover Your Next Favorite Book</h1>
    <p>Explore and shop from our amazing collection</p>
</div>

<!-- FORMS -->
<div class="container">

    <!-- LOGIN -->
    <div class="card">
        <h3>Login</h3>
        <form action="login" method="post">
            <input type="email" name="email" placeholder="Enter Email" required>
            <input type="password" name="password" placeholder="Enter Password" required>
            <button class="btn">Login</button>
        </form>
    </div>

    <!-- REGISTER -->
    <div class="card">
        <h3>Register</h3>
        <form action="register" method="post">
            <input type="text" name="name" placeholder="Enter Name" required>
            <input type="email" name="email" placeholder="Enter Email" required>
            <input type="password" name="password" placeholder="Enter Password" required>
            <button class="btn">Register</button>
        </form>
    </div>

</div>

<!-- BUTTON -->
<div class="center">
    <a href="books.jsp">
        <button class="btn">Browse Books</button>
    </a>
</div>

<!-- FOOTER -->
<footer>
    © 2026 Book Wallah | Built with ❤️ by Ansh & Hariom
</footer>

</body>
</html>