INSERT INTO photographer (PName, PBDate, PBio, PAddress, PNationality)
VALUES('Amelia Kemp', '1991-01-02', 'Contact Details: ameliakemp1991@yahoo.com', '8464 S. 6th Dr. Savannah, GA 31404', 'Italian'),
('Kadie Pugh', '1996-03-18', 'Contact Details: kpugh@gmail.com', '942 Pendergast Ave. Ponte Vedra Beach, FL 32082', 'American'), 
('Anna Prentice', '1992-11-27', 'Contact Details: prentice27@gmail.com', '270 Saxon Lane Niagara Falls, NY 14304', 'German'), 
('Edgar Tran', '1993-06-05', 'Contact Details: edgart05@gmail.com', '9675 W. Gainsway Lane Millville. NJ 08332', 'American'),
('Matt Gill', '1992-07-01', 'Contact Details: mattgill@yahoo.com', '7641 Lawrence Court Leominster, MA 01453', 'American'), 
('Darla Pena', '1995-04-13', 'Contact Details: pena13@outlook.com', '43 4th Court Chardon, OH 44024', 'Venezuelan'),
('Jerald Graham', '1990-06-21', 'Contact Details: jgraham@gmail.com', '8634 W. Ashley Road Woonsocket, RI 02895', 'African'), 
('Rohan Mathis', '1994-05-11', 'Contact Details: rmathis@yahoo.com', '784 E. Studebaker Lane Dubuque, IA 52001', 'Indian'),
('Sara Chambers', '1996-11-24', 'Contact Details: chambers24@yahoo.com', '409 Orchard Dr. Saint Johns, FL 32259', 'Cuban'), 
('Nelson Hunter', '1991-07-30', 'Contact Details: hunter0730@gmail.com', '8482 W. School Court Romulus, MI 48174', 'American'), 
('Jordan Almasi', '1995-04-25', 'Contact Details: almasi@outlook.com', '9334 Old Sherwood Drive Mount Airy, MD 21771', 'Iranian'), 
('Lisa Gonzalez', '1992-04-13', 'Contact Details: lisagonzalez13@yahpp.com', '22 N. 8th Street Springboro, OH 45066', 'Puerto Rican'), 
('Salvatore Terry', '1990-06-17', 'Contact Details: salvatore1706@gmail.com', '4 High Point Lane Lagrange, GA 30240', 'Filipino'), 
('Corey Underwood', '1993-01-16', 'Contact Details: corey1993@yahoo.com', '440 Wentworth Drive Rock Hill, SC 29730', 'African'),
('Sierra Vaughn', '1992-08-04', 'Contact Details: svaughn@gmail.com', '28 Lawrence Dr. Monroe, NY 10950', 'Russian');

INSERT INTO customer(LoginName , PWord, CName, CType, BillingAddress, CAddress)
VALUES('herrera01', 'ZP7hQjHy', 'Lena Herrera', 'New', '103 Sierra Dr.Richmond Hill, NY 11418', '103 Sierra Dr. Richmond Hill, NY 11418'), 
('swanson02', 'j8QtycFF', 'Ernest Swanson', 'New', '7722 Depot St.Hialeah, FL 33010', '305 Madison St. Lincolnton, NC 28092'), 
('taylor03', 'xG9rssb4', 'Tanya Taylor', 'Existing', '7641 E.Riverside Ave. Copperas Cove, TX 76522', '7641 E. Riverside Ave. Copperas Cove, TX 76522'),
('bryant04', 'j3mJmbpX','Claudia Bryant', 'New', '588 Railroad Street West Lafayette, IN 47906', '588 Railroad Street West Lafayette, IN 47906'), 
('townsend05', 'Sga3AE2N', 'Pauline Townsend', 'Existing', '934 Jones St. Wisconsin Rapids, WI 54494', '42 Selby Lane Toms River, NJ 08753'), 
('sullivan06', 'dZch6a4K', 'Emma Sullivan', 'Existing', '9921 Silver Spear St. Taylor, MI 48180', '33 Manor Station Road Derby, KS 67037'),
('sherman07', 'nhs2BsW4', 'Laverne Sherman', 'New', '817 East Laurel St. Odenton, MD 21113', '817 East Laurel St. Odenton, MD 21113'),
('palmer08', 'yMP37Dzh', 'Jean Palmer', 'Existing', '92 North Shub Farm Street Portsmouth, VA 23703', '92 North Shub Farm Street Portsmouth, VA 23703'), 
('larson09', '46y4QX9b', 'Sean Larson', 'Existing', '999 W. Lake View Dr. Ankeny, IA 50023', '411 Creek Ave. Cleveland, TN 37312'), 
('maxwell10', '7cB9zHDb', 'Ricardo Maxwell', 'New', '10 Philmont Ave. Billings, MT 59101', '10 Philmont Ave. Billings, MT 59101'), 
('rodgers11', '6A3tJspV', 'Stuart Rodgers', 'Existing', '7120 Ann Ave. Honolulu, HI 96815', '7120 Ann Ave. Honolulu, HI 96815'), 
('butler12', 'A3jF6vea', 'Iris Butler', 'New', '97 Rockaway Dr. Niagara Falls, NY 14304', '97 Rockaway Dr. Niagara Falls, NY 14304'),
('parsons13', '2JKP9LbS', 'Karla Parsons', 'Existing', '662 West Rd. Prattville, AL 36067', '662 West Rd. Prattville, AL 36067'),
('payne14', 'Kg87VtS9', 'Neil Payne', 'Existing', '989 Grand Road East Elmhurst, NY 11369', '989 Grand Road East Elmhurst, NY 11369'),
('griffin15', 'wL79c2VD', 'Estelle Griffin', 'New', '992 Plymouth Dr. Morganton, NC 28655', '3 Gainsway Street Rocklin, CA 95677');

INSERT INTO transactions(TransID, TDate, CardNo, CardExpDate, TotalAmount, LoginName)
VALUES('1', '2019-11-16', '4929010665390661', '2021-12-3', '29.99', 'herrera01'), 
('2', '2019-05-15', '4556128115622440', '2022-10-17', '45.00', 'swanson02'),
('3','2019-07-10', '6011224282689843', '2022-12-22', '80.75', 'taylor03'),
('4', '2019-07-28', '6011823405998922', '2023-11-19', '120.99','bryant04'), 
('5', '2019-09-06', '5440070160990461', '2023-11-26', '103.50', 'townsend05'),
('6', '2019-10-19', '5201410315694890', '2024-05-11', '30.59', 'sullivan06'),
('7', '2019-10-29', '5483845973614442', '2024-08-29', '49.99', 'sherman07'), 
('8', '2019-11-12', '3537882275256573', '2024-09-23', '115.76', 'palmer08'),
('9', '2019-11-16', '3543280294393745', '2025-02-15', '70.50', 'larson09'),
('10', '2019-12-01', '379266874742315', '2025-08-25', '55.37', 'maxwell10'),
('11', '2019-12-09', '346712378856028', '2025-09-16', '134.21', 'rodgers11'), 
('12', '2020-02-14', '349770376884530', '2025-09-19', '90.62', 'butler12'), 
('13', '2020-02-29', '5449743938628370', '2026-05-16', '64.81', 'parsons13'), 
('14', '2020-03-22', '5507974986450834', '2026-09-12', '72.11', 'payne14'), 
('15', '2020-04-04', '5401924279839075', '2026-09-27', '55.23', 'griffin15');

INSERT INTO photo(PhotoID, Speed, Film, F_Stop, Color, Resolution, Price, DateTaken, TransID, PName, PBDate)
VALUES ('82', '25', 'Color Negative', 'f/4.0', 'Color', '3.5 MP', '20.00', '2019-02-01', '1', 'Amelia Kemp', '1991-01-02'),
('218', '200', 'Black and White', 'f/11.0', 'B/W', '5.0 MP', '50.00', '2019-04-15', '2', 'Kadie Pugh', '1996-03-18'), 
('37', '64', 'Color Positive', 'f/5.6', 'Color', '7.0 MP', '35.00', '2019-04-22', '3', 'Anna Prentice', '1992-11-27'), 
('231', '160', 'Polaroid', 'f/4.0', 'Color', '5.5 MP', '25.00', '2019-05-11', NULL , 'Edgar Tran', '1993-06-05'), 
('129', '200', 'Color Negative', 'f/11.0', 'Color', '6.0 MP', '15.00', '2019-05-22', '5', 'Matt Gill', '1992-07-01'), 
('20', '50', 'Color Positive', 'f/5.6', 'B/W', '4.0 MP', '30.00', '2019-06-21', '6', 'Darla Pena', '1995-04-13'), 
('189', '400', 'Color Negative', 'f/11.0', 'Color','9.0 MP', '50.00', '2019-07-05', '7', 'Edgar Tran', '1993-06-05'), 
('54', '100', 'Black and White', 'f/2.0', 'B/W', '6.5 MP', '25.00', '2019-07-20', NULL, 'Rohan Mathis', '1994-05-11'), /*9*/
('121', '50', 'Polaroid', 'f/4.0', 'B/W', '4.0 MP', '15.00', '2019-08-02', '9', 'Sara Chambers', '1996-11-24'), 
('68', '200', 'Color Positive', 'f/11.0', 'Color', '6.0 MP', '35.00', '2019-08-10', '10', 'Nelson Hunter', '1991-07-30'), 
('52', '160', 'Color Postive', 'f/5.6', 'B/W', '4.5 MP','45.00', '2019-08-20', '11', 'Kadie Pugh', '1996-03-18'),
('136', '25', 'Black and White', 'f/16.0', 'Color', '7.0 MP', '20.00', '2019-10-10', NULL, 'Lisa Gonzalez', '1992-04-13'), /*10*/
('75', '400', 'Color Negative', 'f/11.0', 'Color', '5.5 MP', '35.00', '2019-10-18', '13', 'Salvatore Terry', '1990-06-17'), 
('193', '50', 'Color Positive', 'f/5.6', 'B/W', '7.0 MP', '15.00', '2019-11-26', '14', 'Sara Chambers', '1996-11-24'),
('48', '160', 'Polaroid', 'f/4.0', '8.0 MP', 'Color', '30.00', '2020-01-13', NULL , 'Sierra Vaughn', '1992-08-04'),
('141', '50' , 'Color Positive', 'f/1.4', '2.5 MP', 'Color', '15.00', '2019-06-08', '1', 'Darla Pena', '1995-04-13' ), 
('67', '64', 'Black and White', 'f/2.0', '3.0 MP', 'Color', '20.00', '2019-08-14', '3', 'Nelson Hunter', '1991-07-30' ), /*7*/
('70', '100', 'Color Negative', 'f/4.0', '3.5 MP', 'B/W', '25.00', '2019-09-02', '10','Salvatore Terry', '1990-06-17' ), 
('292', '160', 'Polaroid', 'f/4.0', '5.0 MP', 'Color', '30.00', '2019-10-21', '6', 'Jerald Graham', '1990-06-21' ),  /* 5 */
('288', '200', 'Color Negative', 'f/5.6', '6.5 MP', 'Color', '35.00', '2019-12-31', '10','Edgar Tran', '1993-06-05'), 
('181', '400', 'Polaroid', 'f/11.0', '8.0 MP', 'B/W', '40.00', '2020-01-13', '7', 'Jordan Almasi', '1995-04-25'), /* 5 */
('205', '800',  'Color Positive', 'f/4.0', '9.5 MP', 'Color', '55.00', '2020-01-14', '3', 'Kadie Pugh', '1996-03-18'),
('25', '50', 'Color Negative', 'f/2.0', '4.0 MP', 'B/W', '20.00', '2020-02-03', '4', 'Corey Underwood', '1993-01-16'), /* 5 */
('143', '160', 'Polaroid', 'f/11.0', '5.5 MP', 'B/W', '35.00', '2020-03-12', '14', 'Sierra Vaughn', '1992-08-04' ),
('103', '200',  'Color Positive', 'f/16.0', '7.0 MP', 'Color', '40.00', '2020-03-29', '3', 'Nelson Hunter', '1991-07-30'); /*7*/

INSERT INTO location(Place, Country)
VALUES('Sacramento CA', 'US'), 
('Seoul', 'South Korea'), 
('Omsk', 'Russia'), 
('San Francisco CA','US'), 
('Fortaleza', 'Brazil'),
('Munich', 'Germany'), 
('Corpus Christi TX', 'US'),
('Belo Horizonte', 'Brazil'), 
('Seattle WA', 'US'), 
('Nagpur', 'India'),
('Jacksonville FL', 'US'), 
('Dhaka','Bangladesh'),
('Tijuana', 'Mexico'),
('Atlanta GA', 'US'), 
('Chicago IL', 'US');

INSERT INTO landscape(PhotoID, Place, Country)
VALUES ('82', 'Sacramento CA', 'US'),
('218', 'Sacramento CA', 'US'), 
('37', 'Omsk', 'Russia'), 
('231', 'Munich', 'Germany'), 
('129', 'Fortaleza', 'Brazil'), 
('20', 'Atlanta GA', 'US'), 
('189', 'Tijuana', 'Mexico'), 
('54', 'Chicago IL', 'US'), 
('121', 'Belo Horizonte', 'Brazil'), 
('68', 'Dhaka','Bangladesh');

INSERT INTO abstract(PhotoID, PicComment)
VALUES ('52', 'Dynamic compposition'), 
('136', 'Balanced'), 
('75', 'Warm colors'), 
('193', 'Rough texture'), 
('48', 'Cool colors'); 

INSERT INTO model(MName, MBDate, MBio, MSex)
VALUES ('Kathryn Elliot', '1991-01-08', 'Instagram: @elliot08', 'F'),
('Rebecca Sparks', '1990-12-19', 'Instagram: @sparks19', 'F'),
('Shaun Graves', '1991-07-10', 'Instagram: @graves10', 'M'),
('Sylvia Potter', '1992-12-18', 'Instagram: @potter18', 'F'),
('Alberto Jenkins', '1993-01-21', 'Instagram: @jenkins21', 'M'), 
('Terry Hamilton', '1993-03-01', 'Instagram: @hamilton01', 'M'), 
('Edward Barnes', '1993-12-31', 'Instagram: @barnes31', 'M'),
('Kim Cannon', '1994-01-13', 'Instagram: @cannon13', 'F'),
('Derrick Brewer', '1994-10-31', 'Instagram: @brewer31', 'M'), 
('Kristin Drake', '1996-01-30', 'Instagram: @drake30', 'F'),
('Celia Cruz', '1999-08-09', 'Instagram: @cruz09', 'F'),
('Terrance Vega', '2001-04-11', 'Instagram: @vega11', 'M'), 
('Connie Ellis', '2002-02-26', 'Instagram: @ellis26', 'F'), 
('Darryl Wilson', '1995-02-14', 'Instagram: @wilson14', 'M'), 
('Lucia Howard', '1997-11-12', 'Instagram: @howard12', 'F');

INSERT INTO models(PhotoID, MName, MBDate, Agency)
VALUES('141', 'Kathryn Elliot', '1991-01-08', 'Pictures to Treasure'), 
('67', 'Rebecca Sparks', '1990-12-19', 'Your Life in Our Lens'), 
('70', 'Shaun Graves', '1991-07-10', 'Snap Into Action'), 
('292', 'Sylvia Potter', '1992-12-18', 'Lens Trends'), 
('288', 'Alberto Jenkins', '1993-01-21', 'Shutter Magic'), 
('181', 'Terry Hamilton', '1993-03-01', 'Pictures to Treasure' ), 
('205', 'Edward Barnes', '1993-12-31', 'Perfect Captures'), 
('25', 'Kim Cannon', '1994-01-13', 'Your Life in Our Lens'), 
('143', 'Derrick Brewer', '1994-10-31', 'Shutter Magic'), 
('103', 'Kristin Drake', '1996-01-30', 'Your Life in Our Lens'); /*7*/

INSERT INTO influences(EPName, EPBDate, RPName, RPBDate)
VALUES('Amelia Kemp', '1991-01-02', 'Jordan Almasi', '1995-04-25'), 
('Kadie Pugh', '1996-03-18', 'Lisa Gonzalez', '1992-04-13'),
('Anna Prentice', '1992-11-27', 'Salvatore Terry', '1990-06-17'),
('Edgar Tran', '1993-06-05', 'Corey Underwood', '1993-01-16'), 
('Matt Gill', '1992-07-01', 'Lisa Gonzalez', '1992-04-13'),
('Darla Pena', '1995-04-13', 'Sierra Vaughn', '1992-08-04'),
('Jerald Graham', '1990-06-21', 'Corey Underwood', '1993-01-16'), 
('Rohan Mathis', '1994-05-11', 'Jordan Almasi', '1995-04-25'), 
('Sara Chambers', '1996-11-24', 'Salvatore Terry', '1990-06-17'),
('Nelson Hunter', '1991-07-30', 'Jordan Almasi', '1995-04-25');

















