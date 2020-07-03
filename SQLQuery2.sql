﻿set IDENTITY_INSERT Stations ON;

TRUNCATE TABLE Stations;
insert into Stations (Id, Name, Status, Location, CreatedAt) 
values 
(1, 'A', 1, geography::Point(21.024226, 105.841101, 4326), '6/20/2020'),
(2, 'B', 1, geography::Point(20.242130, 105.974545, 4326), '6/20/2020'),
(3, 'C', 1, geography::Point(19.811254, 105.767987, 4326), '6/20/2020'),
(4, 'D', 1, geography::Point(18.688177, 105.664013, 4326), '6/20/2020'),
(5, 'E', 1, geography::Point(17.468948, 106.599811, 4326), '6/20/2020'),
(6, 'F', 1, geography::Point(16.456506, 107.578081, 4326), '6/20/2020'),
(7, 'G', 1, geography::Point(15.121030, 108.781340, 4326), '6/20/2020'),
(8, 'H', 1, geography::Point(13.777490, 109.225440, 4326), '6/20/2020'),
(9, 'J', 1, geography::Point(12.248504, 109.184215, 4326), '6/20/2020'),
(10, 'K', 1, geography::Point(10.941341, 108.082123, 4326), '6/20/2020'),
(11, 'M', 1, geography::Point(10.782265, 106.677176, 4326), '6/20/2020')
set IDENTITY_INSERT Stations OFF;

set IDENTITY_INSERT Trains ON;
TRUNCATE TABLE Trains;
insert into Trains (Id, Code, Status, CreatedAt) 
values 
(1, 'LP1', 1, '6/20/2020'),
(2, 'HP3', 1, '6/20/2020'),
(3, 'LP2', 1, '6/20/2020'),
(4, 'HM5', 1, '6/20/2020'),
(5, 'HM4', 1, '6/20/2020');
set IDENTITY_INSERT Trains OFF;

set IDENTITY_INSERT TrainStations ON;
TRUNCATE TABLE TrainStations;
insert into TrainStations (Id, IdTrain, IdStation, IndexNumber, DistancePreStation, ArrivalTime, Status, CreatedAt) 
values 
(1, 1, 1, 0, 0, 23400000, 1, '6/20/2020'),
(2, 1, 2, 1, 30000, 27000000, 1, '6/20/2020'),
(3, 1, 3, 2, 40000, 27900000, 1, '6/20/2020'),
(4, 1, 4, 3, 80000, 29700000, 1, '6/20/2020'),
(5, 1, 5, 4, 10000, 33300000, 1, '6/20/2020'),
(6, 1, 6, 5, 12000, 36600000, 1, '6/20/2020'),
(7, 1, 7, 6, 30000, 43200000, 1, '6/20/2020'),
(8, 1, 8, 7, 32000, 49500000, 1, '6/20/2020'),
(9, 2, 5, 0, 0, 34200000, 1,'6/20/2020'),
(10, 2, 6, 1, 12000, 37800000, 1,'6/20/2020'),
(11, 2, 7, 2, 32000, 45000000, 1,'6/20/2020'),
(12, 2, 8, 3, 32000, 51300000, 1,'6/20/2020'),
(13, 3, 4, 0, 0, 28800000, 1,'6/20/2020'),
(14, 3, 5, 1, 32000, 31500000, 1,'6/20/2020'),
(15, 3, 6, 2, 34000, 38700000, 1,'6/20/2020'),
(16, 3, 7, 3, 54000, 45900000, 1,'6/20/2020'),
(17, 3, 8, 4, 20000, 48600000, 1,'6/20/2020'),
(18, 3, 9, 5, 20000, 50400000, 1,'6/20/2020'),
(19, 3, 10, 6, 32000, 54000000, 1, '6/20/2020'),
(20, 4, 9, 0, 0, 48600000, 1,'6/20/2020'),
(21, 4, 10, 1, 54000, 52200000, 1, '6/20/2020'),
(22, 4, 11, 2, 34000, 57000000, 1, '6/20/2020'),
(23, 5, 9, 2, 12000, 49000000, 1,'6/20/2020'),
(24, 5, 10, 1, 11000, 41800000, 1,'6/20/2020'),
(25, 5, 11, 0, 0, 38200000, 1,'6/20/2020');
set IDENTITY_INSERT TrainStations OFF;

set IDENTITY_INSERT TrainCarTypes ON;
TRUNCATE TABLE TrainCarTypes;
insert into TrainCarTypes (Id, Code, Name, Status, CreatedAt) 
values 
(1, 'TCT-1', 'Loại thường', 1, '6/20/2020'),
(2, 'TCT-2', 'Điều hoà các thứ', 1, '6/20/2020'),
(3, 'TCT-3', 'Giường nằm luôn', 1, '6/20/2020')
set IDENTITY_INSERT TrainCarTypes OFF;

set IDENTITY_INSERT TrainCars ON;
TRUNCATE TABLE TrainCars;
insert into TrainCars (Id, IdTrain, IdTrainCarType, IndexNumber, Status, CreatedAt) 
values
(1, 1, 2, 0, 1,'6/20/2020'),
(2, 1, 2, 1, 1, '6/20/2020'),
(3, 1, 2, 2, 1, '6/20/2020'),
(4, 1, 2, 3, 1, '6/20/2020'),
(5, 1, 1, 4, 1, '6/20/2020'),
(6, 1, 1, 5, 1, '6/20/2020'),
(7, 1, 1, 6, 1, '6/20/2020'),

(8, 2, 2, 0, 1, '6/20/2020'),
(9, 2, 2, 1, 1, '6/20/2020'),
(10, 2, 2, 2, 1, '6/20/2020'),
(11, 2, 2, 3, 1, '6/20/2020'),
(12, 2, 2, 4, 1, '6/20/2020'),
(13, 2, 1, 5, 1, '6/20/2020'),
(14, 2, 1, 6, 1, '6/20/2020'),
(15, 2, 1, 7, 1, '6/20/2020'),

(17, 3, 3, 0, 1, '6/20/2020'),
(18, 3, 3, 1, 1, '6/20/2020'),
(19, 3, 3, 2, 1, '6/20/2020'),
(20, 3, 3, 3, 1, '6/20/2020'),
(21, 3, 3, 4, 1, '6/20/2020'),
(22, 3, 3, 5, 1, '6/20/2020'),
(23, 3, 3, 6, 1, '6/20/2020'),
(24, 3, 3, 7, 1, '6/20/2020'),
(25, 3, 3, 8, 1, '6/20/2020'),

(26, 4, 2, 0, 1, '6/20/2020'),
(27, 4, 2, 1, 1, '6/20/2020'),
(28, 4, 2, 2, 1, '6/20/2020'),
(29, 4, 2, 3, 1, '6/20/2020'),
(30, 4, 1, 4, 1, '6/20/2020'),
(31, 4, 1, 5, 1, '6/20/2020'),
(32, 4, 1, 6, 1, '6/20/2020'),
 
(33, 5, 3, 0, 1, '6/20/2020'),
(34, 5, 3, 1, 1, '6/20/2020'),
(35, 5, 3, 2, 1, '6/20/2020'),
(36, 5, 3, 3, 1, '6/20/2020'),
(37, 5, 2, 4, 1, '6/20/2020'),
(38, 5, 2, 5, 1, '6/20/2020'),
(39, 5, 2, 6, 1, '6/20/2020'),
(40, 5, 2, 7, 1, '6/20/2020'),
(41, 5, 1, 8, 1, '6/20/2020'),
(42, 5, 1, 9, 1, '6/20/2020')

set IDENTITY_INSERT TrainCars OFF;


set IDENTITY_INSERT SeatTypes ON;
TRUNCATE TABLE SeatTypes;
insert into SeatTypes (Id, IdTrainCarType, Name, Price, Status, CreatedAt) 
values
(1, 1, 'Ghế Thường 1', 1600, 1, '6/20/2020'),
(2, 1, 'Ghế đặc biệt 1', 1400, 1, '6/20/2020'),
(3, 2, 'Ghế Thường 2', 1800, 1, '6/20/2020'),
(4, 2, 'Ghế đặc biệt 2', 2000, 1, '6/20/2020'),
(5, 3, 'Tầng 1', 3000, 1, '6/20/2020'),
(6, 3, 'Tầng 2', 2500, 1, '6/20/2020');

set IDENTITY_INSERT SeatTypes OFF;

TRUNCATE TABLE Seats;
insert into Seats (SeatNo, IdSeatType, Status, CreatedAt) 
values
(1, 1, 1, '6/20/2020'),
(2, 1, 1, '6/20/2020'),
(3, 1, 1, '6/20/2020'),
(4, 1, 1, '6/20/2020'),
(5, 1, 1, '6/20/2020'),
(6, 1, 1, '6/20/2020'),
(7, 1, 1, '6/20/2020'),
(8, 1, 1, '6/20/2020'),
(9, 1, 1, '6/20/2020'),
(10, 1, 1, '6/20/2020'),
(11, 1, 1, '6/20/2020'),
(12, 1, 1, '6/20/2020'),
(13, 1, 1, '6/20/2020'),
(14, 1, 1, '6/20/2020'),
(15, 1, 1, '6/20/2020'),
(16, 1, 1, '6/20/2020'),
(17, 1, 1, '6/20/2020'),
(18, 1, 1, '6/20/2020'),
(19, 1, 1, '6/20/2020'),
(20, 1, 1, '6/20/2020'),
(21, 1, 1, '6/20/2020'),
(22, 1, 1, '6/20/2020'),
(23, 1, 1, '6/20/2020'),
(24, 1, 1, '6/20/2020'),
(25, 1, 1, '6/20/2020'),
(26, 1, 1, '6/20/2020'),
(27, 1, 1, '6/20/2020'),
(28, 1, 1, '6/20/2020'),
(29, 1, 1, '6/20/2020'),
(30, 1, 1, '6/20/2020'),
(31, 1, 1, '6/20/2020'),
(32, 1, 1, '6/20/2020'),
(33, 1, 1, '6/20/2020'),
(34, 1, 1, '6/20/2020'),
(35, 1, 1, '6/20/2020'),
(36, 1, 1, '6/20/2020'),
(37, 1, 1, '6/20/2020'),
(38, 1, 1, '6/20/2020'),
(39, 1, 1, '6/20/2020'),
(40, 1, 1, '6/20/2020'),
(41, 2, 1, '06/20/2020'),
(42, 2, 1, '06/20/2020'),
(43, 2, 1, '06/20/2020'),
(44, 2, 1, '06/20/2020'),
(45, 2, 1, '06/20/2020'),
(46, 2, 1, '06/20/2020'),
(47, 2, 1, '06/20/2020'),
(48, 2, 1, '06/20/2020'),
(49, 2, 1, '06/20/2020'),
(50, 2, 1, '06/20/2020'),
(51, 2, 1, '06/20/2020'),
(52, 2, 1, '06/20/2020'),
(53, 2, 1, '06/20/2020'),
(54, 2, 1, '06/20/2020'),
(55, 2, 1, '06/20/2020'),
(56, 2, 1, '06/20/2020'),
(57, 2, 1, '06/20/2020'),
(58, 2, 1, '06/20/2020'),
(59, 2, 1, '06/20/2020'),
(60, 2, 1, '06/20/2020'),
(61, 2, 1, '06/20/2020'),
(62, 2, 1, '06/20/2020'),
(63, 2, 1, '06/20/2020'),
(1, 3, 1, '06/20/2020'),
(2, 3, 1, '06/20/2020'),
(3, 3, 1, '06/20/2020'),
(4, 3, 1, '06/20/2020'),
(5, 3, 1, '06/20/2020'),
(6, 3, 1, '06/20/2020'),
(7, 3, 1, '06/20/2020'),
(8, 3, 1, '06/20/2020'),
(9, 3, 1, '06/20/2020'),
(10, 3, 1, '06/20/2020'),
(11, 3, 1, '06/20/2020'),
(12, 3, 1, '06/20/2020'),
(13, 3, 1, '06/20/2020'),
(14, 3, 1, '06/20/2020'),
(15, 3, 1, '06/20/2020'),
(16, 3, 1, '06/20/2020'),
(17, 3, 1, '06/20/2020'),
(18, 3, 1, '06/20/2020'),
(19, 3, 1, '06/20/2020'),
(20, 3, 1, '06/20/2020'),
(21, 3, 1, '06/20/2020'),
(22, 3, 1, '06/20/2020'),
(23, 3, 1, '06/20/2020'),
(24, 3, 1, '06/20/2020'),
(25, 3, 1, '06/20/2020'),
(26, 3, 1, '06/20/2020'),
(27, 3, 1, '06/20/2020'),
(28, 3, 1, '06/20/2020'),
(29, 3, 1, '06/20/2020'),
(30, 3, 1, '06/20/2020'),
(31, 3, 1, '06/20/2020'),
(32, 3, 1, '06/20/2020'),
(33, 3, 1, '06/20/2020'),
(34, 3, 1, '06/20/2020'),
(35, 3, 1, '06/20/2020'),
(36, 3, 1, '06/20/2020'),
(36, 4, 1, '06/20/2020'),
(38, 4, 1, '06/20/2020'),
(39, 4, 1, '06/20/2020'),
(40, 4, 1, '06/20/2020'),
(41, 4, 1, '06/20/2020'),
(42, 4, 1, '06/20/2020'),
(43, 4, 1, '06/20/2020'),
(44, 4, 1, '06/20/2020'),
(45, 4, 1, '06/20/2020'),
(46, 4, 1, '06/20/2020'),
(47, 4, 1, '06/20/2020'),
(48, 4, 1, '06/20/2020'),
(49, 4, 1, '06/20/2020'),
(50, 4, 1, '06/20/2020'),
(51, 4, 1, '06/20/2020'),
(52, 4, 1, '06/20/2020'),
(53, 4, 1, '06/20/2020'),
(54, 4, 1, '06/20/2020'),
(55, 4, 1, '06/20/2020'),
(56, 4, 1, '06/20/2020'),
(1, 5, 1, '06/20/2020'),
(2, 5, 1, '06/20/2020'),
(3, 5, 1, '06/20/2020'),
(4, 5, 1, '06/20/2020'),
(5, 5, 1, '06/20/2020'),
(6, 5, 1, '06/20/2020'),
(7, 5, 1, '06/20/2020'),
(8, 5, 1, '06/20/2020'),
(9, 5, 1, '06/20/2020'),
(10, 5, 1, '06/20/2020'),
(11, 5, 1, '06/20/2020'),
(12, 5, 1, '06/20/2020'),
(13, 5, 1, '06/20/2020'),
(14, 5, 1, '06/20/2020'),
(15, 5, 1, '06/20/2020'),
(16, 5, 1, '06/20/2020'),
(17, 5, 1, '06/20/2020'),
(18, 5, 1, '06/20/2020'),
(19, 5, 1, '06/20/2020'),
(20, 5, 1, '06/20/2020'),
(21, 5, 1, '06/20/2020'),
(22, 5, 1, '06/20/2020'),
(23, 5, 1, '06/20/2020'),
(24, 5, 1, '06/20/2020'),
(25, 5, 1, '06/20/2020'),
(26, 5, 1, '06/20/2020'),
(27, 6, 1, '06/20/2020'),
(28, 6, 1, '06/20/2020'),
(29, 6, 1, '06/20/2020'),
(30, 6, 1, '06/20/2020'),
(31, 6, 1, '06/20/2020'),
(32, 6, 1, '06/20/2020'),
(33, 6, 1, '06/20/2020'),
(34, 6, 1, '06/20/2020'),
(35, 6, 1, '06/20/2020'),
(36, 6, 1, '06/20/2020'),
(37, 6, 1, '06/20/2020'),
(38, 6, 1, '06/20/2020'),
(39, 6, 1, '06/20/2020'),
(40, 6, 1, '06/20/2020'),
(41, 6, 1, '06/20/2020'),
(42, 6, 1, '06/20/2020'),
(43, 6, 1, '06/20/2020'),
(44, 6, 1, '06/20/2020'),
(45, 6, 1, '06/20/2020'),
(46, 6, 1, '06/20/2020'),
(47, 6, 1, '06/20/2020'),
(48, 6, 1, '06/20/2020'),
(49, 6, 1, '06/20/2020'),
(50, 6, 1, '06/20/2020');

set IDENTITY_INSERT ObjectPassengers ON;
TRUNCATE TABLE ObjectPassengers;
insert into ObjectPassengers (Id, Name, PricePercent) 
values 
(1, 'Người lớn', 0),
(2, 'Trẻ con', 20),
(3, 'Sinh viên', 10)
set IDENTITY_INSERT ObjectPassengers OFF;

set IDENTITY_INSERT Orders ON;
TRUNCATE TABLE Orders;
insert into Orders (Id, TotalPrice, Email, Name, Phone) 
values 
(1, 1000000, 'test1@gmail.com', 'Hoài Nam', '02323489'),
(2, 1200000, 'test2@gmail.com', 'Dương Phú', '02342347')
set IDENTITY_INSERT Orders OFF;

TRUNCATE TABLE Tickets;
insert into Tickets (IdSource, IdDestination, IdTrainCar, IdSeat, IdOrder, IdObject, PassengerName, IdentityNumber, Price, DepartureDay, Status, CreatedAt) 
values 
(1, 2, 1, 64, 1, 1, 'Hoài Nam', 'TDST', 75000, '30/06/2020', 1, '6/20/2020'),
(3, 5, 1, 69, 1, 2, 'Hoài Nam1',  'TDST', 75000, '30/06/2020', 1, '6/20/2020'),
(1, 2, 1, 66, 2, 3, 'Hoài Nam2',  'TDST', 75000, '30/06/2020', 1, '6/20/2020'),
(1, 2, 1, 67, 2, 1, 'Hoài Nam',  'TDST', 75000, '30/06/2020', 1, '6/20/2020')

