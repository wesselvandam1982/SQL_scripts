-- My_business create Clients Table

DROP TABLE Clients;

CREATE TABLE Clients (
  `Client_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` char(2) NOT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
);

INSERT INTO Clients VALUES 
(1,'Vinte','3 Nevada Parkway','Syracuse','NY','315-252-7305'),
(2,'Myworks','34267 Glendale Parkway','Huntington','WV','304-659-1170'),
(3,'Yadel','096 Pawling Parkway','San Francisco','CA','415-144-6037'),
(4,'Kwideo','81674 Westerfield Circle','Waco','TX','254-750-0784'),
(5,'Roedel','0863 Farmco Road','Portland','OR','971-888-9129'),
(6,'Smith','192 Main Street','Philadelphia','PA','971-888-9129'),
(7,'Kramer','1233 Gamecock Alley','Columbia','SC','932-848-9129'),
(8,'Mason','3211 Village Road','Manhattan','NY','921-848-9129'),
(9,'Sridi','43 Ramp Street','San Diego','CA','471-888-9149'),
(10,'Water','18 Huger Road','San Diego','CA','671-848-9329');


SELECT *
FROM Clients