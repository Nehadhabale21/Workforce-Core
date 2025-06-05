<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>List of Users</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        html, body {
            height: 100%;
        }

        body {
            background: linear-gradient(135deg, #fce2f4, #f4e0f9);
            display: flex;
            justify-content: center;
            align-items: flex-start;
            padding: 20px;
            height: 100%;
        }

        .table-container {
            width: 80%;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.3);
        }
       

        h2 {
            color: transparent;
            font-size: 40px;
            text-align: center;
            background: linear-gradient(135deg, #f98bb1, #a58bf5);
            -webkit-background-clip: text;
            background-clip: text;
            margin-bottom: 60px;
            font-weight: bold;
        }
        
        h4 {
            color: transparent;
            font-size: 30px;
            text-align: center;
            background: linear-gradient(135deg, #f98bb1, #a58bf5);
            -webkit-background-clip: text;
            background-clip: text;
            margin-bottom: 60px;
            font-weight: bold;
        }


        table {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid rgba(0, 0, 0, 0.1); 
            margin-top: 20px;
        }

        table th {
            padding: 12px;
            text-align: center;
            background: linear-gradient(135deg, #f68fb2, #b19ae2); 
            color: white;
            font-weight: bold;
            border: 1px solid rgba(0, 0, 0, 0.1); 
        }

        table td {
            padding: 12px;
            text-align: center;
            background: rgba(100, 100, 100, 0.1);
            color: #191970;
            -webkit-background-clip: text;
            background-clip: text;
            border: 1px solid rgba(0, 0, 0, 0.1); 
        }
        


        a.back-button {
            display: inline-block;
            margin-top: 30px;
            padding: 16px 50px;
            background: linear-gradient(135deg, #f98bb1, #a58bf5);
            border: none;
            border-radius: 12px;
            font-weight: bold;
            color: white;
            font-size: 18px;
            text-align: center;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
            display: block;
            width: fit-content;
            margin-left: auto;
            margin-right: auto;
        }

        a.back-button:hover {
            background: linear-gradient(135deg, #a58bf5, #f98bb1);
            transform: translateY(-3px);
        }
        
        @media (max-width: 600px) {
            .table-container {
                width: 95%;
                padding: 20px;
            }

            h2 {
                font-size: 28px;
            }
        }
        
        
        
        .edit-delete-buttons a.edit {
		    color: blue;
		    text-decoration: none;
		    margin-right: 10px; 
		}
		
		.edit-delete-buttons a.delete {
		    color: #E30B5C;
		    text-decoration: none;
		}
		
		        
		        .edit-delete-buttons a.edit:hover {
		    text-decoration: underline;
		}
		
		.edit-delete-buttons a.delete:hover {
		    text-decoration: underline;
		}
		        
        
       .logout-link {
            margin-top: 50px;
            display: inline-block;
            font-size: 16px; 
            text-align: center;
            background: linear-gradient(135deg, #f98bb1, #a58bf5);
            padding: 10px 30px; 
            border-radius: 6px; 
            color: white;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .logout-link:hover {
            background: linear-gradient(135deg, #a58bf5, #f98bb1);
            transform: translateY(-3px);
        }

        
        .logout-link a {
            color: white;
        }
        
        
        .button-row {
		    display: flex;
		    justify-content: center;
		    gap: 20px; 
		    margin-top: 50px;
		}
		
		.action-button {
		    display: inline-block;
		    padding: 16px 50px;
		    background: linear-gradient(135deg, #f98bb1, #a58bf5);
		    border: none;
		    border-radius: 12px;
		    font-weight: bold;
		    color: white;
		    font-size: 18px;
		    text-align: center;
		    text-decoration: none;
		    cursor: pointer;
		    transition: background-color 0.3s ease, transform 0.2s ease;
		}
		
		.action-button:hover {
		    background: linear-gradient(135deg, #a58bf5, #f98bb1);
		    transform: translateY(-3px);
		}
		
        
    </style>
</head>
<body>

    <div class="table-container">
    <h4>Hello, ${name}! Welcome to the Workforce Core's Portal.</h4>
        <h2>All Registered Employees</h2>
        <table>
            <tr>
                <th>Sr No.</th>
                <th>Name</th>
                <th>Gender</th>
                <th>City</th>
                <th>State</th>
                <th>Edit/Delete</th>
            </tr>
            <c:forEach var="user" items="${users}" varStatus="status">
                <tr>
                    <td>${status.index + 1}</td>    <!--  or <td>${status.count}</td>  it starts with 1 while index starts with 0 thatas why +1-->
                    <td>${user.name}</td>
                    <td>${user.gender}</td>
                    <td>${user.city}</td>
                    <td>${user.state}</td>
                    
                    <td class="edit-delete-buttons">
					    <a href="editEmployee?id=${user.id}" class="edit">Edit</a>
					    <a href="deleteEmployee?id=${user.id}" class="delete" onclick="return confirm('Are you sure?')">Delete</a>
					</td>

                </tr>
            </c:forEach>
        </table>
        
		<div class="button-row">
		    <a href="logout" class="action-button">Logout</a>
		</div>
				

    </div>
</body>
</html>
