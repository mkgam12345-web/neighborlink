const express = require('express');
const cors = require('cors');
const path = require('path');
require('dotenv').config();

const app = express();
const PORT = process.env.PORT || 5000;

// Middleware
app.use(cors({ origin: '*', methods: ['GET','POST','PUT','PATCH','DELETE'], allowedHeaders: ['Content-Type','Authorization'] }));
app.use(express.json({ charset: 'utf-8' }));
app.use(express.urlencoded({ extended: true, charset: 'utf-8' }));

// Set UTF-8 charset for API responses only
app.use((req, res, next) => {
  if (req.path.startsWith('/api')) {
    res.setHeader('Content-Type', 'application/json; charset=utf-8');
  }
  next();
});

// Serve frontend static files
app.use(express.static(path.join(__dirname, '../frontend')));

// API Routes
app.use('/api/auth', require('./routes/auth'));
app.use('/api/services', require('./routes/services'));
app.use('/api/bookings', require('./routes/bookings'));

// Health check
app.get('/api/health', (req, res) => res.json({ status: 'OK', service: 'NeighborLink API', timestamp: new Date() }));

// Fallback to index.html for SPA routing
app.get('*', (req, res) => {
  if (!req.path.startsWith('/api')) {
    res.sendFile(path.join(__dirname, '../frontend/index.html'));
  }
});

app.listen(PORT, () => {
  console.log(`\n🚀 NeighborLink Server running on http://localhost:${PORT}`);
  console.log(`📊 API available at http://localhost:${PORT}/api`);
  console.log(`\n📋 Setup: Import backend/config/schema.sql into MySQL first`);
  console.log(`📝 Demo login: arjun@demo.com / password123 (user)`);
  console.log(`📝 Demo login: ramesh@demo.com / password123 (provider)\n`);
});

module.exports = app;

// filepath: c:\Local\neighborlink\frontend\js\api.js
const API_BASE = 'http://localhost:5000'; // Change 5000 to your actual backend port
