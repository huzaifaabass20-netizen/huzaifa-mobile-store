# Huzaifa Mobile Store

[![Node.js](https://img.shields.io/badge/Node.js-18+-green.svg)](https://nodejs.org/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Render](https://img.shields.io/badge/Deployed%20on-Render-46e3b7.svg)](https://render.com)

A full-stack e-commerce platform for mobile phone retail, featuring a customer storefront, admin dashboard, payment integration, and order management system. Built with Node.js, Express, and MongoDB.

![Store Preview](https://via.placeholder.com/800x400/2563eb/ffffff?text=Huzaifa+Mobile+Store)

## Features

### Customer Storefront
- **Product Catalog**: Browse 12+ mobile phones with detailed specifications and images
- **Smart Search & Filter**: Find devices by brand, model, or specifications
- **Shopping Cart**: Add/remove items with persistent session storage
- **Secure Checkout**: Multi-step checkout with shipping information collection
- **Order Tracking**: Track order status without requiring user account
- **Order History**: View past purchases and download invoices
- **WhatsApp Integration**: Direct "Buy Now" option for instant inquiries

### Admin Dashboard
- **Analytics Overview**: Real-time revenue tracking, order statistics, and low-stock alerts
- **Product Management**: Add, edit, delete products with image upload support
- **Order Management**: View, process, and update order statuses
- **Store Settings**: Customize business information, currency (UGX), and contact details
- **Invoice Generation**: Automated PDF invoice creation for all orders

### Payment & Notifications
- **Flutterwave Integration**: Secure payment processing supporting:
  - MTN Mobile Money
  - Airtel Money
  - Credit/Debit Cards
  - Bank transfers
- **Email Automation**: 
  - Welcome emails for new customers
  - Order confirmation receipts
  - Shipping status updates

## Tech Stack

- **Backend**: Node.js, Express.js
- **Database**: MongoDB (Mongoose ODM)
- **Authentication**: JWT (JSON Web Tokens)
- **Payment Gateway**: Flutterwave API
- **Email Service**: Nodemailer (Gmail SMTP)
- **Template Engine**: EJS
- **Styling**: Tailwind CSS / Custom CSS
- **Deployment**: Render (Free Tier)

## Quick Start

### Prerequisites

- Node.js 18.x or higher
- MongoDB Atlas account (or local MongoDB instance)
- Gmail account (for email notifications)
- Flutterwave account (for payments)

### Local Development

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/huzaifa-mobile-store.git
   cd huzaifa-mobile-store
Install dependencies
bash
Copy
npm install
Environment Configuration
Create a .env file in the root directory:
env
Copy
# Server Configuration
PORT=3001
NODE_ENV=development

# Database
MONGODB_URI=mongodb+srv://username:password@cluster.mongodb.net/huzaifa-store

# Authentication
JWT_SECRET=your-super-secret-jwt-key-min-32-characters

# Email Configuration (Gmail SMTP)
EMAIL_USER=your-business-email@gmail.com
EMAIL_PASS=your-gmail-app-password

# Payment Gateway (Flutterwave)
FLUTTERWAVE_PUBLIC_KEY=FLWPUBK-xxxxxxxxxxxxxxxx-X
FLUTTERWAVE_SECRET_KEY=FLWSECK-xxxxxxxxxxxxxxxx-X

# Application URL
BASE_URL=http://localhost:3001
Start the server
bash
Copy
npm start
Access the application
Storefront: http://localhost:3001
Admin Panel: http://localhost:3001/admin
Deployment
Deploy on Render (Free)
Push to GitHub
Create a new repository
Upload all project files
Commit and push to main branch
Create Render Account
Sign up at render.com using GitHub
Click New + → Web Service
Select your repository
Configure Service
Table
Copy
Setting	Value
Build Command	npm install
Start Command	npm start
Environment	Node
Add Environment Variables
Add all variables from the .env example above, updating BASE_URL to your Render domain.
Deploy
Click Create Web Service
Wait for build to complete (~2-3 minutes)
Your store is now live!
Default Credentials
⚠️ Security Notice: Change these immediately after first login!
Table
Copy
Role	Email	Password
Administrator	admin@huzaifastore.com	admin123
Project Structure
plain
Copy
huzaifa-mobile-store/
├── config/                 # Database and service configurations
├── models/                 # Mongoose schemas (User, Product, Order)
├── routes/                 # Express route handlers
├── middleware/             # Authentication and validation middleware
├── public/                 # Static assets (CSS, JS, images)
├── views/                  # EJS templates
│   ├── partials/          # Reusable components (header, footer)
│   ├── customer/          # Storefront pages
│   └── admin/             # Dashboard pages
├── utils/                  # Helper functions (email, payments)
├── .env.example           # Environment variables template
├── package.json
└── server.js              # Application entry point
API Endpoints
Public Routes
GET / - Homepage with featured products
GET /products - Product catalog
GET /product/:id - Product details
POST /cart/add - Add to cart
POST /checkout - Process order
GET /track-order/:id - Order tracking
Admin Routes (Protected)
GET /admin - Dashboard overview
GET /admin/products - Product management
POST /admin/products/add - Create product
PUT /admin/products/:id - Update product
GET /admin/orders - Order management
PUT /admin/orders/:id/status - Update order status
Configuration Guide
Gmail App Password Setup
Enable 2-Factor Authentication on your Google account
Go to Google App Passwords
Generate new app password for "Mail"
Use this password in EMAIL_PASS (not your regular password)
Flutterwave Configuration
Create account at Flutterwave
Get API keys from Dashboard → Settings → API
For production, switch from Sandbox to Live mode
Configure webhook URL: https://your-domain.com/webhook/flutterwave
MongoDB Atlas Setup
Create cluster at MongoDB Atlas
Create database user with read/write permissions
Whitelist IP addresses (0.0.0.0/0 for all, or Render's IPs)
Copy connection string to MONGODB_URI
Business Information
Table
Copy
Detail	Value
Store Name	Huzaifa Mobile Store
Phone	+256 703 609 419
Email	huzaifaabass7@gmail.com
Currency	UGX (Ugandan Shilling)
Location	Kampala, Uganda
All business details are editable via Admin Dashboard → Settings
Contributing
Fork the repository
Create feature branch (git checkout -b feature/amazing-feature)
Commit changes (git commit -m 'Add amazing feature')
Push to branch (git push origin feature/amazing-feature)
Open Pull Request
License
This project is licensed under the MIT License - see the LICENSE file for details.
Support
For technical support or business inquiries:
Email: huzaifaabass7@gmail.com
Phone: +256 703 609 419
WhatsApp: Chat Now
<p align="center">Built with ❤️ by Huzaifa Abass</p>
```
This README includes:
✅ Professional badges for tech stack and deployment status
✅ Clear feature overview with customer/admin separation
✅ Step-by-step deployment guide for Render
✅ Security warnings about default credentials
✅ Complete setup instructions including all third-party services
✅ Project structure explanation
✅ API documentation
✅ Configuration guides for Gmail, Flutterwave, and MongoDB
✅ Business contact information
✅ Professional formatting with tables, code blocks, and emojis
