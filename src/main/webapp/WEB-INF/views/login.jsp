<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
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
        justify-content: center;
        align-items: center;
        padding: 20px;
    }

    form {
        background: rgba(255, 255, 255, 0.2);
        border-radius: 20px;
        padding: 60px; 
        width: 100%;
        max-width: 600px; 
        box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
        backdrop-filter: blur(12px);
        -webkit-backdrop-filter: blur(12px);
        border: 1px solid rgba(255, 255, 255, 0.3);
    }

    h2 {
        color: transparent;
        font-size: 40px; 
        margin-bottom: 45px;
        letter-spacing: 1px;
        text-align: center;
        background: linear-gradient(135deg, #f98bb1, #a58bf5); 
        -webkit-background-clip: text; 
        background-clip: text; 
        padding: 10px; 
    }

    .form-group {
        margin-bottom: 20px; 
        text-align: left;
        
    }

    .form-group label {
            width: 120px; 
            margin-right: 10px;
            font-weight: bold;
            color: #34495e;
            white-space: nowrap;
        }
        
    .form-group input {
        width: 100%;
        padding: 14px; 
        border: 2px solid #ccc;
        border-radius: 8px;
        font-size: 16px; 
        color: #333;
        background: linear-gradient(135deg, #fef5fb, #f6ebfb); 
        transition: border-color 0.3s ease, box-shadow 0.3s ease, background 0.3s ease;
    }

    .form-group input:focus {
        border-color: #f98bb1;
        box-shadow: 0 0 5px rgba(249, 139, 177, 0.4);
        outline: none;
        
    }

    .submit-btn {
        text-align: center;
        margin-top: 40px; 
    }

    .submit-btn input {
        padding: 16px 50px; 
        background: linear-gradient(135deg, #f98bb1, #a58bf5);
        border: none;
        border-radius: 12px;
        font-weight: bold;
        color: white;
        font-size: 20px; 
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    .submit-btn input:hover {
        background: linear-gradient(135deg, #a58bf5, #f98bb1);
        transform: translateY(-3px);
    }
    
     .register-link {
            text-align: center;
            margin-top: 20px;
            font-size: 16px;
        }

        .register-link a {
            color: #a58bf5;
            text-decoration: none;
            font-weight: bold;
        }
        .register-link a:hover {
        color: #f98bb1;
		}
		
		
		.error-message {
		    margin-top: 20px;
		    margin-bottom: 20px; 
		    font-size: 18px;
		    text-align: center;
		    color: red; 
		}

    @media (max-width: 600px) {
        form {
            padding: 30px;
        }

        h2 {
            font-size: 28px;
        }
    }
</style>



</head>
<body>

<div>
    <form action="login" method="post">
    
        <h2>Login Here</h2>
        
        <c:if test="${not empty error}">
          <p class="error-message">${error}</p>
        </c:if>
        
        
        <div class="form-group">
            <label for="loginId">Login ID:</label>
            <input type="text" name="loginId" id="loginId" required />
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" name="password" id="password" required />
        </div>
        <div class="submit-btn">
            <input type="submit" value="Login" />
        </div>
               
        
    </form>
    
    

<div class="register-link">
    <p>Not registered? 
        <a href="${pageContext.request.contextPath}/register">Register here</a>
    </p>
</div>

    
    
</div>

</body>
</html>
