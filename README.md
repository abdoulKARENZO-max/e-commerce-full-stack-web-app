# BookShopping App - Complete E-Commerce Platform

## 📖 Overview

**BookShopping App** is a full-featured e-commerce web application built with **ASP.NET Core MVC 9**, **Entity Framework Core**, and **SQL Server**. This project demonstrates a complete online book store implementation including user authentication, shopping cart functionality, order management, and an admin dashboard — all without payment gateway integration.

## 🚀 Key Features

### For Customers
- User registration & login using ASP.NET Core Identity
- Browse books by genre/category
- Add/remove books from shopping cart
- Update cart quantities dynamically
- Place orders with checkout form
- View order history with detailed summaries

### For Admins
- Secure admin authentication & authorization
- Manage book inventory (CRUD operations)
- Manage genres/categories
- View all customer orders
- Track top 5 bestselling books
- Dedicated admin panel dashboard

## 🛠️ Technology Stack

| Technology | Purpose |
|------------|---------|
| .NET Core 9 | Backend framework |
| ASP.NET Core MVC | Web application pattern |
| Entity Framework Core | ORM for database operations |
| SQL Server | Relational database |
| Bootstrap 5 + Bootswatch | Responsive UI styling |
| Vanilla JavaScript | Client-side interactions |
| ASP.NET Core Identity | User authentication & roles |

## 📁 Project Structure

The solution implements **Repository Pattern** for clean separation of concerns:
- `HomeRepository` - Book & genre listing
- `CartRepository` - Shopping cart logic
- `UserOrderRepository` - Order management

## 🔧 Setup Instructions

1. Clone the repository
2. Update connection string in `appsettings.json`
3. Run migrations: `Update-Database`
4. Seed admin user (see tutorial for details)
5. Run the application

## 📂 Source Code

- **Main Branch**: [GitHub Repository](https://github.com/abdoulKARENZO-max/e-commerce-full-stack-web-app.git)
- **Refactored Branch (Recommended)**: `refactored-2025` - Optimized repository implementations

---

> *Perfect for learning ASP.NET Core MVC, Entity Framework, Identity, and building real-world e-commerce applications from scratch.*
