INSERT INTO users(id, email, password_hash, username, first_name, last_name, phone_number) 
VALUES
(1, 'admin@gmail.com', '$2a$06$WUPrYU2eGA.eGA.eGA.eG.RlJXIm97FUjHFhtUnRKIdkPcTX5ihU2', 'admin', 'Jeremie', 'Bornais', '4164164164') --1
-- password is AdminPass123!
;
COMMIT;

INSERT INTO default_categories(id, name, colour_hex, description)
VALUES
(1, 'Groceries', '5BEF007D', 'Food and other misc groceries'),
(2, 'Rent', '0018F2', 'Payment for rent'),
(3, 'Dining Out', 'FEC600', 'Eating out or takeout'),
(4, 'Loans', '97E2D5', 'Student loans, credit cards, etc.'),
(5, 'Transportation', '009418', 'Transportation related expenses')
;
COMMIT;

INSERT INTO categories(id, name, colour_hex, description, user_id)
VALUES
(1, 'Groceries', '5BEF007D', 'Food and other misc groceries', 1),
(2, 'Rent', '0018F2', 'Payment for rent', 1),
(3, 'Dining Out', 'FEC600', 'Eating out or takeout', 1),
(4, 'Loans', '97E2D5', 'Student loans, credit cards, etc.', 1),
(5, 'Transportation', '009418', 'Transportation related expenses', 1),
(6, 'Electronics', 'C1A6FA', 'idk why I made this lol', 1),
(7, 'Car Insurance', 'FFC803', null, 1),
(8, 'Cell Phone Bill', 'EF7300', null, 1)
;
COMMIT;

INSERT INTO merchants(id, name, description, user_id, default_category_id)
VALUES
(1, 'Walmart', null, 1, null),
(2, 'Loblaws', null, 1, 1),
(3, 'CIBC', 'My bank', 1, 4),
(4, 'Bell', 'Bell Canada mobile division', 1, 8)
;
COMMIT;

INSERT INTO expenses(id, title, amount, date, user_id, description, category_id, merchant_id, recurrence_id)
VALUES
(1, 'Test Expense', 12.56, '2022-02-01', 1, null, null, null, null)
;
COMMIT;

