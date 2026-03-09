-- Fix demo user passwords with correct bcrypt hash for "password123"
UPDATE users SET password='$2a$10$4kEmfyzUm.jz/aB0HoUIougPumUYO.8WiuTEXwWLrlZ6hNsgDlMuK' WHERE email='arjun@demo.com';
UPDATE users SET password='$2a$10$4kEmfyzUm.jz/aB0HoUIougPumUYO.8WiuTEXwWLrlZ6hNsgDlMuK' WHERE email='ramesh@demo.com';
UPDATE users SET password='$2a$10$4kEmfyzUm.jz/aB0HoUIougPumUYO.8WiuTEXwWLrlZ6hNsgDlMuK' WHERE email='priya@demo.com';
UPDATE users SET password='$2a$10$4kEmfyzUm.jz/aB0HoUIougPumUYO.8WiuTEXwWLrlZ6hNsgDlMuK' WHERE email='suresh@demo.com';
UPDATE users SET password='$2a$10$4kEmfyzUm.jz/aB0HoUIougPumUYO.8WiuTEXwWLrlZ6hNsgDlMuK' WHERE email='meena@demo.com';

SELECT id, email, role, password FROM users WHERE id <= 5;
