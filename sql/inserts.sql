INSERT INTO users(email, password_hash, username, first_name, last_name, phone_number) 
VALUES
('ps4demo@demomail.com', '$2a$06$XETrZw.eGA.eGA.eGA.eG.kn0uWg6gwkxjgJW/8QnQGP4wiBKaPVG', 'demo', 'Jeremie', 'Bornais', '4164164164')
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

INSERT INTO categories(name, colour_hex, description, user_id)
VALUES
-- user 1 categories
('Groceries', '2797B0', 'Food and other misc. groceries', 1),
('Rent', 'B662BF', 'Payment for rent', 1),
('Dining Out', 'EB7734', 'Eating out or takeout', 1),
('Miscellaneous', 'E6E287', 'Expenses that do not quite fit anywhere else', 1),
('Transportation', 'EB4034', 'Transportation related expenses', 1),
('Electronics', 'FFFF00', 'Phones, tablets, computers, etc.', 1),
('Car Insurance', 'ABE8A9', null, 1),
('Cell Phone Bill', 'D3EB34', null, 1)
;
COMMIT;

INSERT INTO merchants(name, description, user_id, default_category_id)
VALUES
-- user 1 merchants
('Walmart', null, 1, null),
('Loblaws', null, 1, 1),
('CIBC', 'My bank', 1, 4),
('Bell', 'Bell Canada mobile division', 1, 8)
;
COMMIT;
