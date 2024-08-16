-- CREATE DATABASE sdg9;
-- USE sdg9
CREATE TABLE Countries (
    CountryID INT PRIMARY KEY AUTO_INCREMENT,
    CountryName VARCHAR(100) NOT NULL,
    Region VARCHAR(50),
    IncomeLevel VARCHAR(50)
);

CREATE TABLE Indicators (
    IndicatorID INT PRIMARY KEY AUTO_INCREMENT,
    IndicatorName VARCHAR(100) NOT NULL,
    Description TEXT,
    Unit VARCHAR(50)
);

CREATE TABLE DataPoints (
    DataPointID INT PRIMARY KEY AUTO_INCREMENT,
    CountryID INT,
    IndicatorID INT,
    Year INT,
    Value DECIMAL(10, 2),
    FOREIGN KEY (CountryID) REFERENCES Countries(CountryID),
    FOREIGN KEY (IndicatorID) REFERENCES Indicators(IndicatorID)
);

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY AUTO_INCREMENT,
    CountryID INT,
    ProjectName VARCHAR(100) NOT NULL,
    StartDate DATE,
    EndDate DATE,
    Budget DECIMAL(15, 2),
    Description TEXT,
    FOREIGN KEY (CountryID) REFERENCES Countries(CountryID)
);

CREATE TABLE Partnerships (
    PartnershipID INT PRIMARY KEY AUTO_INCREMENT,
    ProjectID INT,
    PartnerName VARCHAR(100),
    Contribution DECIMAL(15, 2),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

SHOW TABLES;


INSERT INTO Countries (CountryName, Region, IncomeLevel) VALUES
('Afghanistan', 'Asia', 'Low'),
('Albania', 'Europe', 'Upper Middle'),
('Algeria', 'Africa', 'Upper Middle'),
('Andorra', 'Europe', 'High'),
('Angola', 'Africa', 'Low'),
('Argentina', 'South America', 'Upper Middle'),
('Armenia', 'Asia', 'Upper Middle'),
('Australia', 'Oceania', 'High'),
('Austria', 'Europe', 'High'),
('Azerbaijan', 'Asia', 'Upper Middle'),
('Bahamas', 'North America', 'High'),
('Bahrain', 'Asia', 'High'),
('Bangladesh', 'Asia', 'Low'),
('Barbados', 'North America', 'High'),
('Belarus', 'Europe', 'Upper Middle'),
('Belgium', 'Europe', 'High'),
('Belize', 'North America', 'Upper Middle'),
('Benin', 'Africa', 'Low'),
('Bhutan', 'Asia', 'Lower Middle'),
('Bolivia', 'South America', 'Lower Middle'),
('Bosnia and Herzegovina', 'Europe', 'Upper Middle'),
('Botswana', 'Africa', 'Upper Middle'),
('Brazil', 'South America', 'Upper Middle'),
('Brunei', 'Asia', 'High'),
('Bulgaria', 'Europe', 'Upper Middle'),
('Burkina Faso', 'Africa', 'Low'),
('Burundi', 'Africa', 'Low'),
('Cabo Verde', 'Africa', 'Upper Middle'),
('Cambodia', 'Asia', 'Lower Middle'),
('Cameroon', 'Africa', 'Lower Middle'),
('Canada', 'North America', 'High'),
('Central African Republic', 'Africa', 'Low'),
('Chad', 'Africa', 'Low'),
('Chile', 'South America', 'High'),
('China', 'Asia', 'Upper Middle'),
('Colombia', 'South America', 'Upper Middle'),
('Costa Rica', 'North America', 'Upper Middle'),
('Croatia', 'Europe', 'High'),
('Cuba', 'North America', 'Upper Middle'),
('Cyprus', 'Europe', 'High'),
('Czech Republic', 'Europe', 'High'),
('Democratic Republic of the Congo', 'Africa', 'Low'),
('Denmark', 'Europe', 'High'),
('Djibouti', 'Africa', 'Lower Middle'),
('Dominican Republic', 'North America', 'Upper Middle'),
('Ecuador', 'South America', 'Upper Middle'),
('Egypt', 'Africa', 'Lower Middle'),
('El Salvador', 'North America', 'Upper Middle'),
('Equatorial Guinea', 'Africa', 'Upper Middle'),
('Eritrea', 'Africa', 'Low'),
('Estonia', 'Europe', 'High'),
('Eswatini', 'Africa', 'Upper Middle'),
('Ethiopia', 'Africa', 'Low'),
('Fiji', 'Oceania', 'Upper Middle'),
('Finland', 'Europe', 'High'),
('France', 'Europe', 'High'),
('Gabon', 'Africa', 'Upper Middle'),
('Georgia', 'Asia', 'Upper Middle'),
('Germany', 'Europe', 'High'),
('Ghana', 'Africa', 'Lower Middle'),
('Greece', 'Europe', 'High'),
('Guatemala', 'North America', 'Lower Middle'),
('Guinea', 'Africa', 'Low'),
('Guyana', 'South America', 'Upper Middle'),
('Haiti', 'North America', 'Low'),
('Honduras', 'North America', 'Lower Middle'),
('Hungary', 'Europe', 'High'),
('Iceland', 'Europe', 'High'),
('India', 'Asia', 'Lower Middle'),
('Indonesia', 'Asia', 'Lower Middle'),
('Iran', 'Asia', 'Upper Middle'),
('Iraq', 'Asia', 'Upper Middle'),
('Ireland', 'Europe', 'High'),
('Israel', 'Asia', 'High'),
('Italy', 'Europe', 'High'),
('Jamaica', 'North America', 'Upper Middle'),
('Japan', 'Asia', 'High'),
('Jordan', 'Asia', 'Upper Middle'),
('Kazakhstan', 'Asia', 'Upper Middle'),
('Kenya', 'Africa', 'Lower Middle'),
('Kuwait', 'Asia', 'High'),
('Kyrgyzstan', 'Asia', 'Lower Middle'),
('Laos', 'Asia', 'Lower Middle'),
('Latvia', 'Europe', 'High'),
('Lebanon', 'Asia', 'Upper Middle'),
('Lesotho', 'Africa', 'Lower Middle'),
('Liberia', 'Africa', 'Low'),
('Libya', 'Africa', 'Upper Middle'),
('Lithuania', 'Europe', 'High'),
('Luxembourg', 'Europe', 'High'),
('Madagascar', 'Africa', 'Low'),
('Malawi', 'Africa', 'Low'),
('Malaysia', 'Asia', 'Upper Middle'),
('Maldives', 'Asia', 'Upper Middle'),
('Mali', 'Africa', 'Low'),
('Malta', 'Europe', 'High'),
('Mauritania', 'Africa', 'Lower Middle'),
('Mexico', 'North America', 'Upper Middle'),
('Moldova', 'Europe', 'Lower Middle'),
('Monaco', 'Europe', 'High'),
('Mongolia', 'Asia', 'Lower Middle'),
('Montenegro', 'Europe', 'Upper Middle'),
('Morocco', 'Africa', 'Upper Middle'),
('Mozambique', 'Africa', 'Low'),
('Myanmar', 'Asia', 'Lower Middle'),
('Namibia', 'Africa', 'Upper Middle'),
('Nepal', 'Asia', 'Lower Middle'),
('Netherlands', 'Europe', 'High'),
('New Zealand', 'Oceania', 'High'),
('Nicaragua', 'North America', 'Lower Middle'),
('Niger', 'Africa', 'Low'),
('Nigeria', 'Africa', 'Lower Middle'),
('North Macedonia', 'Europe', 'Upper Middle'),
('Norway', 'Europe', 'High'),
('Oman', 'Asia', 'High'),
('Pakistan', 'Asia', 'Lower Middle'),
('Panama', 'North America', 'Upper Middle'),
('Papua New Guinea', 'Oceania', 'Lower Middle'),
('Paraguay', 'South America', 'Upper Middle'),
('Peru', 'South America', 'Upper Middle'),
('Philippines', 'Asia', 'Lower Middle'),
('Poland', 'Europe', 'High'),
('Portugal', 'Europe', 'High'),
('Qatar', 'Asia', 'High'),
('Romania', 'Europe', 'Upper Middle'),
('Rwanda', 'Africa', 'Lower Middle'),
('Saudi Arabia', 'Asia', 'High'),
('Senegal', 'Africa', 'Lower Middle'),
('Serbia', 'Europe', 'Upper Middle'),
('Sierra Leone', 'Africa', 'Low'),
('Singapore', 'Asia', 'High'),
('Slovakia', 'Europe', 'High'),
('Slovenia', 'Europe', 'High'),
('Solomon Islands', 'Oceania', 'Upper Middle'),
('Somalia', 'Africa', 'Low'),
('South Africa', 'Africa', 'Upper Middle'),
('South Korea', 'Asia', 'High'),
('South Sudan', 'Africa', 'Low'),
('Spain', 'Europe', 'High'),
('Sri Lanka', 'Asia', 'Upper Middle'),
('Sudan', 'Africa', 'Lower Middle'),
('Sweden', 'Europe', 'High'),
('Switzerland', 'Europe', 'High'),
('Tajikistan', 'Asia', 'Lower Middle'),
('Tanzania', 'Africa', 'Lower Middle'),
('Thailand', 'Asia', 'Upper Middle'),
('Togo', 'Africa', 'Low'),
('Trinidad and Tobago', 'North America', 'High'),
('Tunisia', 'Africa', 'Upper Middle'),
('Turkey', 'Asia', 'Upper Middle'),
('Turkmenistan', 'Asia', 'Upper Middle'),
('Uganda', 'Africa', 'Lower Middle'),
('Ukraine', 'Europe', 'Upper Middle'),
('United Arab Emirates', 'Asia', 'High'),
('United Kingdom', 'Europe', 'High'),
('United States', 'North America', 'High'),
('Uruguay', 'South America', 'Upper Middle'),
('Uzbekistan', 'Asia', 'Lower Middle'),
('Vanuatu', 'Oceania', 'Upper Middle'),
('Venezuela', 'South America', 'Upper Middle'),
('Vietnam', 'Asia', 'Lower Middle'),
('Yemen', 'Asia', 'Low'),
('Zambia', 'Africa', 'Lower Middle'),
('Zimbabwe', 'Africa', 'Lower Middle');



INSERT INTO Indicators (IndicatorName, Description, Unit) VALUES
('Internet Penetration', 'Percentage of population with internet access', '%'),
('Manufacturing Employment', 'Percentage of total employment in manufacturing', '%'),
('R&D Expenditure', 'Research and development expenditure as a percentage of GDP', '%'),
('Access to Electricity', 'Percentage of population with access to electricity', '%'),
('Mobile Network Coverage', 'Percentage of population covered by a mobile network', '%');

INSERT INTO DataPoints (CountryID, IndicatorID, Year, Value) VALUES
(1, 1, 2022, 10.5), (1, 1, 2023, 12.0),
(1, 2, 2022, 15.0), (1, 2, 2023, 16.5),
(1, 3, 2022, 0.2), (1, 3, 2023, 0.3),
(1, 4, 2022, 20.0), (1, 4, 2023, 25.0),
(1, 5, 2022, 50.0), (1, 5, 2023, 55.0),

(2, 1, 2022, 80.0), (2, 1, 2023, 82.5),
(2, 2, 2022, 25.0), (2, 2, 2023, 27.0),
(2, 3, 2022, 1.5), (2, 3, 2023, 1.8),
(2, 4, 2022, 95.0), (2, 4, 2023, 96.0),
(2, 5, 2022, 90.0), (2, 5, 2023, 92.0),

-- Repeat for other countries, changing the CountryID accordingly
(3, 1, 2022, 60.0), (3, 1, 2023, 62.0),
(3, 2, 2022, 30.0), (3, 2, 2023, 32.0),
(3, 3, 2022, 0.5), (3, 3, 2023, 0.6),
(3, 4, 2022, 75.0), (3, 4, 2023, 77.0),
(3, 5, 2022, 85.0), (3, 5, 2023, 87.0),

-- Continue this pattern for all 50 countries
(4, 1, 2022, 90.0), (4, 1, 2023, 91.0),
(4, 2, 2022, 40.0), (4, 2, 2023, 42.0),
(4, 3, 2022, 2.0), (4, 3, 2023, 2.2),
(4, 4, 2022, 99.0), (4, 4, 2023, 99.5),
(4, 5, 2022, 95.0), (4, 5, 2023, 96.0),

-- Add similar entries for remaining countries
(5, 1, 2022, 15.0), (5, 1, 2023, 16.0),
(5, 2, 2022, 10.0), (5, 2, 2023, 11.0),
(5, 3, 2022, 0.1), (5, 3, 2023, 0.15),
(5, 4, 2022, 30.0), (5, 4, 2023, 35.0),
(5, 5, 2022, 20.0), (5, 5, 2023, 22.0);


INSERT INTO Projects (CountryID, ProjectName, StartDate, EndDate, Budget, Description) VALUES
(1, 'Infrastructure Development Project', '2023-01-01', '2025-12-31', 5000000, 'Developing sustainable infrastructure.'),
(2, 'Digital Connectivity Initiative', '2023-01-01', '2024-12-31', 3000000, 'Improving internet access in rural areas.'),
(3, 'Renewable Energy Project', '2023-01-01', '2025-12-31', 7000000, 'Expanding access to renewable energy sources.'),
(4, 'Manufacturing Support Program', '2023-01-01', '2024-12-31', 4000000, 'Supporting local manufacturing industries.'),
(5, 'Research and Development Fund', '2023-01-01', '2025-12-31', 2000000, 'Encouraging innovation and technology development.');

INSERT INTO Partnerships (ProjectID, PartnerName, Contribution) VALUES
(1, 'Partner Organization A', 2000000),
(1, 'Partner Organization B', 1500000),
(2, 'Partner Organization C', 1000000),
(3, 'Partner Organization D', 3000000),
(4, 'Partner Organization E', 2500000),
(5, 'Partner Organization F', 500000);

-- PART3 
-- Retrieve All Countries with Their Income Levels and Regions
SELECT CountryID, CountryName, Region, IncomeLevel
FROM Countries;

-- All Indicators with Descriptions
SELECT IndicatorID, IndicatorName, Description, Unit
FROM Indicators;

-- Retrieve Data Points for a Specific Country 
SELECT dp.Year, i.IndicatorName, dp.Value
FROM DataPoints dp
JOIN Indicators i ON dp.IndicatorID = i.IndicatorID
WHERE dp.CountryID = 1;

-- List All Projects for a Specific Country 
SELECT ProjectID, ProjectName, StartDate, EndDate, Budget, Description
FROM Projects
WHERE CountryID = 2;

-- Retrieve Partnerships for a Specific Project

SELECT PartnerName, Contribution
FROM Partnerships
WHERE ProjectID = 1;

--  the Average Internet Penetration Across All Countries for 2023
SELECT AVG(dp.Value) AS AverageInternetPenetration
FROM DataPoints dp
JOIN Indicators i ON dp.IndicatorID = i.IndicatorID
WHERE i.IndicatorName = 'Internet Penetration' AND dp.Year = 2023;


-- Find Countries with Manufacturing Employment Greater Than 20% in 2023

SELECT c.CountryName, dp.Value AS ManufacturingEmployment
FROM DataPoints dp
JOIN Countries c ON dp.CountryID = c.CountryID
JOIN Indicators i ON dp.IndicatorID = i.IndicatorID
WHERE i.IndicatorName = 'Manufacturing Employment' AND dp.Year = 2023 AND dp.Value > 20;


-- Total Budget for All Projects in Each Country

SELECT c.CountryName, SUM(p.Budget) AS TotalBudget
FROM Projects p
JOIN Countries c ON p.CountryID = c.CountryID
GROUP BY c.CountryName;

-- Count of Projects by Income Level

SELECT c.IncomeLevel, COUNT(p.ProjectID) AS ProjectCount
FROM Projects p
JOIN Countries c ON p.CountryID = c.CountryID
GROUP BY c.IncomeLevel;


-- Percentage of Population with Access to Electricity by Country
SELECT c.CountryName, dp.Value AS AccessToElectricity
FROM DataPoints dp
JOIN Countries c ON dp.CountryID = c.CountryID
JOIN Indicators i ON dp.IndicatorID = i.IndicatorID
WHERE i.IndicatorName = 'Access to Electricity' AND dp.Year = 2023;

-- Identify Countries with Low R&D Expenditure (Less Than 1% of GDP)

SELECT c.CountryName, dp.Value AS RDExpenditure
FROM DataPoints dp
JOIN Countries c ON dp.CountryID = c.CountryID
JOIN Indicators i ON dp.IndicatorID = i.IndicatorID
WHERE i.IndicatorName = 'R&D Expenditure' AND dp.Year = 2023 AND dp.Value < 1;
