INSERT INTO users(email, password_hash, username, first_name, last_name, phone_number) 
VALUES
('admin@gmail.com', '$2a$06$WUPrYU2eGA.eGA.eGA.eG.RlJXIm97FUjHFhtUnRKIdkPcTX5ihU2', 'admin', 'Jeremie', 'Bornais', '4164164164'),
-- password is AdminPass123!
('admin2@gmail.com', '$2a$06$WUPrYU2wGA.eGA.eGA.eG.ySMNQTQKikgq.XO3XB6S4C2.tWD0HWq', 'admin2', 'Calvin', 'Mozola', '4164164164')
-- password is AdminPass123!
;
COMMIT;

INSERT INTO default_categories(name, colour_hex, description)
VALUES
('Groceries', '5BEF007D', 'Food and other misc groceries'),
('Rent', '0018F2', 'Payment for rent'),
('Dining Out', 'FEC600', 'Eating out or takeout'),
('Loans', '97E2D5', 'Student loans, credit cards, etc.'),
('Transportation', '009418', 'Transportation related expenses')
;
COMMIT;

INSERT INTO categories(name, colour_hex, description, user_id)
VALUES
-- user 1 categories
('Groceries', '5BEF007D', 'Food and other misc groceries', 1),
('Rent', '0018F2', 'Payment for rent', 1),
('Dining Out', 'FEC600', 'Eating out or takeout', 1),
('Loans', '97E2D5', 'Student loans, credit cards, etc.', 1),
('Transportation', '009418', 'Transportation related expenses', 1),
('Electronics', 'C1A6FA', 'idk why I made this lol', 1),
('Car Insurance', 'FFC803', null, 1),
('Cell Phone Bill', 'EF7300', null, 1),
-- user 2 categories
('Groceries', '5BEF007D', 'Food and other misc groceries', 2),
('Rent', '0018F2', 'Payment for rent', 2),
('Dining Out', 'FEC600', 'Eating out or takeout', 2),
('Loans', '97E2D5', 'Student loans, credit cards, etc.', 2),
('Transportation', '009418', 'Transportation related expenses', 2),
('Electronics', 'C1A6FA', 'idk why I made this lol', 2),
('Car Insurance', 'FFC803', null, 2),
('Cell Phone Bill', 'EF7300', null, 2)
;
COMMIT;

INSERT INTO merchants(name, description, user_id, default_category_id)
VALUES
-- user 1 merchants
('Walmart', null, 1, null),
('Loblaws', null, 1, 1),
('CIBC', 'My bank', 1, 4),
('Bell', 'Bell Canada mobile division', 1, 8),
-- user 2 merchants
('Walmart', null, 2, null),
('Loblaws', null, 2, 9),
('CIBC', 'My bank', 2, 12),
('Bell', 'Bell Canada mobile division', 2, 16)
;
COMMIT;
