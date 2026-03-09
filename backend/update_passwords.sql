USE neighborlink;
UPDATE users SET password='$2a$10$9Zi4CZL2VpWiLk2umtXN/urj7ZEo5vKo0Sf79XTjLrgurAIyyVyw6' WHERE email='arjun@demo.com';
UPDATE users SET password='$2a$10$9Zi4CZL2VpWiLk2umtXN/urj7ZEo5vKo0Sf79XTjLrgurAIyyVyw6' WHERE email='ramesh@demo.com';
UPDATE users SET password='$2a$10$9Zi4CZL2VpWiLk2umtXN/urj7ZEo5vKo0Sf79XTjLrgurAIyyVyw6' WHERE email='priya@demo.com';
UPDATE users SET password='$2a$10$9Zi4CZL2VpWiLk2umtXN/urj7ZEo5vKo0Sf79XTjLrgurAIyyVyw6' WHERE email='suresh@demo.com';
UPDATE users SET password='$2a$10$9Zi4CZL2VpWiLk2umtXN/urj7ZEo5vKo0Sf79XTjLrgurAIyyVyw6' WHERE email='meena@demo.com';
SELECT id, name, email, password FROM users WHERE id <= 5;
