Workforce Core - Employee Management System

📌 Project Description
Workforce Core is a web-based Employee Management System built using Spring MVC, Hibernate, JSP, and MySQL.
It provides an efficient way to manage employees, departments, and organizational workflows with CRUD operations, validation, and secure database integration.
The system is designed to simplify HR and admin tasks such as adding employees, updating records, managing departments, and generating reports.

🚀 Features

👨‍💼 Employee CRUD operations (Add, View, Update, Delete)

🏢 Department management

🔑 Role-based access control (Admin/Employee)

✅ Form validation & error handling

🔍 Search & filter employees

🎨 User-friendly JSP-based interface

💾 Database integration with Hibernate ORM

🛠 Technologies Used

Backend: Spring MVC, Hibernate, Java

Frontend: JSP, HTML, CSS

Database: MySQL

Build Tool: Maven

Server: Apache Tomcat

📂 Project Structure
WorkforceCore/
│── src/main/java/com/workforcecore/          
│   ├── controller/          # Spring MVC Controllers
│   │     └── EmployeeController.java
│   │     
│   ├── dao/                 # Data Access Layer (DAO)
│   │     ├── EmployeeDao.java
│   │     └── EmployeeDaoImpl.java
│   │
│   ├── model/               # Entity Classes (Hibernate Mapping)
│   │     └── Employee.java
│   │
│   ├── service/             # Business Logic Layer
│        ├── EmployeeService.java
│        └── EmployeeServiceImpl.java
│         
│── src/main/webapp/
│   ├── WEB-INF/
│   │     ├── web.xml                # Deployment Descriptor
│   │     ├── dispatcher-servlet.xml # Spring MVC Dispatcher config
│   │     └── views/                 # JSP Views
│   │           ├── 🏠 index.jsp      # Home Page
│   │           ├── 🔐 login.jsp      # Login Page
│   │           ├── 📝 register.jsp   # Employee Registration Page
│   │           ├── ✏️ update.jsp     # Update Employee Info Page
│   │           └── 👥 users.jsp      # Employee List Page
│
│── pom.xml                           # Maven dependencies & build settings

🏆 Challenges Faced

⚙️ Configuration Issues – Initial setup of Spring MVC & Hibernate integration.

📝 Form Validation – Implemented custom annotations & error handling.

🔄 Session & Transaction Management – Ensured proper commit/rollback in Hibernate.

🔗 Frontend & Backend Integration – Debugged JSP + Controller mapping.

🚀 Deployment – Resolved Apache Tomcat errors (URL mappings, missing libs).

🔮 Future Enhancements

⏱ Employee attendance management

💰 Payroll module

🌐 REST API integration

🔒 JWT authentication & security

📸 Screenshots
🏠 Welcome Page
<img width="1903" height="888" alt="Welcome Page" src="https://github.com/user-attachments/assets/d5147365-834b-4fb8-9549-389e61186777" />

🔐 Login Page
<img width="1845" height="856" alt="Login Page" src="https://github.com/user-attachments/assets/598cc341-2cea-4a52-9b43-acbc595bd1b7" />

📝 Employee Registration
<img width="1866" height="888" alt="Registration Page" src="https://github.com/user-attachments/assets/b874207c-eaea-4a21-85fb-d2d3e3fc758b" />

✏️ Employee Update
<img width="1906" height="881" alt="Updation Page" src="https://github.com/user-attachments/assets/00cf4d5a-ef83-4b33-87d7-bb7ea02b09c6" />

👥 All Registered Employees
<img width="1907" height="878" alt="Registered Employees Page" src="https://github.com/user-attachments/assets/c0e29354-3b2b-45c2-90fc-cc3061a3a917" />
