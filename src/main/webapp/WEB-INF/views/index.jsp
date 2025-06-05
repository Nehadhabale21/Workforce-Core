<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Workforce Core</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    html, body {
        height: 100%;
        overflow: hidden;
    }

    body {
        background: linear-gradient(135deg, #fce2f4, #f4e0f9);
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 20px;
    }

    .glass-card {
        background: rgba(255, 255, 255, 0.2);
        border-radius: 20px;
        padding: 80px; 
        width: 100%;
        max-width: 650px; 
        text-align: center;
        box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
        backdrop-filter: blur(12px);
        -webkit-backdrop-filter: blur(12px);
        border: 1px solid rgba(255, 255, 255, 0.3);
    }

    .glass-card h1 {
        color: transparent;
        font-size: 32px;
        margin-bottom: 30px;
        letter-spacing: 1px;
        background: linear-gradient(135deg, #f98bb1, #a58bf5); 
        -webkit-background-clip: text;
        background-clip: text; 
    }

    .glass-card a {
        display: block;
        padding: 12px 0;
        margin: 12px auto;
        width: 100%;
        max-width: 300px;
        color: white;
        font-size: 16px;
        font-weight: bold;
        text-decoration: none;
        border-radius: 12px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        transition: transform 0.2s, box-shadow 0.3s, background 0.3s;
    }

    .btn-register {
        background: linear-gradient(135deg, #f98bb1, #a58bf5);
    }

    .btn-register:hover {
        background: linear-gradient(135deg, #a58bf5, #f98bb1);
        transform: translateY(-3px);
    }

    .btn-login {
        background: linear-gradient(135deg, #a58bf5, #f98bb1);
    }

    .btn-login:hover {
        background: linear-gradient(135deg, #f98bb1, #a58bf5);
        transform: translateY(-3px);
    }

    .footer {
        margin-top: 20px;
        font-size: 13px;
        color: #555;
    }

    @media (max-width: 500px) {
        .glass-card {
            padding: 40px 30px;
        }

        .glass-card h1 {
            font-size: 24px;
        }
    }
</style>
</head>
<body>

<div class="glass-card">
    <h1>Welcome to Workforce Core Pvt. Ltd</h1>
    <a href="register" class="btn-register">Register</a>
    <a href="login" class="btn-login">Login</a>
</div>

</body>
</html>
