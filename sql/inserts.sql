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

INSERT INTO categories(name, colour_hex, description, user_id)
VALUES
-- user 1 categories
('Groceries', '2797B0', 'Food and other misc. groceries', 1), --1
('Rent', 'B662BF', 'Payment for rent', 1), --2
('Dining Out', 'EB7734', 'Eating out or takeout', 1), --3
('Miscellaneous', 'E6E287', 'Expenses that do not quite fit anywhere else', 1), --4
('Transportation', 'EB4034', 'Transportation related expenses', 1), --5
('Electronics', 'FFFF00', 'Phones, tablets, computers, etc.', 1), --6
('Car Insurance', 'ABE8A9', null, 1), --7
('Cell Phone Bill', 'D3EB34', null, 1)  --8
,
-- user 2 categories
('Groceries', '2797B0', 'Food and other misc. groceries', 2), --9
('Rent', 'B662BF', 'Payment for rent', 2), --10
('Dining Out', 'EB7734', 'Eating out or takeout', 2), --11
('Miscellaneous', 'E6E287', 'Expenses that do not quite fit anywhere else', 2), --12
('Transportation', 'EB4034', 'Transportation related expenses', 2), --13
('Electronics', 'FFFF00', 'Phones, tablets, computers, etc.', 2), --14
('Car Insurance', 'ABE8A9', null, 2), --15
('Cell Phone Bill', 'D3EB34', null, 2)  --16
;
COMMIT;

INSERT INTO merchants(name, description, user_id, default_category_id)
VALUES
-- user 1 merchants
('Walmart', null, 1, null), --1
('Loblaws', null, 1, 1), --2
('CIBC', 'My bank', 1, 4), --3
('Bell', 'Bell Canada mobile division', 1, 8) --4
,
-- user 2 merchants
('Walmart', null, 2, null), --5
('Loblaws', null, 2, 1), --6
('CIBC', 'My bank', 2, 4), --7
('Bell', 'Bell Canada mobile division', 2, 8) --8
;
COMMIT;
