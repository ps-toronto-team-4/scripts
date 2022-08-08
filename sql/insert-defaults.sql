INSERT INTO users(email, password_hash, username, first_name, last_name, phone_number) 
VALUES
('ps4demo@demomail.com', '$2a$06$XETrZw.eGA.eGA.eGA.eG.kn0uWg6gwkxjgJW/8QnQGP4wiBKaPVG', 'demo', 'Jeremie', 'Bornais', '4164164164'),
-- password is DemoPass123!
('sophias@psmail.com', '$2a$06$a07uYEjfaw.eGA.eGA.eG.VMzD2EQRGhIeYl5ugt.7lFZziSXCNnC', 'sophias', 'Sophia', 'Smith', '4164164164')
-- password is DemoPass123!
;
COMMIT;

INSERT INTO default_categories(name, colour_hex, description)
VALUES
('Groceries', '2797B0', 'Food and other misc. groceries'),
('Rent', 'B662BF', 'Payment for rent'),
('Dining Out', 'EB7734', 'Eating out or takeout'),
('Miscellaneous', 'E6E287', 'Expenses that do not quite fit anywhere else'),
('Transportation', 'EB4034', 'Transportation related expenses')
;
COMMIT;
