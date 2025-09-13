🚀 Spring Boot MVC CRUD Mini Project — Doctor Management System 🩺

I recently built a complete CRUD application using Spring Boot, Spring MVC, Spring Data JPA, and JSP to manage doctor records with full UI and database integration.

🔧 Key Features:

✅ Add / Edit / Delete / View Doctor Details

✅ JSP Forms with Spring <form:form> tag support

✅ Flash messages using RedirectAttributes and HttpSession

✅ Auto timestamps using @CreationTimestamp / @UpdateTimestamp

✅ Optimistic locking with @Version

✅ User tracking via createdBy & updatedBy metadata fields

✅ Clean, responsive JSP pages with custom CSS

💻 Tech Stack Used:
Spring Boot • Spring MVC • Spring Data JPA • JSP + JSTL + EL • MySQL / Oracle (Hibernate JDBC) • Embedded Tomcat Server

📦 Project Architecture:

Entity Layer – Annotated with @Entity, mapped to table MP_JPA_DOCTOR

VO Layer – Decouples entity from view logic

Controller Layer – Handles navigation, form data, and redirect logic

Service Layer – Business logic and validation

Repository Layer – Powered by JpaRepository

🎯 Learning Outcomes:

MVC Architecture in a real-world Spring Boot app

JSP integration with Spring Boot

CRUD operations with JPA and exception handling

HTML/CSS form design for better UI

Use of annotations like @Controller, @ModelAttribute, @Autowired, @PostMapping, @Version, and more

🛠 Error Handling:

Graceful fallback using custom error pages

Exception messages shown to user via pageContext.exception.message

📂 Source Code: GitHub Repository
