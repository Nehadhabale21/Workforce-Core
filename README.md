
# 📝 **Workforce Core - Employee Management System**

### 📌 **Project Description**

Workforce Core is a web-based Employee Management System built using Spring MVC, Hibernate, JSP, and MySQL.

It provides an efficient way to manage employees, departments, and organizational workflows with CRUD operations, validation, and secure database integration.

The system is designed to simplify HR and admin tasks such as adding employees, updating records, managing departments, and generating reports.
_______________________________________
### 🚀 **Features**

•	👨‍💼 Employee CRUD operations (Add, View, Update, Delete)

•	🏢 Department management

•	🔑 Role-based access control (Admin/Employee)

•	✅ Form validation & error handling

•	🔍 Search & filter employees

•	🎨 User-friendly JSP-based interface

•	💾 Database integration with Hibernate ORM
________________________________________
🛠 ### **Technologies Used**

•	Backend: Spring MVC, Hibernate, Java

•	Frontend: JSP, HTML, CSS

•	Database: MySQL

•	Build Tool: Maven

•	Server: Apache Tomcat
________________________________________
📂 ### **Project Structure**

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

________________________________________
🏆 ### **Challenges Faced**

•	⚙️ Configuration Issues – Initial setup of Spring MVC & Hibernate integration.

•	📝 Form Validation – Implemented custom annotations & error handling.

•	🔄 Session & Transaction Management – Ensured proper commit/rollback in Hibernate.

•	🔗 Frontend & Backend Integration – Debugged JSP + Controller mapping.

•	🚀 Deployment – Resolved Apache Tomcat errors (URL mappings, missing libs).
________________________________________
🔮 ### **Future Enhancements**

•	⏱ Employee attendance management

•	💰 Payroll module

•	🌐 REST API integration

•	🔒 JWT authentication & security
________________________________________
📸 ### **Screenshots**

🏠 #### **Welcome Page:**

<img width="1903" height="888" alt="Welcome Page" src="https://github.com/user-attachments/assets/aed3dd03-a636-4659-a359-bd5391503943" />

🔐 #### **Login Page:**

<img width="1845" height="856" alt="Login Page" src="https://github.com/user-attachments/assets/148232e1-22fd-4046-afa2-373d19e20fba" />

📝 #### **Employee Registration:**

<img width="1866" height="888" alt="Registration Page" src="https://github.com/user-attachments/assets/eda74245-32a3-4053-9e88-6dde617a2e03" />

✏️ #### **Employee Update:**

<img width="1906" height="881" alt="Updation Page" src="https://github.com/user-attachments/assets/a540a70b-573f-4fb9-b481-b2896cebdcf4" />

👥 #### **All Registered Employees:**

<img width="1907" height="878" alt="Registered Employees Page" src="https://github.com/user-attachments/assets/e8fdfaef-7ec9-4d57-b538-2d8eca5c6c23" />
