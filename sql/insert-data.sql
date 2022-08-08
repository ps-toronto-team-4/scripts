INSERT INTO categories(name, colour_hex, description, user_id)
VALUES
('Groceries', '2797B0', 'Food and other misc. groceries', 1),
('Rent', 'B662BF', 'Payment for rent', 1),
('Dining Out', 'EB7734', 'Eating out or takeout', 1),
('Miscellaneous', 'E6E287', 'Expenses that do not quite fit anywhere else', 1),
('Transportation', 'EB4034', 'Transportation related expenses', 1),
('Electronics', 'FFFF00', 'Phones, tablets, computers, etc.', 1),
('Car Insurance', 'ABE8A9', null, 1),
('Cell Phone Bill', 'D3EB34', null, 1);
COMMIT;
INSERT INTO merchants(name, description, user_id, default_category_id)
VALUES
('Walmart', null, 1, null),
('Loblaws', null, 1, 1),
('CIBC', 'My bank', 1, 4),
('Bell', 'Bell Canada mobile division', 1, 8);
COMMIT;
INSERT INTO expenses(amount, date, user_id, description, category_id, merchant_id, recurrence_id)
VALUES(77.17, '2022-01-02', 1, null, 7, null, null),
(74.89, '2022-01-06', 1, 'Est adipisci eius etincidunt adipisci amet sit labore', 4, 1, null),
(103.4, '2022-01-07', 1, null, 7, 3, null),
(66.72, '2022-01-07', 1, null, 4, 1, null),
(88.89, '2022-01-07', 1, null, 6, 2, null),
(30.2, '2022-01-11', 1, 'Porro sed eius sed magnam eius magnam etincidunt', 3, 2, null),
(59.09, '2022-01-11', 1, 'Magnam aliquam adipisci velit dolorem amet', null, 3, null),
(17.17, '2022-01-11', 1, 'Labore adipisci etincidunt modi quisquam', 5, 2, null),
(63.03, '2022-01-11', 1, 'Magnam non eius eius eius magnam amet est est etincidunt', 5, null, null),
(69.67, '2022-01-11', 1, 'Ipsum quisquam sed sit ipsum', 7, 2, null),
(92.82, '2022-01-12', 1, 'Velit amet tempora aliquam ipsum labore sit consectetur voluptatem eius', 5, 1, null),
(90.96, '2022-01-18', 1, null, 7, 3, null),
(124.77, '2022-01-18', 1, null, 3, 2, null),
(57.01, '2022-01-20', 1, null, 5, 1, null),
(117.68, '2022-01-20', 1, null, 2, 2, null),
(43.19, '2022-01-20', 1, 'Numquam sit sit numquam dolorem', null, 2, null),
(31.77, '2022-01-21', 1, null, 6, 4, null),
(41.35, '2022-01-21', 1, null, 1, 4, null),
(78.87, '2022-01-21', 1, null, 2, 1, null),
(121.43, '2022-01-21', 1, null, 2, 1, null),
(61.48, '2022-01-22', 1, null, 2, 1, null),
(104.42, '2022-01-27', 1, null, 6, 1, null),
(87.18, '2022-01-27', 1, 'Voluptatem numquam velit consectetur porro', 8, 2, null),
(100.32, '2022-01-27', 1, 'Voluptatem dolore quaerat consectetur', 7, null, null),
(54.08, '2022-01-27', 1, 'Modi ipsum adipisci magnam', 6, 1, null),
(22.27, '2022-02-02', 1, null, 8, null, null),
(121.48, '2022-02-02', 1, 'Velit est voluptatem ut sit velit labore', 2, 4, null),
(76.52, '2022-02-02', 1, null, 5, 4, null),
(92.24, '2022-02-02', 1, null, 5, 2, null),
(33.34, '2022-02-09', 1, null, 1, 4, null),
(103.93, '2022-02-11', 1, 'Ipsum numquam adipisci aliquam sit voluptatem ipsum magnam eius dolore', 1, 1, null),
(14.5, '2022-02-11', 1, 'Quiquia velit etincidunt etincidunt quaerat adipisci', 1, null, null),
(46.07, '2022-02-19', 1, null, 4, null, null),
(33.55, '2022-02-19', 1, 'Labore quaerat non velit consectetur quisquam non', 6, 1, null),
(113.8, '2022-02-19', 1, 'Dolore adipisci amet etincidunt dolor modi dolorem quiquia ipsum', 7, 1, null),
(94.39, '2022-02-19', 1, 'Quaerat dolore dolor ipsum numquam amet est', 4, 1, null),
(90.39, '2022-02-21', 1, null, 7, null, null),
(55.34, '2022-02-21', 1, null, 2, 1, null),
(111.45, '2022-02-21', 1, null, 8, 4, null),
(83.16, '2022-02-21', 1, null, null, null, null),
(103.33, '2022-02-21', 1, 'Quaerat quiquia labore adipisci adipisci quisquam est voluptatem', 1, 4, null),
(35.55, '2022-02-23', 1, null, 7, 3, null),
(30.48, '2022-02-23', 1, 'Neque voluptatem adipisci non voluptatem labore neque labore consectetur', 1, 1, null),
(114.23, '2022-02-23', 1, 'Quiquia ut consectetur consectetur est quisquam porro', null, 2, null),
(41.07, '2022-02-24', 1, null, 5, 2, null),
(67.77, '2022-03-02', 1, 'Dolorem modi dolorem quisquam etincidunt etincidunt ipsum velit porro', null, 4, null),
(15.4, '2022-03-05', 1, null, 5, null, null),
(120.31, '2022-03-05', 1, null, 8, 2, null),
(87.05, '2022-03-05', 1, 'Ipsum consectetur neque quaerat consectetur', null, null, null),
(63.55, '2022-03-12', 1, 'Porro etincidunt amet quisquam consectetur quiquia magnam dolor dolor ipsum', 8, null, null),
(13.77, '2022-03-12', 1, null, 1, 2, null),
(16.52, '2022-03-12', 1, null, 4, null, null),
(78.46, '2022-03-12', 1, null, 6, 4, null),
(25.75, '2022-03-12', 1, null, 1, 1, null),
(109.45, '2022-03-15', 1, 'Quiquia etincidunt adipisci eius velit tempora sit velit quaerat', 1, 1, null),
(120.89, '2022-03-20', 1, 'Eius amet numquam quiquia dolor voluptatem', 4, 2, null),
(37.67, '2022-03-20', 1, null, 1, 4, null),
(54.79, '2022-03-20', 1, 'Amet sed consectetur non labore est', 4, null, null),
(33.78, '2022-03-21', 1, 'Non magnam ipsum numquam tempora numquam quiquia', 6, 1, null),
(54.82, '2022-03-21', 1, null, 5, 1, null),
(28.18, '2022-03-21', 1, null, 5, 4, null),
(39.0, '2022-03-21', 1, 'Voluptatem ut sit labore sed etincidunt sit modi neque', 5, 2, null),
(70.22, '2022-03-21', 1, 'Amet voluptatem labore sit ut tempora sit modi velit ipsum', 3, 1, null),
(27.63, '2022-03-27', 1, 'Adipisci velit quiquia est etincidunt modi', null, null, null),
(102.88, '2022-03-27', 1, null, 6, null, null),
(55.67, '2022-04-05', 1, 'Etincidunt ut modi aliquam magnam porro quisquam', 5, 3, null),
(74.57, '2022-04-05', 1, null, 1, 2, null),
(53.82, '2022-04-09', 1, null, 1, null, null),
(61.79, '2022-04-09', 1, null, 2, 2, null),
(106.14, '2022-04-09', 1, null, 6, 4, null),
(84.23, '2022-04-09', 1, null, 4, 3, null),
(97.29, '2022-04-09', 1, 'Tempora aliquam dolor quiquia dolore velit dolorem dolore modi tempora', 6, 3, null),
(117.95, '2022-04-11', 1, 'Non sed consectetur neque', 8, 1, null),
(20.31, '2022-04-11', 1, 'Sed velit modi adipisci dolorem', 3, 1, null),
(83.35, '2022-04-11', 1, null, 7, 4, null),
(30.04, '2022-04-11', 1, 'Amet modi tempora ipsum numquam amet etincidunt', 8, 3, null),
(28.33, '2022-04-23', 1, null, 3, 4, null),
(24.8, '2022-04-23', 1, 'Etincidunt quisquam porro modi consectetur', 5, 3, null),
(103.33, '2022-04-23', 1, 'Amet voluptatem neque eius dolore non tempora ut', 4, 4, null),
(63.87, '2022-04-23', 1, 'Est labore labore sed ipsum sit consectetur', 4, 2, null),
(45.39, '2022-04-23', 1, null, null, 3, null),
(109.63, '2022-05-01', 1, 'Sed aliquam amet tempora labore magnam est quisquam', 4, 2, null),
(55.56, '2022-05-01', 1, null, 5, 2, null),
(114.45, '2022-05-01', 1, 'Magnam numquam porro neque dolorem', 3, 4, null),
(15.31, '2022-05-01', 1, 'Sed tempora tempora dolorem dolore voluptatem', 4, 4, null),
(14.9, '2022-05-01', 1, null, 8, 3, null),
(105.34, '2022-05-02', 1, 'Amet dolor quaerat consectetur', 8, null, null),
(80.07, '2022-05-02', 1, null, 8, 4, null),
(96.51, '2022-05-02', 1, 'Velit modi labore sed quisquam sit quaerat quisquam aliquam', 8, 3, null),
(34.84, '2022-05-03', 1, null, 3, 4, null),
(16.26, '2022-05-03', 1, null, 3, 4, null),
(68.49, '2022-05-03', 1, 'Est magnam consectetur sit est aliquam', 8, 2, null),
(107.87, '2022-05-04', 1, 'Dolorem aliquam dolorem tempora etincidunt quaerat adipisci sit consectetur quiquia', 2, 4, null),
(51.5, '2022-05-10', 1, 'Dolore voluptatem neque voluptatem', 2, 4, null),
(41.61, '2022-05-18', 1, null, 6, null, null),
(69.37, '2022-05-18', 1, 'Quiquia modi magnam quaerat eius magnam ipsum', 1, 4, null),
(46.2, '2022-05-19', 1, null, null, 4, null),
(109.66, '2022-05-19', 1, null, 4, 2, null),
(30.87, '2022-05-21', 1, 'Amet quiquia velit quaerat', 6, 1, null),
(24.76, '2022-05-27', 1, 'Amet quaerat numquam quisquam tempora dolore sed ipsum', 5, 1, null),
(100.04, '2022-05-27', 1, null, 3, 3, null),
(67.79, '2022-05-27', 1, 'Consectetur sit quisquam ipsum magnam etincidunt', 5, 2, null),
(120.98, '2022-06-04', 1, 'Porro etincidunt voluptatem eius est quisquam consectetur aliquam', 8, 2, null),
(14.02, '2022-06-08', 1, null, 1, 4, null),
(99.52, '2022-06-08', 1, null, 3, 4, null),
(19.67, '2022-06-08', 1, null, 3, 1, null),
(75.73, '2022-06-08', 1, null, 1, 1, null),
(54.08, '2022-06-09', 1, 'Dolor consectetur aliquam modi tempora quaerat', 4, 1, null),
(122.04, '2022-06-09', 1, null, 4, 3, null),
(79.1, '2022-06-09', 1, 'Quaerat est ut numquam', 7, 3, null),
(78.29, '2022-06-09', 1, 'Tempora dolorem dolore amet', 2, 4, null),
(22.47, '2022-06-13', 1, 'Neque dolor dolore consectetur dolorem ut', 8, 1, null),
(25.24, '2022-06-13', 1, 'Numquam aliquam ut etincidunt quisquam voluptatem sed sed voluptatem sit', 2, 1, null),
(91.36, '2022-06-13', 1, 'Dolorem neque etincidunt dolor quaerat sit', 1, 4, null),
(63.04, '2022-06-13', 1, null, 8, 3, null),
(16.53, '2022-06-14', 1, 'Tempora magnam modi etincidunt adipisci tempora quiquia numquam eius', 5, 3, null),
(110.92, '2022-06-14', 1, null, 6, 2, null),
(37.69, '2022-06-14', 1, 'Eius eius dolorem voluptatem sit', 2, 3, null),
(93.41, '2022-06-14', 1, null, 1, 4, null),
(82.96, '2022-06-14', 1, 'Quisquam voluptatem dolore dolore est quaerat', 2, 4, null),
(80.97, '2022-06-18', 1, 'Adipisci est labore adipisci adipisci sit', 3, 4, null),
(87.73, '2022-06-18', 1, 'Consectetur consectetur non labore quiquia amet dolore', 7, 2, null),
(100.93, '2022-06-19', 1, 'Dolor quisquam ut dolor aliquam quisquam', null, 1, null),
(76.86, '2022-06-24', 1, 'Ut voluptatem non dolorem eius etincidunt dolor voluptatem ut dolorem', null, 3, null),
(71.47, '2022-06-24', 1, null, 2, 2, null),
(71.96, '2022-06-24', 1, null, 6, 3, null),
(27.9, '2022-06-24', 1, 'Est porro est magnam ut aliquam quiquia consectetur', 5, 3, null),
(74.83, '2022-06-27', 1, 'Porro neque voluptatem velit', 2, 2, null),
(120.87, '2022-06-27', 1, null, 7, 3, null),
(80.91, '2022-07-03', 1, null, 2, 4, null),
(108.07, '2022-07-03', 1, null, 4, 3, null),
(84.86, '2022-07-03', 1, null, 5, 3, null),
(114.06, '2022-07-03', 1, null, 4, 3, null),
(81.37, '2022-07-03', 1, 'Est non amet consectetur', 5, 3, null),
(35.63, '2022-07-06', 1, null, 8, 1, null),
(17.49, '2022-07-06', 1, 'Magnam quaerat quaerat eius dolore sed', null, 3, null),
(21.2, '2022-07-15', 1, null, 7, 1, null),
(83.78, '2022-07-15', 1, null, null, 2, null),
(102.34, '2022-07-15', 1, null, 2, 3, null),
(34.99, '2022-07-18', 1, null, 8, 2, null),
(79.42, '2022-08-06', 1, null, 1, 1, null),
(97.57, '2022-08-06', 1, 'Est tempora consectetur amet non etincidunt quaerat etincidunt dolor velit', 5, 3, null),
(77.88, '2022-08-06', 1, 'Numquam modi modi non eius sed ipsum non ipsum', 4, 3, null)
;
COMMIT;
INSERT INTO budgets(month, year, user_id)
VALUES
(0, 2022, 1),
(1, 2022, 1),
(2, 2022, 1),
(3, 2022, 1),
(4, 2022, 1),
(5, 2022, 1),
(6, 2022, 1),
(7, 2022, 1)
;
COMMIT;
INSERT INTO budget_categories(amount, budget_id, category_id, user_id)
VALUES
(565.86, 1, 1, 1),
(699.82, 1, 2, 1),
(574.16, 1, 4, 1),
(546.9, 1, 5, 1),
(925.95, 1, 7, 1),
(344.76, 2, 2, 1),
(940.71, 2, 8, 1),
(428.73, 3, 2, 1),
(348.06, 3, 5, 1),
(473.51, 3, 6, 1),
(256.23, 4, 1, 1),
(169.02, 4, 2, 1),
(787.37, 4, 3, 1),
(493.27, 4, 4, 1),
(514.12, 4, 5, 1),
(690.71, 4, 6, 1),
(775.92, 4, 7, 1),
(825.01, 5, 1, 1),
(797.91, 5, 4, 1),
(258.2, 6, 1, 1),
(694.64, 6, 3, 1),
(417.02, 6, 4, 1),
(318.17, 6, 6, 1),
(344.16, 7, 2, 1),
(734.54, 7, 4, 1),
(203.25, 7, 5, 1),
(747.09, 7, 7, 1),
(783.26, 7, 8, 1),
(571.64, 8, 1, 1),
(419.72, 8, 2, 1),
(332.6, 8, 5, 1),
(131.27, 8, 6, 1),
(628.46, 8, 7, 1),
(485.14, 8, 8, 1)
;
COMMIT;
INSERT INTO categories(name, colour_hex, description, user_id)
VALUES
('Groceries', '2797B0', 'Food and other misc. groceries', 2),
('Rent', 'B662BF', 'Payment for rent', 2),
('Dining Out', 'EB7734', 'Eating out or takeout', 2),
('Miscellaneous', 'E6E287', 'Expenses that do not quite fit anywhere else', 2),
('Transportation', 'EB4034', 'Transportation related expenses', 2),
('Electronics', 'FFFF00', 'Phones, tablets, computers, etc.', 2),
('Car Insurance', 'ABE8A9', null, 2),
('Cell Phone Bill', 'D3EB34', null, 2);
COMMIT;
INSERT INTO merchants(name, description, user_id, default_category_id)
VALUES
('Walmart', null, 2, null),
('Loblaws', null, 2, 9),
('CIBC', 'My bank', 2, 12),
('Bell', 'Bell Canada mobile division', 2, 16);
COMMIT;
INSERT INTO expenses(amount, date, user_id, description, category_id, merchant_id, recurrence_id)
VALUES(45.73, '2022-01-02', 2, null, 14, 7, null),
(17.66, '2022-01-02', 2, null, 12, 7, null),
(15.54, '2022-01-02', 2, null, 9, 5, null),
(42.32, '2022-01-16', 2, 'Quisquam dolorem modi magnam modi est neque non labore', 10, 8, null),
(99.47, '2022-01-16', 2, null, 14, 8, null),
(96.78, '2022-01-16', 2, 'Sed labore dolore numquam', null, 8, null),
(14.51, '2022-01-16', 2, null, 10, 7, null),
(73.78, '2022-01-18', 2, 'Est eius ut quisquam voluptatem sit quisquam numquam quaerat', 10, 5, null),
(24.06, '2022-01-18', 2, null, 12, 5, null),
(43.71, '2022-01-18', 2, 'Aliquam dolore quisquam consectetur sed ut quiquia neque quiquia velit', 10, 8, null),
(59.08, '2022-01-18', 2, null, 16, null, null),
(66.36, '2022-01-18', 2, 'Dolore voluptatem numquam adipisci adipisci sed', null, null, null),
(29.53, '2022-01-20', 2, 'Aliquam quisquam non sit', null, 7, null),
(12.42, '2022-01-20', 2, 'Velit quiquia neque ipsum labore', 16, 5, null),
(15.26, '2022-01-20', 2, null, 16, 7, null),
(51.2, '2022-01-20', 2, 'Etincidunt porro sed magnam', 16, 5, null),
(91.47, '2022-01-26', 2, 'Neque eius sit labore eius sit adipisci modi dolor', 15, 5, null),
(79.42, '2022-01-26', 2, null, null, 5, null),
(44.56, '2022-01-26', 2, 'Quiquia porro non ipsum non sit', 14, 7, null),
(38.1, '2022-02-10', 2, 'Tempora non est quaerat quiquia dolore modi amet dolore', 16, 7, null),
(93.57, '2022-02-10', 2, 'Est ipsum tempora porro dolore', 9, null, null),
(104.67, '2022-02-10', 2, 'Labore labore eius aliquam tempora adipisci aliquam quiquia porro quaerat', 16, 7, null),
(46.9, '2022-02-10', 2, 'Velit dolore est non dolore aliquam magnam dolore', 15, null, null),
(107.63, '2022-02-12', 2, 'Ut adipisci quiquia quiquia non dolorem sed dolorem', 13, 7, null),
(114.16, '2022-02-12', 2, null, 13, 6, null),
(36.04, '2022-02-12', 2, 'Neque sed magnam dolorem est quaerat', 13, 5, null),
(52.53, '2022-02-12', 2, null, 11, 7, null),
(104.03, '2022-02-17', 2, 'Labore ipsum quaerat consectetur sit quisquam magnam', null, null, null),
(85.32, '2022-02-17', 2, null, null, 5, null),
(104.49, '2022-02-17', 2, null, 10, 5, null),
(87.13, '2022-02-17', 2, null, 10, 5, null),
(79.71, '2022-02-17', 2, 'Tempora modi quaerat voluptatem amet ut dolorem labore etincidunt est', 15, 5, null),
(62.37, '2022-02-18', 2, null, 14, 8, null),
(112.18, '2022-02-18', 2, 'Velit ut etincidunt labore', 13, null, null),
(62.25, '2022-02-18', 2, 'Aliquam consectetur est non voluptatem dolor velit quiquia sit', 10, null, null),
(117.29, '2022-02-18', 2, 'Dolor sit quisquam labore', 16, 5, null),
(50.96, '2022-02-18', 2, 'Etincidunt aliquam eius ipsum', 13, null, null),
(19.42, '2022-02-20', 2, 'Porro tempora est labore voluptatem quiquia quiquia amet sit ipsum', 13, 7, null),
(67.84, '2022-02-21', 2, 'Tempora labore labore est porro', 12, 7, null),
(90.75, '2022-02-21', 2, null, 15, 6, null),
(35.92, '2022-02-21', 2, 'Neque sit ut dolor non labore etincidunt quaerat magnam', 11, 8, null),
(117.49, '2022-02-22', 2, 'Consectetur est ipsum eius eius quiquia neque aliquam', 15, 8, null),
(104.69, '2022-02-22', 2, null, 15, 7, null),
(33.75, '2022-02-22', 2, 'Porro velit dolor est est modi neque aliquam sed adipisci', 16, null, null),
(124.9, '2022-02-26', 2, null, null, 6, null),
(28.31, '2022-02-27', 2, null, 9, 5, null),
(41.04, '2022-03-04', 2, 'Eius quaerat magnam est etincidunt quiquia velit', 16, 6, null),
(121.84, '2022-03-04', 2, null, 13, null, null),
(56.94, '2022-03-04', 2, 'Velit est sit etincidunt quaerat neque adipisci quaerat numquam velit', 14, 6, null),
(44.32, '2022-03-04', 2, null, 9, 7, null),
(34.82, '2022-03-08', 2, 'Consectetur ut amet quiquia amet consectetur', 9, 6, null),
(100.13, '2022-03-08', 2, 'Est ipsum neque amet non eius ipsum magnam adipisci dolore', 16, null, null),
(66.46, '2022-03-08', 2, null, null, 7, null),
(58.19, '2022-04-10', 2, null, 9, 8, null),
(12.83, '2022-04-10', 2, null, 10, 5, null),
(123.74, '2022-04-10', 2, 'Voluptatem ipsum est sit ut dolorem quisquam numquam voluptatem', 10, null, null),
(15.4, '2022-04-13', 2, null, 14, null, null),
(61.86, '2022-04-13', 2, 'Adipisci dolore porro quisquam est etincidunt etincidunt labore labore amet', 10, 5, null),
(77.73, '2022-04-13', 2, 'Aliquam quisquam tempora voluptatem dolorem aliquam est non porro', 12, null, null),
(112.82, '2022-04-13', 2, null, 12, 5, null),
(122.15, '2022-04-16', 2, 'Consectetur quisquam tempora adipisci dolor sit numquam', null, 5, null),
(98.49, '2022-04-16', 2, null, 11, 6, null),
(108.22, '2022-04-16', 2, null, 16, null, null),
(67.9, '2022-04-16', 2, 'Dolorem non labore consectetur', 9, 7, null),
(76.84, '2022-04-23', 2, 'Etincidunt consectetur eius adipisci neque porro modi', null, 7, null),
(40.23, '2022-04-23', 2, 'Sit eius porro dolor porro velit aliquam numquam', 16, 7, null),
(67.1, '2022-04-23', 2, null, 11, 5, null),
(40.19, '2022-04-23', 2, 'Est aliquam voluptatem labore est voluptatem quaerat quisquam dolore dolor', 15, 7, null),
(45.57, '2022-04-26', 2, 'Tempora sit quiquia dolor est amet quaerat sed', 13, 5, null),
(30.86, '2022-04-26', 2, 'Quiquia sed labore dolorem labore dolorem porro etincidunt quisquam dolor', 13, null, null),
(100.53, '2022-04-26', 2, null, null, 8, null),
(69.37, '2022-04-28', 2, null, 10, 5, null),
(21.73, '2022-04-28', 2, null, null, null, null),
(95.75, '2022-04-28', 2, 'Dolore porro velit magnam', 11, 8, null),
(70.91, '2022-05-05', 2, 'Consectetur sit porro non amet quaerat consectetur', 12, 7, null),
(66.07, '2022-05-05', 2, 'Amet dolorem aliquam est quisquam non modi', 15, null, null),
(110.98, '2022-05-05', 2, null, 11, 6, null),
(95.34, '2022-05-05', 2, 'Amet est est est etincidunt eius', 13, null, null),
(37.82, '2022-05-07', 2, null, 9, 8, null),
(75.67, '2022-05-07', 2, null, 11, 7, null),
(98.75, '2022-05-07', 2, null, 16, 6, null),
(104.21, '2022-05-07', 2, null, null, 5, null),
(89.47, '2022-05-15', 2, null, 10, 7, null),
(20.21, '2022-05-24', 2, 'Neque neque quaerat porro dolor dolor', null, 6, null),
(11.74, '2022-05-24', 2, null, 10, null, null),
(78.25, '2022-05-24', 2, null, 10, 7, null),
(19.13, '2022-06-12', 2, 'Amet consectetur tempora ut dolor', 12, 6, null),
(36.58, '2022-06-12', 2, 'Quaerat non ipsum aliquam tempora quiquia adipisci labore dolorem quisquam', 9, 8, null),
(102.67, '2022-06-13', 2, 'Dolorem numquam modi labore numquam ut velit numquam', 12, 6, null),
(56.26, '2022-06-13', 2, 'Dolore etincidunt etincidunt velit quiquia numquam consectetur', 12, 5, null),
(105.43, '2022-06-16', 2, null, 14, 8, null),
(65.54, '2022-06-19', 2, 'Neque dolore amet sed quisquam quisquam sed dolorem dolore', 12, 6, null),
(97.72, '2022-06-19', 2, 'Labore tempora est quisquam tempora sed est eius', null, 7, null),
(66.9, '2022-06-19', 2, null, 12, null, null),
(16.52, '2022-06-19', 2, null, 13, 8, null),
(122.55, '2022-06-19', 2, 'Modi magnam ipsum eius quiquia non', 13, 5, null),
(37.87, '2022-07-02', 2, 'Quaerat aliquam adipisci ipsum adipisci eius eius sit neque quisquam', 12, 8, null),
(34.08, '2022-07-02', 2, null, 9, 6, null),
(63.3, '2022-07-02', 2, 'Non ut dolorem ipsum neque eius', 13, 6, null),
(87.72, '2022-07-02', 2, 'Ut sit modi sit quiquia', 11, 5, null),
(69.29, '2022-07-02', 2, 'Magnam numquam voluptatem eius dolor ipsum sit dolorem', 16, 5, null),
(58.19, '2022-07-05', 2, null, 12, 8, null),
(108.92, '2022-07-05', 2, 'Magnam neque dolor velit neque sit modi dolor dolorem ut', 9, 5, null),
(53.0, '2022-07-24', 2, 'Non quisquam sed velit', 16, null, null),
(86.99, '2022-07-24', 2, null, 13, null, null),
(34.95, '2022-07-24', 2, null, 9, 5, null),
(87.08, '2022-07-24', 2, 'Quaerat voluptatem amet magnam consectetur numquam neque sed porro', 10, 8, null),
(94.31, '2022-08-02', 2, null, 14, 6, null),
(79.07, '2022-08-02', 2, 'Etincidunt dolorem etincidunt dolorem', 12, 7, null),
(55.37, '2022-08-02', 2, 'Est ipsum neque sit sit labore ipsum dolor quiquia', 13, 7, null),
(45.64, '2022-08-03', 2, 'Aliquam modi ut voluptatem tempora dolor etincidunt porro adipisci labore', 11, 8, null),
(87.03, '2022-08-03', 2, 'Dolorem quisquam porro adipisci ipsum est dolore dolore labore', 14, 5, null),
(13.38, '2022-08-05', 2, 'Quisquam sit neque aliquam sit velit', 11, 5, null),
(93.03, '2022-08-05', 2, null, 11, 6, null),
(72.91, '2022-08-05', 2, null, 11, null, null),
(73.33, '2022-08-05', 2, 'Quiquia non ut adipisci magnam magnam consectetur ut ipsum sed', 10, 8, null),
(122.01, '2022-08-12', 2, 'Quisquam ipsum etincidunt dolorem etincidunt', 11, null, null)
;
COMMIT;
INSERT INTO budgets(month, year, user_id)
VALUES
(0, 2022, 2),
(1, 2022, 2),
(2, 2022, 2),
(3, 2022, 2),
(4, 2022, 2),
(5, 2022, 2),
(6, 2022, 2),
(7, 2022, 2)
;
COMMIT;
INSERT INTO budget_categories(amount, budget_id, category_id, user_id)
VALUES
(214.72, 9, 10, 2),
(813.45, 9, 15, 2),
(890.16, 9, 16, 2),
(900.46, 10, 9, 2),
(878.17, 10, 12, 2),
(808.35, 10, 13, 2),
(757.22, 10, 14, 2),
(814.75, 11, 9, 2),
(744.69, 11, 10, 2),
(996.41, 11, 12, 2),
(243.74, 11, 13, 2),
(282.21, 11, 14, 2),
(684.0, 11, 15, 2),
(717.67, 12, 9, 2),
(755.39, 12, 10, 2),
(634.31, 12, 12, 2),
(641.21, 12, 14, 2),
(859.06, 12, 15, 2),
(144.31, 13, 11, 2),
(627.19, 13, 12, 2),
(388.61, 13, 15, 2),
(865.32, 14, 9, 2),
(614.12, 14, 11, 2),
(702.63, 14, 13, 2),
(360.03, 14, 16, 2),
(878.34, 15, 10, 2),
(345.81, 15, 14, 2),
(151.42, 15, 15, 2),
(972.76, 16, 9, 2),
(531.76, 16, 10, 2),
(550.06, 16, 12, 2),
(13.67, 16, 13, 2),
(54.88, 16, 14, 2),
(936.91, 16, 15, 2),
(499.43, 16, 16, 2)
;
COMMIT;
