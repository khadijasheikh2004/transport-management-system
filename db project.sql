-- Table Creation
-- Create Driver Table
CREATE TABLE Driver (
    driver_id INT PRIMARY KEY,
    driver_name VARCHAR(100),
    phone_no VARCHAR(15)
);

-- Create Bus Table
CREATE TABLE Bus (
    bus_id INT PRIMARY KEY,
    company_name VARCHAR(100),
    model VARCHAR(100),
    license_plate VARCHAR(20),
    driver_id INT,
    FOREIGN KEY (driver_id) REFERENCES Driver(driver_id)
);

-- Create Routes Table
CREATE TABLE Routes (
    route_id INT PRIMARY KEY,
    route_name VARCHAR(100),
    fee DECIMAL(10, 2)
);

-- Create RouteStops Table
CREATE TABLE RouteStops (
    route_stop_id INT PRIMARY KEY,
    stop_name VARCHAR(100),
    route_id INT,
    FOREIGN KEY (route_id) REFERENCES Routes(route_id)
);

-- Create Student Table
CREATE TABLE Student (
    st_id INT PRIMARY KEY,
    st_name VARCHAR(100),
    phone_no VARCHAR(15),
    route_stop_id INT,
    FOREIGN KEY (route_stop_id) REFERENCES RouteStops(route_stop_id)
);

-- Create Bookings Table
CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    booking_date_time DATETIME,
    semester VARCHAR(20),
    st_id INT,
    route_id INT,
    bus_id INT,
    FOREIGN KEY (st_id) REFERENCES Student(st_id),
    FOREIGN KEY (route_id) REFERENCES Routes(route_id),
    FOREIGN KEY (bus_id) REFERENCES Bus(bus_id)
);

-- Data Population
-- Insert Into Driver Table
INSERT INTO Driver (driver_id, driver_name, phone_no) VALUES (1, 'Ayesha Akhtar', '03124315133');
INSERT INTO Driver (driver_id, driver_name, phone_no) VALUES (2, 'Bilal Khan', '03345766638');
INSERT INTO Driver (driver_id, driver_name, phone_no) VALUES (3, 'Bilal Fatima', '03443436145');
INSERT INTO Driver (driver_id, driver_name, phone_no) VALUES (4, 'Sumaira Raza', '03491702038');
INSERT INTO Driver (driver_id, driver_name, phone_no) VALUES (5, 'Imran Ali', '03466825760');
INSERT INTO Driver (driver_id, driver_name, phone_no) VALUES (6, 'Shoaib Siddiqui', '03009829604');
INSERT INTO Driver (driver_id, driver_name, phone_no) VALUES (7, 'Sadia Khan', '03010342330');
INSERT INTO Driver (driver_id, driver_name, phone_no) VALUES (8, 'Nasir Iqbal', '03402090579');
INSERT INTO Driver (driver_id, driver_name, phone_no) VALUES (9, 'Hussain Ahmed', '03447150954');
INSERT INTO Driver (driver_id, driver_name, phone_no) VALUES (10, 'Nida Khan', '03117001065');
INSERT INTO Driver (driver_id, driver_name, phone_no) VALUES (11, 'Sara Khan', '03436171584');
INSERT INTO Driver (driver_id, driver_name, phone_no) VALUES (12, 'Mohammed Mahmood', '03492615147');
INSERT INTO Driver (driver_id, driver_name, phone_no) VALUES (13, 'Fatima Akhtar', '03058054823');
INSERT INTO Driver (driver_id, driver_name, phone_no) VALUES (14, 'Sajjad Mahmood', '03143301254');
INSERT INTO Driver (driver_id, driver_name, phone_no) VALUES (15, 'Ali Ahmad', '03224543055');
INSERT INTO Driver (driver_id, driver_name, phone_no) VALUES (16, 'Zainab Khan', '03460540636');
INSERT INTO Driver (driver_id, driver_name, phone_no) VALUES (17, 'Sumaira Fatima', '03126493615');
INSERT INTO Driver (driver_id, driver_name, phone_no) VALUES (18, 'Shoaib Akhtar', '03017978764');
INSERT INTO Driver (driver_id, driver_name, phone_no) VALUES (19, 'Khadija Khan', '03453138030');
INSERT INTO Driver (driver_id, driver_name, phone_no) VALUES (20, 'Naeem Ahmed', '03369229075');

-- Insert Into Bus Table
INSERT INTO Bus (bus_id, company_name, model, license_plate, driver_id) VALUES (1, 'Scania AB', 'V22', 'FYL837', 8);
INSERT INTO Bus (bus_id, company_name, model, license_plate, driver_id) VALUES (2, 'Mercedes-Benz', 'J10', 'SFI301', 19);
INSERT INTO Bus (bus_id, company_name, model, license_plate, driver_id) VALUES (3, 'Volvo Buses', 'SS45', 'ZNZ037', 12);
INSERT INTO Bus (bus_id, company_name, model, license_plate, driver_id) VALUES (4, 'Scania AB', 'NN40', 'LHQ561', 10);
INSERT INTO Bus (bus_id, company_name, model, license_plate, driver_id) VALUES (5, 'Tata Motors', 'M13', 'ZSI150', 18);
INSERT INTO Bus (bus_id, company_name, model, license_plate, driver_id) VALUES (6, 'Marcopolo S.A.', 'FF32', 'UEP809', 14);
INSERT INTO Bus (bus_id, company_name, model, license_plate, driver_id) VALUES (7, 'MAN Truck & Bus', 'KK37', 'BWL228', 2);
INSERT INTO Bus (bus_id, company_name, model, license_plate, driver_id) VALUES (8, 'King Long', 'T20', 'JSL425', 1);
INSERT INTO Bus (bus_id, company_name, model, license_plate, driver_id) VALUES (9, 'Scania AB', 'N14', 'BYB267', 3);
INSERT INTO Bus (bus_id, company_name, model, license_plate, driver_id) VALUES (10, 'Nova Bus', 'OO41', 'CAH441', 15);
INSERT INTO Bus (bus_id, company_name, model, license_plate, driver_id) VALUES (11, 'Ashok Leyland', 'X24', 'JNH408', 16);
INSERT INTO Bus (bus_id, company_name, model, license_plate, driver_id) VALUES (12, 'VDL Bus & Coach', 'K11', 'KYH981', 17);
INSERT INTO Bus (bus_id, company_name, model, license_plate, driver_id) VALUES (13, 'Volvo Buses', 'PP42', 'RDE393', 13);
INSERT INTO Bus (bus_id, company_name, model, license_plate, driver_id) VALUES (14, 'MAN Truck & Bus', 'X24', 'CBM809', 4);
INSERT INTO Bus (bus_id, company_name, model, license_plate, driver_id) VALUES (15, 'Wrightbus', 'D4', 'APD613', 9);

-- Insert Into Routes Table
INSERT INTO Routes (route_id, route_name, fee) VALUES (1, 'Route No. 1', 16000);
INSERT INTO Routes (route_id, route_name, fee) VALUES (2, 'Route No. 2', 15000);
INSERT INTO Routes (route_id, route_name, fee) VALUES (3, 'Route No. 3', 20000);
INSERT INTO Routes (route_id, route_name, fee) VALUES (4, 'Route No. 4', 13000);
INSERT INTO Routes (route_id, route_name, fee) VALUES (5, 'Route No. 5', 28000);
INSERT INTO Routes (route_id, route_name, fee) VALUES (6, 'Route No. 6', 32000);
INSERT INTO Routes (route_id, route_name, fee) VALUES (7, 'Route No. 7', 21000);
INSERT INTO Routes (route_id, route_name, fee) VALUES (8, 'Route No. 8', 26000);
INSERT INTO Routes (route_id, route_name, fee) VALUES (9, 'Route No. 9', 31000);
INSERT INTO Routes (route_id, route_name, fee) VALUES (10, 'Route No. 10', 24000);
INSERT INTO Routes (route_id, route_name, fee) VALUES (11, 'Route No. 11', 22000);
INSERT INTO Routes (route_id, route_name, fee) VALUES (12, 'Route No. 12', 12000);
INSERT INTO Routes (route_id, route_name, fee) VALUES (13, 'Route No. 13', 17000);
INSERT INTO Routes (route_id, route_name, fee) VALUES (14, 'Route No. 14', 26000);
INSERT INTO Routes (route_id, route_name, fee) VALUES (15, 'Route No. 15', 28000);

-- Insert Into RouteStops Table
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (1, 'UET', 15);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (2, 'Batii Chowk', 8);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (3, 'Multan Chungi', 6);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (4, 'Tufail Road', 9);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (5, 'Shalimar Garden', 11);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (6, 'Chowk Yattem Khana', 7);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (7, 'EME Canal Road', 15);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (8, 'Cavalary Ground', 5);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (9, 'Yadgaar', 12);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (10, 'Sadar Cantt', 10);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (11, 'Al Karim Chowk', 9);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (12, 'EME Canal Road', 13);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (13, 'Abu Bakar Round About', 8);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (14, 'Jinnah Hospital', 8);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (15, 'Askari 10', 6);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (16, 'Shimla Pahari', 5);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (17, 'Shoukat Khanam', 13);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (18, 'Askari 10', 12);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (19, 'UCP', 15);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (20, 'Chuburji', 4);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (21, 'Motorway Babu Sabu', 7);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (22, 'Firdous Market', 1);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (23, 'New Bridge', 5);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (24, 'Shadewal Chowk', 8);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (25, 'Main Market Gulberg', 1);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (26, 'Chuburji', 11);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (27, 'Allah Hoo Chowk', 1);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (28, 'Ganga Ram Hospital', 9);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (29, 'Railway Station', 13);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (30, 'Askari 10', 9);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (31, 'Sanda', 3);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (32, 'Manoo Chowk', 10);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (33, 'Main Market Gulberg', 3);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (34, 'EME Canal Road', 8);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (35, 'Samanabad Mor', 4);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (36, 'Shahdra Round About', 2);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (37, 'Main Market Gulberg', 6);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (38, 'Shadewal Chowk', 15);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (39, 'Thokar Niaz Baig', 14);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (40, 'Bekhywal Mor', 2);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (41, 'Shahdra Round About', 7);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (42, 'Jinnah Hospital', 11);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (43, 'Bhatti', 1);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (44, 'Muslim Town Mor', 8);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (45, 'Manoo Chowk', 15);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (46, 'Askari 10', 7);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (47, 'Cavalary Ground', 4);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (48, 'UCP', 10);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (49, 'Bekhywal Mor', 1);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (50, 'Thokar Niaz Baig', 6);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (51, 'Shera Kot', 15);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (52, 'Cavalary Ground', 8);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (53, 'Kalma Chowk', 8);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (54, 'Shimla Pahari', 6);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (55, 'Pakistan Mint', 8);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (56, 'Shoukat Khanam', 14);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (57, 'R.A. Bazar', 15);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (58, 'Al Karim Chowk', 8);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (59, 'Shahdra Round About', 15);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (60, 'Kalma Chowk', 7);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (61, 'Raiwind Road', 3);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (62, 'Askari 10', 15);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (63, 'EME Canal Road', 2);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (64, 'Bhatti', 11);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (65, 'Sanda', 5);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (66, 'MAO College', 12);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (67, 'Shimla Pahari', 10);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (68, 'Campus Bridge', 1);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (69, 'Manoo Chowk', 4);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (70, 'Allah Hoo Chowk', 12);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (71, 'Shahdra Round About', 14);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (72, 'Rehman Chowk', 10);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (73, 'Ittefaq Hospital', 5);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (74, 'Garhi Shaho', 2);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (75, 'Ganga Ram Hospital', 4);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (76, 'Jubilee Town', 1);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (77, 'Ganga Ram Hospital', 12);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (78, 'Dharam Pura', 6);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (79, 'Shimla Pahari', 10);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (80, 'Tufail Road', 1);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (81, 'Rana Town', 14);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (82, 'R.A. Bazar', 14);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (83, 'Assembly Hall', 6);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (84, 'Chuburji', 6);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (85, 'Chandani Chowk', 15);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (86, 'UCP', 6);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (87, 'Railway Station', 8);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (88, 'Ahmad Travel', 14);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (89, 'Shoukat Khanam', 4);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (90, 'Jinnah Hospital', 3);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (91, 'Barkat Town', 5);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (92, 'Mozang Chungi', 6);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (93, 'Shalimar Garden', 1);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (94, 'Qazlabash Chowk', 9);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (95, 'Shoukat Khanam', 15);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (96, 'Chandani Chowk', 5);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (97, 'Chandani Chowk', 11);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (98, 'Moon Market', 1);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (99, 'Muslim Town Mor', 6);
INSERT INTO RouteStops (route_stop_id, stop_name, route_id) VALUES (100, 'Main Market Gulberg', 13);

-- Insert Into Student Table
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (1, 'Asad Mirza', '03021758037', 34);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (2, 'Yasir Ali', '03314815907', 9);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (3, 'Fatima Mirza', '03117087458', 28);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (4, 'Yasir Mughal', '03357039757', 47);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (5, 'Basit Mirza', '03425568495', 18);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (6, 'Tariq Tariq', '03371669928', 96);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (7, 'Zara Latif', '03173983751', 31);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (8, 'Hassan Chaudhry', '03379590788', 71);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (9, 'Rida Waris', '03342181655', 96);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (10, 'Hassan Yousaf', '03457879930', 97);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (11, 'Yasir Ansari', '03499405934', 1);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (12, 'Mariam Kazmi', '03125573789', 16);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (13, 'Tariq Sultan', '03342535973', 28);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (14, 'Qasim Zafar', '03417937784', 56);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (15, 'Tariq Rana', '03364714427', 97);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (16, 'Fatima Khan', '03313588442', 3);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (17, 'Junaid Rizvi', '03002243738', 3);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (18, 'Kashif Rizvi', '03177924561', 56);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (19, 'Ayesha Mughal', '03225639749', 48);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (20, 'Waqar Rana', '03552940756', 80);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (21, 'Khadija Awan', '03094040551', 77);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (22, 'Mehwish Sharif', '03473570715', 91);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (23, 'Junaid Rajput', '03568917352', 17);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (24, 'Usman Rizvi', '03455144420', 44);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (25, 'Waqar Mirza', '03119946569', 59);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (26, 'Omar Farooq', '03222300618', 85);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (27, 'Nadia Sheikh', '03058526652', 81);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (28, 'Sara Ahmed', '03468493707', 24);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (29, 'Mehwish Awan', '03121643934', 73);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (30, 'Junaid Mir', '03011836271', 15);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (31, 'Ahmed Farooq', '03322764746', 17);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (32, 'Junaid Khan', '03407826432', 15);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (33, 'Zainab Abbasi', '03037168553', 26);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (34, 'Rehan Kazmi', '03074079246', 9);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (35, 'Ahmed Kazmi', '03252612774', 31);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (36, 'Sania Farooq', '03356888819', 49);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (37, 'Basit Hussain', '03406466695', 50);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (38, 'Sana Naqvi', '03482081378', 69);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (39, 'Mariam Ghani', '03404447159', 14);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (40, 'Sania Bajwa', '03162574532', 86);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (41, 'Nadia Dar', '03479588829', 78);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (42, 'Qasim Mughal', '03419032227', 23);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (43, 'Sara Sheikh', '03442602148', 78);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (44, 'Mehwish Tariq', '03302157021', 82);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (45, 'Uzma Yousaf', '03128972132', 67);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (46, 'Asad Sheikh', '03304293607', 86);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (47, 'Aamir Mir', '03245921588', 88);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (48, 'Nadia Sharif', '03313745379', 61);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (49, 'Hina Kazmi', '03497400005', 74);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (50, 'Sania Kazmi', '03417434854', 6);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (51, 'Rabia Raza', '03323520337', 23);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (52, 'Fatima Tariq', '03316477927', 95);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (53, 'Farhan Farooq', '03457873418', 34);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (54, 'Asad Dar', '03472473515', 55);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (55, 'Saad Sattar', '03424526250', 32);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (56, 'Sania Sheikh', '03066410622', 1);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (57, 'Junaid Siddiqui', '03111409246', 84);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (58, 'Sana Kazmi', '03055486183', 43);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (59, 'Rida Naqvi', '03011014235', 50);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (60, 'Rehan Chaudhry', '03457695030', 83);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (61, 'Junaid Shaikh', '03319594460', 85);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (62, 'Saad Dar', '03225046271', 31);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (63, 'Nida Zafar', '03002202886', 2);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (64, 'Zeeshan Mirza', '03029325613', 100);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (65, 'Mariam Gill', '03056554419', 10);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (66, 'Iqra Bajwa', '03254134416', 46);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (67, 'Hassan Butt', '03562809211', 8);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (68, 'Basit Ahmed', '03365990613', 47);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (69, 'Nida Khan', '03165404753', 32);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (70, 'Kashif Rana', '03259461326', 57);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (71, 'Qasim Malik', '03229944551', 37);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (72, 'Yasir Bajwa', '03018558208', 27);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (73, 'Zainab Latif', '03461667846', 64);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (74, 'Basit Yousaf', '03329496470', 76);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (75, 'Iqra Farooq', '03458720598', 32);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (76, 'Bilal Naqvi', '03322953208', 32);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (77, 'Omar Naqvi', '03473925563', 7);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (78, 'Rabia Sattar', '03561484547', 96);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (79, 'Mehwish Mughal', '03036314327', 62);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (80, 'Naveed Mir', '03211624847', 90);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (81, 'Bilal Shaikh', '03373033700', 44);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (82, 'Sana Hussain', '03464524547', 76);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (83, 'Waqar Mughal', '03429301879', 57);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (84, 'Nadia Sultan', '03222695826', 75);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (85, 'Aamir Kazmi', '03124929001', 64);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (86, 'Basit Bajwa', '03353434903', 91);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (87, 'Bilal Mirza', '03373524383', 57);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (88, 'Zeeshan Raza', '03434037124', 94);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (89, 'Saira Naqvi', '03057184212', 64);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (90, 'Usman Latif', '03039720326', 5);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (91, 'Khadija Rizvi', '03498166873', 60);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (92, 'Kashif Sattar', '03375760762', 74);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (93, 'Zeeshan Waris', '03202163143', 98);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (94, 'Ayesha Awan', '03096735468', 57);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (95, 'Usman Qureshi', '03065672269', 35);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (96, 'Naveed Butt', '03116735486', 48);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (97, 'Tariq Raza', '03124086686', 19);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (98, 'Bilal Mughal', '03035166594', 63);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (99, 'Kiran Gill', '03435796490', 47);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (100, 'Basit Saeed', '03083541021', 1);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (101, 'Naveed Abbasi', '03321376379', 12);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (102, 'Fatima Sattar', '03377086295', 54);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (103, 'Sara Mir', '03441447412', 20);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (104, 'Kashif Latif', '03433441918', 23);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (105, 'Asad Latif', '03477392650', 4);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (106, 'Imran Sultan', '03415678418', 46);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (107, 'Mehwish Syed', '03422637042', 43);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (108, 'Lubna Tariq', '03231849942', 85);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (109, 'Saad Mirza', '03432658722', 39);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (110, 'Uzma Latif', '03561561245', 38);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (111, 'Farhan Khan', '03365316625', 28);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (112, 'Tariq Mughal', '03209428475', 17);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (113, 'Nadia Waris', '03099384421', 37);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (114, 'Zainab Raza', '03326116559', 13);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (115, 'Fatima Ali', '03559875010', 11);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (116, 'Sania Sattar', '03008247267', 11);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (117, 'Sana Mughal', '03358636387', 20);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (118, 'Imran Malik', '03403618968', 26);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (119, 'Naveed Ali', '03123334621', 28);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (120, 'Zeeshan Ansari', '03378259368', 11);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (121, 'Sana Raza', '03098982419', 31);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (122, 'Aamir Butt', '03438708885', 56);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (123, 'Sania Sharif', '03005661099', 27);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (124, 'Lubna Mirza', '03113801916', 13);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (125, 'Rehan Shah', '03434654226', 42);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (126, 'Ahmed Zafar', '03235581900', 97);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (127, 'Aamir Ahmed', '03444557993', 97);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (128, 'Mariam Farooq', '03099690541', 26);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (129, 'Saira Waris', '03323385125', 26);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (130, 'Waqar Ahmed', '03019200838', 51);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (131, 'Mariam Sultan', '03005301340', 28);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (132, 'Rida Javed', '03476718274', 30);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (133, 'Kiran Rizvi', '03013455771', 98);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (134, 'Mariam Zafar', '03242124049', 22);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (135, 'Kashif Mirza', '03446531258', 93);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (136, 'Naveed Zafar', '03404984788', 76);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (137, 'Yasir Gill', '03116272834', 50);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (138, 'Hassan Farooq', '03024270072', 72);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (139, 'Sana Ansari', '03471318627', 67);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (140, 'Hina Gill', '03406278097', 25);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (141, 'Waqar Bajwa', '03129977075', 30);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (142, 'Iqra Ahmed', '03017872648', 78);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (143, 'Hassan Latif', '03354026829', 41);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (144, 'Saad Syed', '03087296508', 59);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (145, 'Saad Gill', '03476130668', 15);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (146, 'Ahmed Siddiqui', '03158525248', 24);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (147, 'Mehwish Bajwa', '03119287327', 45);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (148, 'Junaid Saeed', '03212017403', 2);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (149, 'Hassan Zafar', '03408644576', 25);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (150, 'Mariam Naqvi', '03401661595', 29);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (151, 'Mariam Bajwa', '03069815278', 92);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (152, 'Zainab Sultan', '03376468262', 16);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (153, 'Rida Farooq', '03559413810', 27);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (154, 'Fatima Mir', '03453180270', 66);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (155, 'Qasim Ansari', '03494784513', 64);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (156, 'Khadija Ahmed', '03316495971', 34);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (157, 'Kashif Shah', '03459816940', 28);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (158, 'Ayesha Mirza', '03096783663', 31);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (159, 'Ayesha Bajwa', '03085080745', 100);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (160, 'Nida Qureshi', '03325974144', 15);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (161, 'Fatima Sultan', '03055071858', 81);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (162, 'Uzma Rajput', '03129664086', 61);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (163, 'Zainab Qureshi', '03312440010', 15);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (164, 'Bilal Abbasi', '03441376335', 12);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (165, 'Nadia Malik', '03224772854', 46);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (166, 'Kashif Farooq', '03087458121', 45);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (167, 'Saira Ali', '03053320776', 94);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (168, 'Khadija Latif', '03495856928', 10);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (169, 'Asad Siddiqui', '03021731145', 63);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (170, 'Farhan Chaudhry', '03066112298', 35);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (171, 'Hassan Mughal', '03443139555', 29);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (172, 'Rabia Khan', '03337317065', 68);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (173, 'Aamir Chaudhry', '03075296287', 38);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (174, 'Sara Rana', '03409829665', 79);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (175, 'Nida Ali', '03369936291', 19);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (176, 'Rehan Khan', '03444003997', 27);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (177, 'Imran Ali', '03226338175', 80);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (178, 'Mariam Ansari', '03011458794', 78);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (179, 'Bilal Syed', '03092519033', 9);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (180, 'Zeeshan Khan', '03554898901', 44);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (181, 'Saad Khan', '03447332054', 75);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (182, 'Saira Bajwa', '03316639978', 30);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (183, 'Rabia Latif', '03312078965', 83);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (184, 'Tariq Sheikh', '03307511924', 60);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (185, 'Imran Rizvi', '03442825932', 75);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (186, 'Rabia Siddiqui', '03088955462', 4);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (187, 'Ahmed Chaudhry', '03329862928', 1);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (188, 'Nadia Kazmi', '03304348410', 58);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (189, 'Mehwish Shah', '03341796080', 65);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (190, 'Zainab Rana', '03569425520', 70);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (191, 'Tariq Rizvi', '03161084023', 38);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (192, 'Iqra Yousaf', '03026974570', 19);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (193, 'Uzma Waris', '03096523391', 25);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (194, 'Saira Sultan', '03226454695', 69);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (195, 'Basit Kazmi', '03164817523', 58);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (196, 'Uzma Mughal', '03071509383', 94);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (197, 'Uzma Shah', '03409306356', 81);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (198, 'Hassan Ali', '03143998437', 92);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (199, 'Zara Butt', '03142862659', 72);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (200, 'Rida Sharif', '03435864177', 33);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (201, 'Zainab Awan', '03315145916', 76);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (202, 'Mehwish Ansari', '03204495705', 58);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (203, 'Kashif Awan', '03427272690', 82);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (204, 'Imran Tariq', '03565774688', 50);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (205, 'Khadija Butt', '03475900347', 18);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (206, 'Rabia Ahmed', '03475314436', 94);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (207, 'Junaid Yousaf', '03119176523', 62);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (208, 'Zara Ghani', '03423581050', 76);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (209, 'Omar Ali', '03421565379', 16);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (210, 'Farhan Siddiqui', '03353544806', 48);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (211, 'Iqra Dar', '03255014990', 78);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (212, 'Iqra Rizvi', '03367137479', 4);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (213, 'Lubna Latif', '03169176563', 48);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (214, 'Lubna Javed', '03087288674', 37);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (215, 'Hina Rana', '03432147554', 11);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (216, 'Iqra Latif', '03336029047', 11);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (217, 'Rida Rajput', '03345609969', 85);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (218, 'Qasim Shaikh', '03337443173', 64);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (219, 'Naveed Latif', '03243953599', 60);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (220, 'Junaid Bajwa', '03461005668', 8);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (221, 'Saad Malik', '03249035507', 78);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (222, 'Zeeshan Mughal', '03136442442', 88);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (223, 'Nida Javed', '03335136434', 86);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (224, 'Usman Khan', '03441849696', 52);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (225, 'Lubna Mir', '03319603499', 79);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (226, 'Naveed Saeed', '03259558622', 25);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (227, 'Sara Rizvi', '03463738735', 79);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (228, 'Uzma Qureshi', '03569644179', 93);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (229, 'Rida Bajwa', '03447571499', 30);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (230, 'Nida Raza', '03321973070', 78);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (231, 'Ayesha Syed', '03338690926', 14);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (232, 'Saad Ahmed', '03129317980', 3);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (233, 'Waqar Javed', '03427168278', 66);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (234, 'Farhan Tariq', '03218943939', 77);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (235, 'Zeeshan Saeed', '03178629604', 19);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (236, 'Naveed Bajwa', '03124350957', 37);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (237, 'Kiran Farooq', '03171380319', 2);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (238, 'Zara Raza', '03305639568', 44);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (239, 'Rida Raza', '03352957244', 98);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (240, 'Ayesha Rajput', '03038509016', 99);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (241, 'Nadia Abbasi', '03247039535', 32);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (242, 'Farhan Ali', '03416627780', 9);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (243, 'Sania Mirza', '03551808676', 70);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (244, 'Rehan Ansari', '03158705260', 63);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (245, 'Naveed Ansari', '03086037390', 48);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (246, 'Waqar Abbasi', '03164114252', 93);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (247, 'Kiran Ansari', '03361276106', 33);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (248, 'Kiran Yousaf', '03432722206', 78);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (249, 'Hina Naqvi', '03489187309', 25);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (250, 'Sana Zafar', '03446189963', 53);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (251, 'Kiran Dar', '03422078972', 67);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (252, 'Rida Zafar', '03218933491', 25);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (253, 'Rabia Farooq', '03477674776', 43);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (254, 'Ahmed Syed', '03473427961', 59);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (255, 'Sana Sattar', '03115636690', 3);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (256, 'Hina Sattar', '03177630388', 6);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (257, 'Sana Khan', '03165002309', 17);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (258, 'Zeeshan Shaikh', '03132289815', 29);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (259, 'Sania Zafar', '03205701638', 81);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (260, 'Mehwish Chaudhry', '03112961837', 27);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (261, 'Khadija Qureshi', '03132541584', 70);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (262, 'Imran Gill', '03247484642', 16);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (263, 'Khadija Farooq', '03236389821', 68);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (264, 'Zara Awan', '03463022121', 98);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (265, 'Naveed Kazmi', '03452901605', 94);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (266, 'Nadia Zafar', '03126969370', 79);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (267, 'Saira Rajput', '03122618755', 88);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (268, 'Mehwish Hussain', '03351936660', 94);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (269, 'Iqra Sharif', '03421552238', 83);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (270, 'Fatima Abbasi', '03443101808', 11);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (271, 'Usman Saeed', '03209338892', 35);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (272, 'Sania Khan', '03117003017', 59);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (273, 'Ayesha Rana', '03428032478', 63);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (274, 'Lubna Rajput', '03341839069', 1);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (275, 'Hina Ghani', '03058326091', 99);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (276, 'Lubna Shaikh', '03141454643', 51);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (277, 'Basit Naqvi', '03425539756', 66);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (278, 'Mariam Awan', '03485042684', 57);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (279, 'Tariq Butt', '03137504876', 96);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (280, 'Zainab Sheikh', '03408530640', 14);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (281, 'Fatima Rizvi', '03551263741', 54);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (282, 'Zeeshan Ahmed', '03081205645', 28);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (283, 'Yasir Sharif', '03496997070', 3);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (284, 'Ayesha Siddiqui', '03412408459', 62);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (285, 'Imran Chaudhry', '03129752347', 57);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (286, 'Hassan Sheikh', '03258796705', 47);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (287, 'Sana Sheikh', '03133623628', 46);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (288, 'Ayesha Yousaf', '03238794687', 86);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (289, 'Zara Shaikh', '03429704568', 88);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (290, 'Nida Awan', '03462594111', 31);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (291, 'Hina Sultan', '03118504790', 49);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (292, 'Farhan Mir', '03469216680', 48);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (293, 'Nida Malik', '03202358579', 44);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (294, 'Rida Sattar', '03569744945', 19);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (295, 'Rehan Ghani', '03453650687', 38);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (296, 'Junaid Mughal', '03485294213', 91);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (297, 'Bilal Tariq', '03429372659', 14);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (298, 'Lubna Awan', '03019575087', 41);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (299, 'Bilal Waris', '03249316794', 21);
INSERT INTO Student (st_id, st_name, phone_no, route_stop_id) VALUES (300, 'Mariam Abbasi', '03341332864', 67);

-- Insert Into Bookings Table
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (1, '2023-09-13 19:23:27', 'FA23', 1, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (2, '2023-02-14 20:19:26', 'SP23', 2, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (3, '2023-02-08 05:22:01', 'SP23', 3, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (4, '2023-02-08 06:05:32', 'SP23', 4, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (5, '2023-02-25 21:05:34', 'SP23', 5, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (6, '2024-02-17 04:30:18', 'SP24', 6, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (7, '2023-02-10 02:16:55', 'SP23', 7, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (8, '2023-09-23 03:59:11', 'FA23', 8, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (9, '2023-09-07 00:25:36', 'FA23', 9, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (10, '2023-02-24 18:02:25', 'SP23', 10, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (11, '2023-02-26 13:19:09', 'SP23', 11, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (12, '2023-02-21 09:32:32', 'SP23', 12, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (13, '2023-09-25 03:47:20', 'FA23', 13, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (14, '2023-02-05 04:23:52', 'SP23', 14, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (15, '2024-02-18 08:43:19', 'SP24', 15, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (16, '2023-02-21 15:15:36', 'SP23', 16, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (17, '2024-02-07 01:45:13', 'SP24', 17, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (18, '2024-02-14 05:48:53', 'SP24', 18, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (19, '2024-02-19 17:47:29', 'SP24', 19, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (20, '2024-02-28 07:07:38', 'SP24', 20, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (21, '2024-02-19 04:23:07', 'SP24', 21, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (22, '2023-09-09 03:11:30', 'FA23', 22, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (23, '2023-02-12 22:30:01', 'SP23', 23, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (24, '2023-02-17 18:51:00', 'SP23', 24, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (25, '2023-09-05 00:28:32', 'FA23', 25, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (26, '2023-09-19 05:46:27', 'FA23', 26, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (27, '2023-09-09 20:55:30', 'FA23', 27, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (28, '2024-02-05 19:23:55', 'SP24', 28, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (29, '2023-02-21 07:39:12', 'SP23', 29, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (30, '2024-02-12 01:02:28', 'SP24', 30, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (31, '2023-02-16 04:28:35', 'SP23', 31, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (32, '2024-02-07 14:29:56', 'SP24', 32, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (33, '2023-02-11 12:45:58', 'SP23', 33, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (34, '2023-09-03 03:29:05', 'FA23', 34, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (35, '2023-09-13 06:05:37', 'FA23', 35, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (36, '2024-02-24 23:54:58', 'SP24', 36, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (37, '2024-02-09 11:03:06', 'SP24', 37, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (38, '2023-02-13 02:12:43', 'SP23', 38, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (39, '2024-02-26 00:46:07', 'SP24', 39, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (40, '2024-02-10 06:17:49', 'SP24', 40, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (41, '2023-02-25 21:55:36', 'SP23', 41, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (42, '2023-09-02 09:44:55', 'FA23', 42, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (43, '2023-02-23 06:28:56', 'SP23', 43, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (44, '2024-02-23 10:22:22', 'SP24', 44, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (45, '2023-02-05 06:15:09', 'SP23', 45, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (46, '2024-02-01 20:16:09', 'SP24', 46, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (47, '2023-02-19 15:15:35', 'SP23', 47, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (48, '2023-02-14 12:37:53', 'SP23', 48, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (49, '2023-09-03 13:10:28', 'FA23', 49, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (50, '2023-02-18 00:46:39', 'SP23', 50, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (51, '2024-02-04 20:13:57', 'SP24', 51, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (52, '2023-09-21 02:11:12', 'FA23', 52, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (53, '2023-02-17 13:15:20', 'SP23', 53, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (54, '2024-02-21 18:09:05', 'SP24', 54, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (55, '2024-02-13 06:52:44', 'SP24', 55, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (56, '2023-09-15 10:14:44', 'FA23', 56, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (57, '2023-02-09 22:47:13', 'SP23', 57, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (58, '2023-09-14 18:07:05', 'FA23', 58, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (59, '2024-02-11 13:14:32', 'SP24', 59, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (60, '2024-02-28 14:08:20', 'SP24', 60, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (61, '2023-09-06 12:47:15', 'FA23', 61, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (62, '2023-09-14 22:21:24', 'FA23', 62, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (63, '2023-09-17 21:19:02', 'FA23', 63, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (64, '2023-02-07 06:33:01', 'SP23', 64, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (65, '2023-09-24 03:32:57', 'FA23', 65, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (66, '2024-02-07 00:06:26', 'SP24', 66, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (67, '2023-09-04 21:07:22', 'FA23', 67, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (68, '2023-02-23 09:40:03', 'SP23', 68, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (69, '2023-09-08 01:59:00', 'FA23', 69, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (70, '2023-02-19 16:44:28', 'SP23', 70, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (71, '2023-02-08 06:27:07', 'SP23', 71, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (72, '2023-02-21 02:35:40', 'SP23', 72, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (73, '2023-02-28 12:09:47', 'SP23', 73, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (74, '2024-02-23 20:08:45', 'SP24', 74, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (75, '2023-09-17 10:24:36', 'FA23', 75, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (76, '2024-02-15 16:51:13', 'SP24', 76, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (77, '2023-02-10 02:33:14', 'SP23', 77, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (78, '2023-02-26 13:11:37', 'SP23', 78, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (79, '2024-02-04 12:00:01', 'SP24', 79, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (80, '2024-02-16 02:33:06', 'SP24', 80, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (81, '2023-09-11 14:40:48', 'FA23', 81, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (82, '2023-09-25 08:33:13', 'FA23', 82, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (83, '2023-09-20 15:57:55', 'FA23', 83, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (84, '2024-02-06 10:21:56', 'SP24', 84, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (85, '2023-09-25 23:48:57', 'FA23', 85, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (86, '2023-09-10 16:40:57', 'FA23', 86, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (87, '2024-02-24 05:16:32', 'SP24', 87, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (88, '2024-02-15 14:27:16', 'SP24', 88, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (89, '2023-09-13 23:28:25', 'FA23', 89, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (90, '2023-02-01 08:05:10', 'SP23', 90, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (91, '2023-02-13 03:34:58', 'SP23', 91, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (92, '2023-09-26 00:24:50', 'FA23', 92, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (93, '2024-02-09 12:59:26', 'SP24', 93, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (94, '2023-09-23 18:16:22', 'FA23', 94, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (95, '2024-02-06 09:26:48', 'SP24', 95, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (96, '2023-02-02 03:42:57', 'SP23', 96, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (97, '2024-02-09 02:59:01', 'SP24', 97, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (98, '2023-02-19 10:16:30', 'SP23', 98, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (99, '2024-02-04 22:08:31', 'SP24', 99, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (100, '2023-02-18 16:37:55', 'SP23', 100, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (101, '2024-02-03 18:33:34', 'SP24', 101, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (102, '2023-02-02 05:17:43', 'SP23', 102, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (103, '2024-02-08 15:48:22', 'SP24', 103, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (104, '2024-02-18 23:30:47', 'SP24', 104, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (105, '2024-02-20 13:47:33', 'SP24', 105, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (106, '2024-02-08 19:52:54', 'SP24', 106, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (107, '2024-02-03 22:22:27', 'SP24', 107, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (108, '2023-02-21 21:30:44', 'SP23', 108, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (109, '2024-02-02 19:01:44', 'SP24', 109, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (110, '2024-02-11 12:45:50', 'SP24', 110, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (111, '2023-02-25 18:52:02', 'SP23', 111, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (112, '2023-09-29 16:44:21', 'FA23', 112, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (113, '2023-02-05 19:37:23', 'SP23', 113, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (114, '2023-09-23 02:20:18', 'FA23', 114, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (115, '2024-02-15 00:40:14', 'SP24', 115, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (116, '2023-09-12 20:05:16', 'FA23', 116, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (117, '2023-09-22 05:15:46', 'FA23', 117, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (118, '2024-02-27 13:51:30', 'SP24', 118, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (119, '2023-02-24 12:17:42', 'SP23', 119, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (120, '2023-02-07 14:42:59', 'SP23', 120, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (121, '2023-02-26 00:38:13', 'SP23', 121, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (122, '2024-02-12 01:48:59', 'SP24', 122, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (123, '2024-02-14 12:36:51', 'SP24', 123, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (124, '2024-02-25 02:34:53', 'SP24', 124, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (125, '2024-02-21 11:46:49', 'SP24', 125, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (126, '2024-02-20 18:35:57', 'SP24', 126, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (127, '2024-02-19 10:13:47', 'SP24', 127, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (128, '2023-02-11 22:34:53', 'SP23', 128, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (129, '2023-02-18 17:12:47', 'SP23', 129, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (130, '2023-02-14 20:43:30', 'SP23', 130, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (131, '2023-09-25 03:12:59', 'FA23', 131, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (132, '2023-09-16 01:05:19', 'FA23', 132, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (133, '2023-02-22 05:12:14', 'SP23', 133, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (134, '2024-02-09 10:25:35', 'SP24', 134, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (135, '2023-09-08 22:00:48', 'FA23', 135, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (136, '2023-09-12 18:52:33', 'FA23', 136, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (137, '2023-09-28 09:00:12', 'FA23', 137, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (138, '2023-02-09 10:33:08', 'SP23', 138, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (139, '2024-02-11 14:42:25', 'SP24', 139, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (140, '2023-09-18 11:49:46', 'FA23', 140, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (141, '2023-02-18 10:43:39', 'SP23', 141, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (142, '2023-02-24 19:25:56', 'SP23', 142, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (143, '2024-02-05 03:14:04', 'SP24', 143, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (144, '2023-09-18 19:55:34', 'FA23', 144, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (145, '2023-02-15 02:24:11', 'SP23', 145, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (146, '2024-02-13 06:49:31', 'SP24', 146, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (147, '2023-02-02 14:55:58', 'SP23', 147, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (148, '2023-09-13 09:28:45', 'FA23', 148, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (149, '2023-02-28 01:04:53', 'SP23', 149, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (150, '2024-02-09 09:22:36', 'SP24', 150, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (151, '2023-09-04 23:12:31', 'FA23', 151, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (152, '2023-02-10 04:04:11', 'SP23', 152, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (153, '2024-02-01 12:09:17', 'SP24', 153, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (154, '2023-09-06 15:28:58', 'FA23', 154, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (155, '2023-09-17 08:53:16', 'FA23', 155, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (156, '2023-02-18 04:35:03', 'SP23', 156, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (157, '2023-02-23 10:36:41', 'SP23', 157, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (158, '2024-02-26 12:22:11', 'SP24', 158, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (159, '2023-09-26 12:27:54', 'FA23', 159, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (160, '2023-09-01 11:54:48', 'FA23', 160, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (161, '2024-02-16 17:43:24', 'SP24', 161, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (162, '2024-02-12 23:36:18', 'SP24', 162, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (163, '2023-02-08 14:42:11', 'SP23', 163, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (164, '2024-02-28 01:11:39', 'SP24', 164, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (165, '2024-02-24 18:57:34', 'SP24', 165, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (166, '2023-09-10 21:47:58', 'FA23', 166, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (167, '2023-02-25 20:33:41', 'SP23', 167, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (168, '2023-02-09 02:04:59', 'SP23', 168, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (169, '2024-02-02 04:34:09', 'SP24', 169, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (170, '2023-09-03 12:05:06', 'FA23', 170, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (171, '2023-09-19 23:59:18', 'FA23', 171, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (172, '2024-02-25 10:19:01', 'SP24', 172, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (173, '2023-09-08 16:14:17', 'FA23', 173, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (174, '2023-09-18 18:34:39', 'FA23', 174, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (175, '2023-02-06 00:11:17', 'SP23', 175, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (176, '2024-02-17 07:35:34', 'SP24', 176, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (177, '2023-02-15 22:31:27', 'SP23', 177, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (178, '2024-02-28 21:51:33', 'SP24', 178, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (179, '2023-09-14 16:20:22', 'FA23', 179, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (180, '2023-02-03 07:27:08', 'SP23', 180, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (181, '2023-02-22 03:38:31', 'SP23', 181, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (182, '2024-02-07 01:51:03', 'SP24', 182, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (183, '2023-02-19 23:58:23', 'SP23', 183, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (184, '2023-02-04 01:55:19', 'SP23', 184, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (185, '2024-02-28 14:29:24', 'SP24', 185, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (186, '2023-09-21 00:18:22', 'FA23', 186, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (187, '2023-09-21 23:35:40', 'FA23', 187, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (188, '2024-02-19 12:34:37', 'SP24', 188, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (189, '2023-02-08 23:59:47', 'SP23', 189, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (190, '2023-02-14 18:59:36', 'SP23', 190, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (191, '2023-02-28 19:48:04', 'SP23', 191, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (192, '2023-09-26 13:58:14', 'FA23', 192, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (193, '2024-02-01 08:08:39', 'SP24', 193, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (194, '2023-09-26 04:38:07', 'FA23', 194, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (195, '2023-02-06 14:37:14', 'SP23', 195, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (196, '2024-02-24 00:04:38', 'SP24', 196, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (197, '2023-02-12 12:32:43', 'SP23', 197, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (198, '2023-09-27 02:41:32', 'FA23', 198, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (199, '2023-09-20 21:48:29', 'FA23', 199, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (200, '2023-02-23 16:07:20', 'SP23', 200, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (201, '2023-02-28 10:15:37', 'SP23', 201, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (202, '2024-02-14 03:24:37', 'SP24', 202, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (203, '2023-09-18 10:43:53', 'FA23', 203, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (204, '2023-02-19 09:20:19', 'SP23', 204, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (205, '2023-09-05 02:39:09', 'FA23', 205, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (206, '2023-02-09 17:53:59', 'SP23', 206, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (207, '2023-02-04 10:24:45', 'SP23', 207, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (208, '2023-02-07 14:20:18', 'SP23', 208, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (209, '2023-09-02 22:08:06', 'FA23', 209, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (210, '2023-09-01 13:54:33', 'FA23', 210, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (211, '2023-02-17 11:01:40', 'SP23', 211, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (212, '2024-02-09 12:20:17', 'SP24', 212, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (213, '2023-09-22 16:41:37', 'FA23', 213, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (214, '2023-02-17 14:38:07', 'SP23', 214, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (215, '2023-09-09 14:29:38', 'FA23', 215, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (216, '2024-02-02 23:04:55', 'SP24', 216, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (217, '2023-09-09 04:03:07', 'FA23', 217, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (218, '2023-09-28 20:18:36', 'FA23', 218, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (219, '2023-09-05 18:43:53', 'FA23', 219, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (220, '2023-02-21 10:07:23', 'SP23', 220, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (221, '2023-09-05 23:23:36', 'FA23', 221, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (222, '2023-02-11 22:20:18', 'SP23', 222, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (223, '2023-09-04 14:52:17', 'FA23', 223, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (224, '2023-09-12 18:47:06', 'FA23', 224, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (225, '2023-02-08 19:38:27', 'SP23', 225, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (226, '2023-09-12 21:59:55', 'FA23', 226, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (227, '2024-02-08 10:15:18', 'SP24', 227, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (228, '2023-09-23 05:00:10', 'FA23', 228, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (229, '2024-02-08 17:11:08', 'SP24', 229, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (230, '2023-02-15 00:23:14', 'SP23', 230, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (231, '2024-02-23 23:53:34', 'SP24', 231, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (232, '2023-02-26 19:03:28', 'SP23', 232, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (233, '2023-02-02 19:55:43', 'SP23', 233, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (234, '2024-02-25 00:51:12', 'SP24', 234, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (235, '2023-02-13 07:31:46', 'SP23', 235, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (236, '2024-02-02 08:08:20', 'SP24', 236, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (237, '2024-02-20 20:17:02', 'SP24', 237, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (238, '2023-02-12 12:47:31', 'SP23', 238, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (239, '2023-02-11 07:04:59', 'SP23', 239, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (240, '2024-02-12 20:34:49', 'SP24', 240, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (241, '2023-02-15 10:08:29', 'SP23', 241, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (242, '2023-02-08 21:52:53', 'SP23', 242, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (243, '2023-02-09 20:10:33', 'SP23', 243, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (244, '2023-09-17 13:07:38', 'FA23', 244, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (245, '2023-09-09 17:07:06', 'FA23', 245, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (246, '2024-02-06 21:14:58', 'SP24', 246, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (247, '2023-09-30 12:20:54', 'FA23', 247, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (248, '2024-02-01 00:16:57', 'SP24', 248, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (249, '2023-09-02 04:04:46', 'FA23', 249, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (250, '2024-02-12 04:11:09', 'SP24', 250, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (251, '2023-02-07 04:12:10', 'SP23', 251, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (252, '2024-02-27 05:02:41', 'SP24', 252, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (253, '2024-02-22 19:53:35', 'SP24', 253, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (254, '2024-02-05 05:32:14', 'SP24', 254, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (255, '2023-09-09 16:05:20', 'FA23', 255, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (256, '2024-02-16 15:13:07', 'SP24', 256, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (257, '2024-02-03 10:25:31', 'SP24', 257, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (258, '2024-02-17 01:27:36', 'SP24', 258, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (259, '2023-02-16 07:16:57', 'SP23', 259, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (260, '2023-02-08 19:46:18', 'SP23', 260, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (261, '2023-09-24 07:26:04', 'FA23', 261, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (262, '2024-02-02 06:09:41', 'SP24', 262, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (263, '2023-09-26 13:29:32', 'FA23', 263, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (264, '2023-09-17 18:46:25', 'FA23', 264, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (265, '2024-02-03 22:35:18', 'SP24', 265, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (266, '2024-02-20 14:17:42', 'SP24', 266, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (267, '2023-02-19 03:45:37', 'SP23', 267, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (268, '2023-02-07 19:26:43', 'SP23', 268, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (269, '2023-02-12 06:31:11', 'SP23', 269, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (270, '2023-09-07 11:59:44', 'FA23', 270, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (271, '2024-02-20 07:22:10', 'SP24', 271, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (272, '2024-02-23 06:55:36', 'SP24', 272, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (273, '2023-09-27 11:26:26', 'FA23', 273, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (274, '2023-09-10 09:01:52', 'FA23', 274, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (275, '2023-02-13 06:20:42', 'SP23', 275, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (276, '2024-02-27 01:17:09', 'SP24', 276, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (277, '2023-02-26 18:10:03', 'SP23', 277, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (278, '2023-02-17 22:19:46', 'SP23', 278, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (279, '2023-02-07 17:58:43', 'SP23', 279, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (280, '2024-02-25 21:44:57', 'SP24', 280, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (281, '2023-09-15 18:37:58', 'FA23', 281, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (282, '2023-02-18 16:33:43', 'SP23', 282, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (283, '2023-02-17 04:26:08', 'SP23', 283, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (284, '2023-02-23 23:19:09', 'SP23', 284, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (285, '2023-09-21 19:47:22', 'FA23', 285, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (286, '2023-09-25 07:55:21', 'FA23', 286, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (287, '2024-02-08 21:21:00', 'SP24', 287, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (288, '2023-09-28 15:47:56', 'FA23', 288, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (289, '2023-09-25 18:00:57', 'FA23', 289, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (290, '2023-02-19 16:33:27', 'SP23', 290, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (291, '2024-02-14 07:45:20', 'SP24', 291, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (292, '2023-09-04 04:46:35', 'FA23', 292, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (293, '2023-02-01 03:56:48', 'SP23', 293, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (294, '2023-02-24 21:28:00', 'SP23', 294, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (295, '2023-02-16 04:15:40', 'SP23', 295, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (296, '2023-02-15 11:54:46', 'SP23', 296, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (297, '2023-09-02 13:47:25', 'FA23', 297, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (298, '2023-02-02 03:27:48', 'SP23', 298, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (299, '2024-02-21 02:20:35', 'SP24', 299, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (300, '2023-09-07 09:51:56', 'FA23', 300, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (301, '2024-02-20 01:57:19', 'SP24', 285, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (302, '2023-02-10 11:10:14', 'SP23', 164, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (303, '2023-02-05 20:25:57', 'SP23', 125, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (304, '2023-09-30 06:32:09', 'FA23', 50, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (305, '2024-02-08 17:59:16', 'SP24', 67, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (306, '2023-02-17 03:19:18', 'SP23', 281, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (307, '2023-09-27 19:17:36', 'FA23', 162, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (308, '2024-02-07 13:42:12', 'SP24', 85, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (309, '2023-02-01 01:16:33', 'SP23', 270, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (310, '2023-09-06 02:11:40', 'FA23', 123, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (311, '2023-02-17 06:12:35', 'SP23', 205, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (312, '2023-02-19 15:17:29', 'SP23', 179, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (313, '2024-02-11 11:35:00', 'SP24', 221, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (314, '2023-02-17 04:19:45', 'SP23', 223, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (315, '2024-02-13 08:39:59', 'SP24', 8, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (316, '2023-09-01 15:11:21', 'FA23', 91, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (317, '2024-02-25 21:57:31', 'SP24', 224, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (318, '2023-02-10 22:30:34', 'SP23', 65, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (319, '2024-02-02 16:59:35', 'SP24', 233, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (320, '2023-09-12 09:31:07', 'FA23', 168, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (321, '2023-09-11 01:53:29', 'FA23', 36, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (322, '2024-02-25 05:23:04', 'SP24', 168, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (323, '2023-09-22 20:08:02', 'FA23', 280, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (324, '2024-02-27 08:35:03', 'SP24', 166, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (325, '2024-02-15 22:46:22', 'SP24', 199, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (326, '2023-02-09 09:04:49', 'SP23', 171, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (327, '2023-09-26 22:48:37', 'FA23', 241, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (328, '2023-09-08 12:15:54', 'FA23', 145, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (329, '2023-09-18 04:08:35', 'FA23', 129, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (330, '2023-02-07 08:14:22', 'SP23', 97, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (331, '2023-09-22 14:22:33', 'FA23', 133, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (332, '2023-02-23 12:07:27', 'SP23', 219, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (333, '2023-02-18 02:05:48', 'SP23', 134, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (334, '2024-02-27 04:40:00', 'SP24', 210, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (335, '2024-02-16 23:47:58', 'SP24', 294, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (336, '2023-02-05 01:44:51', 'SP23', 139, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (337, '2023-02-18 22:47:41', 'SP23', 215, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (338, '2023-09-30 10:41:20', 'FA23', 266, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (339, '2024-02-28 16:16:15', 'SP24', 121, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (340, '2024-02-21 00:06:39', 'SP24', 112, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (341, '2023-02-27 21:30:56', 'SP23', 166, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (342, '2024-02-23 12:03:03', 'SP24', 62, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (343, '2023-09-21 21:05:33', 'FA23', 293, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (344, '2023-02-19 11:34:04', 'SP23', 158, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (345, '2023-02-20 03:25:31', 'SP23', 99, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (346, '2024-02-02 11:24:40', 'SP24', 230, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (347, '2024-02-11 11:36:31', 'SP24', 186, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (348, '2023-02-27 13:22:23', 'SP23', 26, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (349, '2023-09-21 08:23:17', 'FA23', 111, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (350, '2023-02-11 23:17:04', 'SP23', 258, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (351, '2024-02-22 05:51:45', 'SP24', 241, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (352, '2024-02-04 15:06:45', 'SP24', 138, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (353, '2023-09-16 00:37:07', 'FA23', 2, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (354, '2023-09-20 20:37:29', 'FA23', 196, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (355, '2023-02-11 18:12:46', 'SP23', 49, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (356, '2024-02-17 18:17:39', 'SP24', 75, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (357, '2023-02-15 08:30:21', 'SP23', 116, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (358, '2024-02-20 11:46:27', 'SP24', 24, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (359, '2023-02-27 20:02:46', 'SP23', 178, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (360, '2023-02-22 19:54:51', 'SP23', 86, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (361, '2024-02-01 05:51:28', 'SP24', 45, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (362, '2023-02-19 15:02:14', 'SP23', 124, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (363, '2023-02-05 12:46:59', 'SP23', 37, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (364, '2023-02-13 19:51:42', 'SP23', 203, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (365, '2023-09-06 16:23:37', 'FA23', 139, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (366, '2024-02-21 07:21:42', 'SP24', 43, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (367, '2023-02-25 02:53:02', 'SP23', 285, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (368, '2024-02-19 04:40:00', 'SP24', 82, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (369, '2023-02-05 04:44:22', 'SP23', 55, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (370, '2024-02-09 09:03:47', 'SP24', 203, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (371, '2023-09-01 23:00:37', 'FA23', 258, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (372, '2023-09-26 09:09:08', 'FA23', 200, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (373, '2023-09-04 16:26:02', 'FA23', 259, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (374, '2024-02-07 08:41:52', 'SP24', 108, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (375, '2024-02-18 18:32:49', 'SP24', 259, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (376, '2023-02-18 18:34:37', 'SP23', 34, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (377, '2024-02-19 05:17:45', 'SP24', 61, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (378, '2024-02-22 19:19:05', 'SP24', 273, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (379, '2024-02-01 23:12:31', 'SP24', 47, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (380, '2024-02-06 11:53:45', 'SP24', 157, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (381, '2023-09-18 15:46:43', 'FA23', 240, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (382, '2023-02-10 08:26:51', 'SP23', 69, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (383, '2024-02-09 20:48:30', 'SP24', 192, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (384, '2023-02-06 17:58:50', 'SP23', 297, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (385, '2024-02-20 03:47:20', 'SP24', 3, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (386, '2023-02-21 02:16:18', 'SP23', 59, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (387, '2023-02-10 19:58:32', 'SP23', 80, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (388, '2023-09-17 19:59:42', 'FA23', 72, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (389, '2023-09-16 22:48:40', 'FA23', 48, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (390, '2023-09-26 02:51:50', 'FA23', 152, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (391, '2024-02-11 03:16:02', 'SP24', 142, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (392, '2024-02-03 18:46:50', 'SP24', 154, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (393, '2023-02-04 22:26:23', 'SP23', 280, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (394, '2024-02-08 13:40:02', 'SP24', 25, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (395, '2023-02-12 03:53:38', 'SP23', 1, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (396, '2024-02-22 23:37:41', 'SP24', 279, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (397, '2023-09-12 16:23:05', 'FA23', 20, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (398, '2023-09-25 06:33:16', 'FA23', 138, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (399, '2023-02-12 15:22:26', 'SP23', 35, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (400, '2024-02-12 08:02:50', 'SP24', 226, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (401, '2023-09-30 19:05:01', 'FA23', 141, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (402, '2024-02-06 19:51:03', 'SP24', 152, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (403, '2023-02-21 22:27:38', 'SP23', 217, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (404, '2023-02-23 16:10:10', 'SP23', 46, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (405, '2024-02-10 18:50:40', 'SP24', 200, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (406, '2024-02-19 05:07:14', 'SP24', 116, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (407, '2023-09-11 06:08:55', 'FA23', 189, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (408, '2023-02-23 10:34:29', 'SP23', 176, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (409, '2024-02-15 14:31:42', 'SP24', 269, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (410, '2024-02-28 12:41:49', 'SP24', 207, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (411, '2023-09-19 18:12:23', 'FA23', 24, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (412, '2023-02-13 18:50:14', 'SP23', 162, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (413, '2024-02-01 05:12:11', 'SP24', 245, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (414, '2024-02-23 04:50:29', 'SP24', 111, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (415, '2024-02-10 02:10:15', 'SP24', 189, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (416, '2024-02-14 08:43:11', 'SP24', 267, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (417, '2023-02-08 05:52:59', 'SP23', 299, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (418, '2024-02-17 22:11:17', 'SP24', 72, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (419, '2023-02-14 06:17:54', 'SP23', 137, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (420, '2023-09-06 16:15:34', 'FA23', 233, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (421, '2023-02-27 02:21:50', 'SP23', 93, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (422, '2024-02-20 17:08:38', 'SP24', 132, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (423, '2023-02-10 01:47:41', 'SP23', 224, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (424, '2023-02-03 09:39:02', 'SP23', 192, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (425, '2023-02-16 21:48:36', 'SP23', 115, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (426, '2024-02-18 13:01:57', 'SP24', 191, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (427, '2023-02-14 07:32:12', 'SP23', 18, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (428, '2023-02-22 17:01:31', 'SP23', 218, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (429, '2023-02-05 02:46:07', 'SP23', 106, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (430, '2024-02-05 04:18:45', 'SP24', 281, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (431, '2024-02-22 11:22:13', 'SP24', 242, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (432, '2023-09-30 22:26:05', 'FA23', 272, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (433, '2023-09-10 22:42:42', 'FA23', 41, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (434, '2023-02-20 22:25:08', 'SP23', 193, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (435, '2023-09-23 03:04:06', 'FA23', 23, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (436, '2023-09-23 00:13:57', 'FA23', 122, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (437, '2023-09-18 03:27:15', 'FA23', 193, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (438, '2023-02-22 22:25:50', 'SP23', 109, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (439, '2024-02-08 22:58:11', 'SP24', 219, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (440, '2023-02-16 21:34:50', 'SP23', 287, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (441, '2023-02-14 04:40:01', 'SP23', 273, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (442, '2024-02-23 03:27:42', 'SP24', 197, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (443, '2023-09-29 15:27:49', 'FA23', 113, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (444, '2023-09-15 03:57:22', 'FA23', 45, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (445, '2023-09-21 22:59:11', 'FA23', 103, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (446, '2024-02-19 10:20:50', 'SP24', 147, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (447, '2024-02-28 23:36:29', 'SP24', 63, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (448, '2024-02-04 16:00:52', 'SP24', 23, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (449, '2023-09-10 18:10:07', 'FA23', 294, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (450, '2023-02-04 10:23:22', 'SP23', 56, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (451, '2023-02-23 00:15:17', 'SP23', 246, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (452, '2024-02-16 11:31:21', 'SP24', 128, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (453, '2024-02-12 17:04:27', 'SP24', 218, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (454, '2024-02-04 09:00:26', 'SP24', 261, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (455, '2023-09-11 20:04:13', 'FA23', 77, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (456, '2023-02-17 17:15:57', 'SP23', 36, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (457, '2023-09-10 20:14:10', 'FA23', 257, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (458, '2023-09-14 06:29:03', 'FA23', 47, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (459, '2024-02-26 01:02:11', 'SP24', 68, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (460, '2023-09-20 08:32:07', 'FA23', 97, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (461, '2023-02-03 15:34:01', 'SP23', 146, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (462, '2023-02-25 22:57:02', 'SP23', 19, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (463, '2023-02-04 03:49:59', 'SP23', 274, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (464, '2023-09-15 20:18:49', 'FA23', 163, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (465, '2023-02-02 22:08:29', 'SP23', 261, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (466, '2023-09-28 22:27:46', 'FA23', 165, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (467, '2024-02-06 09:02:01', 'SP24', 179, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (468, '2024-02-04 13:30:32', 'SP24', 117, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (469, '2023-02-05 17:10:10', 'SP23', 89, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (470, '2023-02-23 10:17:05', 'SP23', 74, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (471, '2023-02-20 21:54:54', 'SP23', 186, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (472, '2024-02-17 21:11:08', 'SP24', 4, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (473, '2024-02-28 03:39:34', 'SP24', 77, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (474, '2023-02-13 15:21:46', 'SP23', 292, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (475, '2023-09-20 16:22:10', 'FA23', 248, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (476, '2023-09-24 08:59:24', 'FA23', 291, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (477, '2023-09-15 12:38:08', 'FA23', 102, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (478, '2024-02-17 22:48:37', 'SP24', 213, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (479, '2023-02-16 11:19:42', 'SP23', 39, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (480, '2023-02-24 04:27:00', 'SP23', 266, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (481, '2023-09-23 01:26:04', 'FA23', 28, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (482, '2023-02-27 09:56:21', 'SP23', 213, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (483, '2023-02-07 15:30:57', 'SP23', 209, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (484, '2023-09-23 08:40:42', 'FA23', 146, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (485, '2023-09-19 10:34:27', 'FA23', 76, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (486, '2023-02-09 03:29:29', 'SP23', 236, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (487, '2023-02-28 02:02:58', 'SP23', 114, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (488, '2023-02-10 22:20:23', 'SP23', 82, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (489, '2024-02-26 17:06:53', 'SP24', 64, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (490, '2023-02-07 18:30:20', 'SP23', 226, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (491, '2023-09-16 06:07:39', 'FA23', 59, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (492, '2023-02-07 16:44:35', 'SP23', 118, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (493, '2023-09-02 19:58:51', 'FA23', 282, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (494, '2023-02-18 07:37:58', 'SP23', 105, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (495, '2024-02-09 01:43:18', 'SP24', 167, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (496, '2023-02-11 14:46:41', 'SP23', 84, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (497, '2023-09-10 13:03:11', 'FA23', 128, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (498, '2023-09-04 15:43:59', 'FA23', 269, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (499, '2024-02-27 20:12:27', 'SP24', 204, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (500, '2023-09-23 13:07:29', 'FA23', 268, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (501, '2023-02-18 08:18:38', 'SP23', 271, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (502, '2023-02-24 20:27:08', 'SP23', 8, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (503, '2023-09-23 19:03:01', 'FA23', 229, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (504, '2023-09-04 10:20:58', 'FA23', 84, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (505, '2023-02-18 10:35:40', 'SP23', 257, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (506, '2023-09-04 03:20:34', 'FA23', 283, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (507, '2023-09-28 05:33:35', 'FA23', 232, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (508, '2023-02-16 12:10:12', 'SP23', 25, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (509, '2023-02-07 17:50:20', 'SP23', 101, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (510, '2023-09-18 05:49:45', 'FA23', 64, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (511, '2023-09-20 13:01:35', 'FA23', 118, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (512, '2023-02-01 11:15:14', 'SP23', 185, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (513, '2024-02-08 23:34:31', 'SP24', 268, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (514, '2023-09-06 21:56:36', 'FA23', 216, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (515, '2023-09-25 13:04:21', 'FA23', 278, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (516, '2023-09-05 01:26:36', 'FA23', 38, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (517, '2024-02-24 13:01:34', 'SP24', 170, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (518, '2024-02-16 15:48:33', 'SP24', 38, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (519, '2023-09-27 09:53:41', 'FA23', 51, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (520, '2023-09-12 02:31:41', 'FA23', 287, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (521, '2023-09-01 01:49:39', 'FA23', 236, 4, 4);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (522, '2023-09-07 17:33:18', 'FA23', 167, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (523, '2023-09-27 06:49:16', 'FA23', 16, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (524, '2023-09-06 10:55:22', 'FA23', 93, 5, 5);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (525, '2024-02-07 12:52:29', 'SP24', 92, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (526, '2024-02-12 12:06:49', 'SP24', 198, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (527, '2024-02-07 20:56:24', 'SP24', 129, 1, 1);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (528, '2024-02-10 21:05:04', 'SP24', 183, 8, 8);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (529, '2023-02-11 04:26:22', 'SP23', 44, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (530, '2023-02-03 16:53:38', 'SP23', 199, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (531, '2023-02-17 13:56:12', 'SP23', 28, 14, 14);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (532, '2023-09-28 12:19:59', 'FA23', 161, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (533, '2023-02-27 23:26:09', 'SP23', 254, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (534, '2023-09-11 17:07:00', 'FA23', 204, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (535, '2023-09-28 08:09:17', 'FA23', 230, 2, 2);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (536, '2024-02-15 13:35:33', 'SP24', 223, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (537, '2024-02-19 21:54:30', 'SP24', 141, 15, 15);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (538, '2023-09-25 18:20:47', 'FA23', 32, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (539, '2023-09-13 12:35:20', 'FA23', 95, 9, 9);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (540, '2023-09-29 07:59:45', 'FA23', 279, 10, 10);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (541, '2024-02-26 09:56:33', 'SP24', 255, 13, 13);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (542, '2024-02-01 11:56:26', 'SP24', 10, 11, 11);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (543, '2023-09-01 06:03:32', 'FA23', 120, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (544, '2023-09-07 00:45:33', 'FA23', 246, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (545, '2024-02-16 07:17:29', 'SP24', 113, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (546, '2023-09-17 23:06:09', 'FA23', 101, 7, 7);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (547, '2024-02-17 11:23:57', 'SP24', 211, 12, 12);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (548, '2023-02-03 12:32:45', 'SP23', 265, 6, 6);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (549, '2023-09-23 10:16:58', 'FA23', 185, 3, 3);
INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id) VALUES (550, '2024-02-04 21:22:40', 'SP24', 137, 6, 6);

-- Create Stored Procedures
-- Stored Procedures for Driver Table
-- Insert a new driver
CREATE PROCEDURE InsertDriver
    @driver_id INT,
    @driver_name VARCHAR(100),
    @phone_no VARCHAR(15)
AS
BEGIN
    INSERT INTO Driver (driver_id, driver_name, phone_no)
    VALUES (@driver_id, @driver_name, @phone_no);
END;

-- Execution
EXEC InsertDriver @driver_id = 21, @driver_name = 'Adeel Aslam', @phone_no = '03359454356';

-- Update an existing driver
CREATE PROCEDURE UpdateDriver
    @driver_id INT,
    @driver_name VARCHAR(100),
    @phone_no VARCHAR(15)
AS
BEGIN
    UPDATE Driver
    SET driver_name = @driver_name, phone_no = @phone_no
    WHERE driver_id = @driver_id;
END;

-- Execution
EXEC UpdateDriver @driver_id = 1, @driver_name = 'Umar Faisal', @phone_no = '03009865342';

-- Delete a driver
CREATE PROCEDURE DeleteDriver
    @driver_id INT
AS
BEGIN
    DELETE FROM Driver
    WHERE driver_id = @driver_id;
END;

-- Execution
EXEC DeleteDriver @driver_id = 1;

-- Stored Procedures for Bus Table
-- Insert a new bus
CREATE PROCEDURE InsertBus
    @bus_id INT,
    @company_name VARCHAR(100),
    @model VARCHAR(100),
    @license_plate VARCHAR(20),
    @driver_id INT
AS
BEGIN
    INSERT INTO Bus (bus_id, company_name, model, license_plate, driver_id)
    VALUES (@bus_id, @company_name, @model, @license_plate, @driver_id);
END;

-- Execution
EXEC InsertBus @bus_id = 16, @company_name = 'Blue Bird Corporation', @model = 'UU47', @license_plate = 'LEA123', @driver_id = 5;

-- Update an existing bus
CREATE PROCEDURE UpdateBus
    @bus_id INT,
    @company_name VARCHAR(100),
    @model VARCHAR(100),
    @license_plate VARCHAR(20),
    @driver_id INT
AS
BEGIN
    UPDATE Bus
    SET company_name = @company_name, model = @model, license_plate = @license_plate, driver_id = @driver_id
    WHERE bus_id = @bus_id;
END;

-- Execution
EXEC UpdateBus @bus_id = 1, @company_name = 'Volvo Buses', @model = 'R18', @license_plate = 'XYZ789', @driver_id = 6;

-- Delete a bus
CREATE PROCEDURE DeleteBus
    @bus_id INT
AS
BEGIN
    DELETE FROM Bus
    WHERE bus_id = @bus_id;
END;

-- Execution
EXEC DeleteBus @bus_id = 1;

-- Stored Procedures for Routes Table
-- Insert a new route
CREATE PROCEDURE InsertRoute
    @route_id INT,
    @route_name VARCHAR(100),
    @fee DECIMAL(10, 2)
AS
BEGIN
    INSERT INTO Routes (route_id, route_name, fee)
    VALUES (@route_id, @route_name, @fee);
END;

-- Execution
EXEC InsertRoute @route_id = 16, @route_name = 'Route 16', @fee = 29000.00;

-- Update an existing route
CREATE PROCEDURE UpdateRoute
    @route_id INT,
    @route_name VARCHAR(100),
    @fee DECIMAL(10, 2)
AS
BEGIN
    UPDATE Routes
    SET route_name = @route_name, fee = @fee
    WHERE route_id = @route_id;
END;

-- Execution
EXEC UpdateRoute @route_id = 1, @route_name = 'Route 1 A', @fee = 15000.00;

-- Delete a route
CREATE PROCEDURE DeleteRoute
    @route_id INT
AS
BEGIN
    DELETE FROM Routes
    WHERE route_id = @route_id;
END;

-- Execution
EXEC DeleteRoute @route_id = 1;

-- Stored Procedures for RouteStops Table
-- Insert a new route stop
CREATE PROCEDURE InsertRouteStop
    @route_stop_id INT,
    @stop_name VARCHAR(100),
    @route_id INT
AS
BEGIN
    INSERT INTO RouteStops (route_stop_id, stop_name, route_id)
    VALUES (@route_stop_id, @stop_name, @route_id);
END;

-- Execution
EXEC InsertRouteStop @route_stop_id = 101, @stop_name = 'Jubilee Town', @route_id = 1;

-- Update an existing route stop
CREATE PROCEDURE UpdateRouteStop
    @route_stop_id INT,
    @stop_name VARCHAR(100),
    @route_id INT
AS
BEGIN
    UPDATE RouteStops
    SET stop_name = @stop_name, route_id = @route_id
    WHERE route_stop_id = @route_stop_id;
END;

-- Execution
EXEC UpdateRouteStop @route_stop_id = 1, @stop_name = 'Main Market Gulberg', @route_id = 1;

-- Delete a route stop
CREATE PROCEDURE DeleteRouteStop
    @route_stop_id INT
AS
BEGIN
    DELETE FROM RouteStops
    WHERE route_stop_id = @route_stop_id;
END;

-- Execution
EXEC DeleteRouteStop @route_stop_id = 1;

-- Stored Procedures for Student Table
-- Insert a new student
CREATE PROCEDURE InsertStudent
    @st_id INT,
    @st_name VARCHAR(100),
    @phone_no VARCHAR(15),
    @route_stop_id INT
AS
BEGIN
    INSERT INTO Student (st_id, st_name, phone_no, route_stop_id)
    VALUES (@st_id, @st_name, @phone_no, @route_stop_id);
END;

-- Execution
EXEC InsertStudent @st_id = 301, @st_name = 'Khadija Sheikh', @phone_no = '03004568324', @route_stop_id = 22;

-- Update an existing student
CREATE PROCEDURE UpdateStudent
    @st_id INT,
    @st_name VARCHAR(100),
    @phone_no VARCHAR(15),
    @route_stop_id INT
AS
BEGIN
    UPDATE Student
    SET st_name = @st_name, phone_no = @phone_no, route_stop_id = @route_stop_id
    WHERE st_id = @st_id;
END;

-- Execution
EXEC UpdateStudent @st_id = 1, @st_name = 'Hamna Asghar', @phone_no = '03358745787', @route_stop_id = 2;

-- Delete a student
CREATE PROCEDURE DeleteStudent
    @st_id INT
AS
BEGIN
    DELETE FROM Student
    WHERE st_id = @st_id;
END;

-- Execution
EXEC DeleteStudent @st_id = 1;

-- Stored Procedures for Bookings Table
-- Insert a new booking
CREATE PROCEDURE InsertBooking
    @booking_id INT,
    @booking_date_time DATETIME,
    @semester VARCHAR(20),
    @st_id INT,
    @route_id INT,
    @bus_id INT
AS
BEGIN
    INSERT INTO Bookings (booking_id, booking_date_time, semester, st_id, route_id, bus_id)
    VALUES (@booking_id, @booking_date_time, @semester, @st_id, @route_id, @bus_id);
END;

-- Execution
EXEC InsertBooking @booking_id = 551, @booking_date_time = '2024-02-10 10:00:00', @semester = 'SP24', @st_id = 301, @route_id = 1, @bus_id = 1;

-- Update an existing booking
CREATE PROCEDURE UpdateBooking
    @booking_id INT,
    @booking_date_time DATETIME,
    @semester VARCHAR(20),
    @st_id INT,
    @route_id INT,
    @bus_id INT
AS
BEGIN
    UPDATE Bookings
    SET booking_date_time = @booking_date_time, semester = @semester, st_id = @st_id, route_id = @route_id, bus_id = @bus_id
    WHERE booking_id = @booking_id;
END;

-- Execution
EXEC UpdateBooking @booking_id = 1, @booking_date_time = '2024-02-10 11:00:00', @semester = 'FA23', @st_id = 2, @route_id = 2, @bus_id = 2;

-- Delete a booking
CREATE PROCEDURE DeleteBooking
    @booking_id INT
AS
BEGIN
    DELETE FROM Bookings
    WHERE booking_id = @booking_id;
END;

-- Execution
EXEC DeleteBooking @booking_id = 1;

-- Create Audit Tables
-- Audit table for Driver
CREATE TABLE Driver_Audit (
    audit_id INT IDENTITY(1,1) PRIMARY KEY,
    driver_id INT,
    driver_name VARCHAR(100),
    phone_no VARCHAR(15),
    operation_type VARCHAR(10),
    operation_time DATETIME DEFAULT GETDATE()
);

-- Audit table for Bus
CREATE TABLE Bus_Audit (
    audit_id INT IDENTITY(1,1) PRIMARY KEY,
    bus_id INT,
    company_name VARCHAR(100),
    model VARCHAR(100),
    license_plate VARCHAR(20),
    driver_id INT,
    operation_type VARCHAR(10),
    operation_time DATETIME DEFAULT GETDATE()
);

-- Audit table for Student
CREATE TABLE Student_Audit (
    audit_id INT IDENTITY(1,1) PRIMARY KEY,
    st_id INT,
    st_name VARCHAR(100),
    phone_no VARCHAR(15),
    route_stop_id INT,
    operation_type VARCHAR(10),
    operation_time DATETIME DEFAULT GETDATE()
);

-- Audit table for Bookings
CREATE TABLE Bookings_Audit (
    audit_id INT IDENTITY(1,1) PRIMARY KEY,
    booking_id INT,
    booking_date_time DATETIME,
    semester VARCHAR(20),
    st_id INT,
    route_id INT,
    bus_id INT,
    operation_type VARCHAR(10),
    operation_time DATETIME DEFAULT GETDATE()
);

-- Create Triggers
-- Trigger for Driver table
CREATE TRIGGER trg_Driver_Audit
ON Driver
FOR UPDATE, DELETE
AS
BEGIN
    IF EXISTS (SELECT * FROM deleted) AND EXISTS (SELECT * FROM inserted)
    BEGIN
        -- This is an update operation
        INSERT INTO Driver_Audit (driver_id, driver_name, phone_no, operation_type, operation_time)
        SELECT driver_id, driver_name, phone_no, 'UPDATE', GETDATE()
        FROM inserted;
    END
    ELSE IF EXISTS (SELECT * FROM deleted)
    BEGIN
        -- This is a delete operation
        INSERT INTO Driver_Audit (driver_id, driver_name, phone_no, operation_type, operation_time)
        SELECT driver_id, driver_name, phone_no, 'DELETE', GETDATE()
        FROM deleted;
    END
END;

-- Trigger for Bus table
CREATE TRIGGER trg_Bus_Audit
ON Bus
FOR UPDATE, DELETE
AS
BEGIN
    IF EXISTS (SELECT * FROM deleted) AND EXISTS (SELECT * FROM inserted)
    BEGIN
        -- This is an update operation
        INSERT INTO Bus_Audit (bus_id, company_name, model, license_plate, driver_id, operation_type, operation_time)
        SELECT bus_id, company_name, model, license_plate, driver_id, 'UPDATE', GETDATE()
        FROM inserted;
    END
    ELSE IF EXISTS (SELECT * FROM deleted)
    BEGIN
        -- This is a delete operation
        INSERT INTO Bus_Audit (bus_id, company_name, model, license_plate, driver_id, operation_type, operation_time)
        SELECT bus_id, company_name, model, license_plate, driver_id, 'DELETE', GETDATE()
        FROM deleted;
    END
END;

-- Trigger for Student table
CREATE TRIGGER trg_Student_Audit
ON Student
FOR UPDATE, DELETE
AS
BEGIN
    IF EXISTS (SELECT * FROM deleted) AND EXISTS (SELECT * FROM inserted)
    BEGIN
        -- This is an update operation
        INSERT INTO Student_Audit (st_id, st_name, phone_no, route_stop_id, operation_type, operation_time)
        SELECT st_id, st_name, phone_no, route_stop_id, 'UPDATE', GETDATE()
        FROM inserted;
    END
    ELSE IF EXISTS (SELECT * FROM deleted)
    BEGIN
        -- This is a delete operation
        INSERT INTO Student_Audit (st_id, st_name, phone_no, route_stop_id, operation_type, operation_time)
        SELECT st_id, st_name, phone_no, route_stop_id, 'DELETE', GETDATE()
        FROM deleted;
    END
END;

-- Trigger for Bookings table
CREATE TRIGGER trg_Bookings_Audit
ON Bookings
FOR UPDATE, DELETE
AS
BEGIN
    IF EXISTS (SELECT * FROM deleted) AND EXISTS (SELECT * FROM inserted)
    BEGIN
        -- This is an update operation
        INSERT INTO Bookings_Audit (booking_id, booking_date_time, semester, st_id, route_id, bus_id, operation_type, operation_time)
        SELECT booking_id, booking_date_time, semester, st_id, route_id, bus_id, 'UPDATE', GETDATE()
        FROM inserted;
    END
    ELSE IF EXISTS (SELECT * FROM deleted)
    BEGIN
        -- This is a delete operation
        INSERT INTO Bookings_Audit (booking_id, booking_date_time, semester, st_id, route_id, bus_id, operation_type, operation_time)
        SELECT booking_id, booking_date_time, semester, st_id, route_id, bus_id, 'DELETE', GETDATE()
        FROM deleted;
    END
END;

-- Inserting Into Audit Tables
-- Update a record in the Driver table
UPDATE Driver
SET driver_name = 'Ali Khan Updated'
WHERE driver_id = 1;

-- Delete a record from the Driver table
DELETE FROM Driver
WHERE driver_id = 10;

-- Update a record in the Bus table
UPDATE Bus
SET model = 'G7 Updated'
WHERE bus_id = 1;

-- Delete a record from the Bus table
DELETE FROM Bus
WHERE bus_id = 4;

-- Update a record in the Student table
UPDATE Student
SET st_name = 'Nimra Shahid Updated'
WHERE st_id = 1;

-- Delete a record from the Student table
DELETE FROM Student
WHERE st_id = 2;

-- Update a record in the Bookings table
UPDATE Bookings
SET semester = 'FA24'
WHERE booking_id = 1;

-- Delete a record from the Bookings table
DELETE FROM Bookings
WHERE booking_id = 2;

-- Verify the Driver_Audit table
SELECT * FROM Driver_Audit;

-- Verify the Bus_Audit table
SELECT * FROM Bus_Audit;

-- Verify the Student_Audit table
SELECT * FROM Student_Audit;

-- Verify the Bookings_Audit table
SELECT * FROM Bookings_Audit;

-- Producing Reports
-- Producing Reports Using SQL Stored Procedures
-- Report 1: Show the route stops for a given route
-- This procedure takes a route_id and selects all the route stops for that route
CREATE PROCEDURE GetRouteStopsForRoute
    @route_id INT
AS
BEGIN
    SELECT
        rs.route_stop_id,
        rs.stop_name
    FROM
        RouteStops rs
    WHERE
        rs.route_id = @route_id;
END;

-- Execution
EXEC GetRouteStopsForRoute @route_id = 1;

-- Report 2: Total revenue for a semester
-- This procedure takes a semester as input and calculates the total revenue for that semester
CREATE PROCEDURE GetRevenueBySemester
    @semester VARCHAR(20)
AS
BEGIN
    SELECT 
        @semester AS semester,
        SUM(r.fee) AS total_revenue
    FROM 
        Routes r
        JOIN Bookings book ON r.route_id = book.route_id
    WHERE 
        book.semester = @semester;
END;

-- Execution
EXEC GetRevenueBySemester 'SP24';

-- Report 3: Total revenue for a year
-- This procedure takes a year as input and calculates the total revenue for that year
CREATE PROCEDURE GetRevenueByYear
    @year INT
AS
BEGIN
    SELECT 
        @year AS year,
        SUM(r.fee) AS total_revenue
    FROM 
        Routes r
        JOIN Bookings book ON r.route_id = book.route_id
    WHERE 
        YEAR(book.booking_date_time) = @year;
END;

-- Execution
EXEC GetRevenueByYear 2023;

-- Report 4: Total revenue for a specific period
-- This procedure takes a start date and an end date as input and calculates the total revenue for the specified period
CREATE PROCEDURE GetRevenueByDateRange
    @start_date DATE,
    @end_date DATE
AS
BEGIN
    SELECT 
        @start_date AS start_date,
        @end_date AS end_date,
        SUM(r.fee) AS total_revenue
    FROM 
        Routes r
        JOIN Bookings book ON r.route_id = book.route_id
    WHERE 
        book.booking_date_time >= @start_date
        AND book.booking_date_time <= @end_date;
END;

-- Execution
EXEC GetRevenueByDateRange '2023-01-01', '2023-12-31';

-- Producing Reports Using Complex Views
-- Report 1: Total Revenue Per Route
-- This report calculates the total revenue generated from each route based on the bookings
CREATE VIEW TotalRevenuePerRoute AS
SELECT 
    r.route_id,
    r.route_name,
    SUM(r.fee) AS total_revenue
FROM 
    Routes r
    JOIN Bookings book ON r.route_id = book.route_id
GROUP BY 
    r.route_id, r.route_name;

SELECT * FROM TotalRevenuePerRoute

-- Report 2: Bus Utilization
-- This view provides information on how often each bus is used, by summarizing the number of bookings for each bus
CREATE VIEW BusUtilization AS
SELECT 
    b.bus_id,
    b.company_name,
    b.model,
    COUNT(book.booking_id) AS total_bookings
FROM Bus b
JOIN Bookings book ON b.bus_id = book.bus_id
GROUP BY b.bus_id, b.company_name, b.model;

SELECT * FROM BusUtilization

-- Report 3: Student Route Assignment
-- This view provides details about which route each student is assigned to, including the stop name
CREATE VIEW StudentRouteAssignment AS
SELECT 
    s.st_id,
    s.st_name,
    r.route_name,
    rs.stop_name
FROM Student s
JOIN RouteStops rs ON s.route_stop_id = rs.route_stop_id
JOIN Routes r ON rs.route_id = r.route_id;

SELECT * FROM StudentRouteAssignment

-- Producing Reports Using Materialized Views
-- Report 1: Total Number of Students Per Route
CREATE VIEW Materialized_TotalStudentsPerRoute
WITH SCHEMABINDING
AS
SELECT
    rs.route_id,
    COUNT_BIG(*) AS total_students
FROM
    dbo.RouteStops rs
    JOIN dbo.Student s ON rs.route_stop_id = s.route_stop_id
GROUP BY
    rs.route_id;

CREATE UNIQUE CLUSTERED INDEX IDX_Materialized_TotalStudentsPerRoute ON Materialized_TotalStudentsPerRoute(route_id);

SELECT * FROM Materialized_TotalStudentsPerRoute;

-- Report 2: Total Bookings Per Bus
CREATE VIEW Materialized_TotalBookingsPerBus
WITH SCHEMABINDING
AS
SELECT
    b.bus_id,
    COUNT_BIG(*) AS total_bookings
FROM
    dbo.Bus b
    JOIN dbo.Bookings book ON b.bus_id = book.bus_id
GROUP BY
    b.bus_id;

CREATE UNIQUE CLUSTERED INDEX IDX_Materialized_TotalBookingsPerBus ON Materialized_TotalBookingsPerBus(bus_id);

SELECT * FROM Materialized_TotalBookingsPerBus;

SELECT * FROM Driver
SELECT * FROM Bus
SELECT * FROM Routes
SELECT * FROM RouteStops
SELECT * FROM Student
SELECT * FROM Bookings

DROP VIEW Materialized_TotalStudentsPerRoute
DROP VIEW Materialized_TotalBookingsPerBus