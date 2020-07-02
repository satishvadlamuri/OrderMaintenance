CREATE SCHEMA `OrderMaintaince`;
use orderMaintaince;
CREATE TABLE `OrderTable` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `OrderData` varchar(100) NOT NULL,
  `OrderDate` DATETIME NOT NULL,
  `BuyerName` varchar(50) NOT NULL,
  `ShipTo` varchar(400) NOT NULL,  
  PRIMARY KEY (`OrderID`)
)AUTO_INCREMENT=100000;

CREATE TABLE `ReturnDetails` (
  `OrderID` varchar(6) NOT NULL,
  `ReturnType` varchar(50) NOT NULL,
  `ReturnReason` varchar(100) NOT NULL,
  `Comments` varchar(50) default NUll,
  `AdditionalComments` varchar(50) NOT NULL,
  KEY `FK_ReturnDetails` (`OrderID`)  
);