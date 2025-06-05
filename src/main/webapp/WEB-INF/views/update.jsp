<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee Updation</title>
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
            max-width: 900px; 
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        h2 {
            color: transparent;
            font-size: 40px; 
            margin-bottom: 20px;
            letter-spacing: 1px;
            text-align: center;
            background: linear-gradient(135deg, #f98bb1, #a58bf5); 
            -webkit-background-clip: text; 
            background-clip: text; 
            padding: 10px; 
        }

        .form-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 30px 50px; 
        }

        .form-group {
            display: flex;
            align-items: center;
        }

        .form-group label {
            width: 120px; 
            margin-right: 10px;
            font-weight: bold;
            color: #34495e;
            white-space: nowrap;
        }

        .form-group input {
            flex: 1;
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
            grid-column: span 2;
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
        
        
         .already-registered {
		    grid-column: span 2;
		    text-align: center;
		    margin-top: 30px;
		    font-size: 16px;
		}
		
		.already-registered a {
		    color: #a58bf5;
		    text-decoration: none;
		    font-weight: bold;
		    transition: color 0.3s ease;
		}
		
		.already-registered a:hover {
		    color: #f98bb1;
		}
		
		.form-wrapper {
		    display: flex;
		    flex-direction: column;
		    align-items: center;
		}
		

        @media (max-width: 600px) {
            .form-grid {
                grid-template-columns: 1fr;
            }

            .form-group {
                flex-direction: column;
                align-items: flex-start;
            }

            .form-group label {
                width: auto;
                margin-bottom: 5px;
            }

            .submit-btn {
                grid-column: span 1;
            }
            
           
        }
        
        .error-message {
		    margin-top: 20px;
		    margin-bottom: 20px; 
		    font-size: 18px;
		    text-align: center;
		    color: red; 
		}
		
		.success-message {
		    color: #155724;
		    
		    padding: 12px 20px;
		    margin-top: 20px;
		    margin-bottom: 20px;
		    font-size: 16px;
		    font-weight: bold;
		    border-radius: 8px;
		    text-align: center;
		    animation: fadeIn 0.5s ease-in-out;
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
    <div class="form-wrapper">
    
        <form action="updateEmployee" method="post">
            <h2>Employee Updation</h2>
            
            <c:if test="${not empty message}">
               <div class="success-message" id="registerSuccess">${message}</div>
            </c:if>
            
            
            <div class="form-grid">
         	    <input type="hidden" name="id" value="${employee.id}" />

			<div class="form-group">
			    <label for="name">Name:</label>
			    <input type="text" name="name" id="name" required value="${employee.name}" />
			</div>
			
			<div class="form-group">
			    <label for="dob">DOB:</label>
			    <input type="date" name="dob" id="dob" required value="${employee.dob}" />
			</div>
			
			<div class="form-group">
			    <label for="gender">Gender:</label>
			    <input type="text" name="gender" id="gender" required value="${employee.gender}" />
			</div>
			
			<div class="form-group">
			    <label for="address">Address:</label>
			    <input type="text" name="address" id="address" required value="${employee.address}" />
			</div>
			
			<div class="form-group">
			    <label for="city">City:</label>
			    <input type="text" name="city" id="city" required value="${employee.city}" />
			</div>
			
			<div class="form-group">
			    <label for="state">State:</label>
			    <input type="text" name="state" id="state" required value="${employee.state}" />
			</div>
			
			<div class="form-group">
			    <label for="loginId">Login ID:</label>
			    <input type="text" name="loginId" id="loginId" required value="${employee.loginId}" />
			</div>
			
			<div class="form-group">
			    <label for="password">Password:</label>
			    <input type="password" name="password" id="password" required value="${employee.password}" />
			</div>

            </div>
            <div class="submit-btn">
                <input type="submit" value="Update" />
            </div>
            
            
            <c:if test="${not empty error}">
               <div class="error-message" id="registerError">${error}</div>
            </c:if>
            
            
        </form>

        
    </div>
</body>

</html>
