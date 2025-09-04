Use chinook;
Show Tables;
-- ==========================================
-- 1. Combine Product and Sales Tables
-- ==========================================
CREATE TABLE IF NOT EXISTS ProductSales AS
SELECT 
    il.InvoiceLineId,
    t.TrackId,
    t.Name AS ProductName,
    a.Title AS AlbumTitle,
    ar.Name AS ArtistName,
    c.CustomerId,
    c.FirstName,
    c.LastName,
    c.Country,
    i.InvoiceId,
    i.InvoiceDate,
    il.Quantity,
    il.UnitPrice,
    il.Quantity * il.UnitPrice AS TotalSale
FROM 
    InvoiceLine il
JOIN 
    Invoice i ON il.InvoiceId = i.InvoiceId
JOIN 
    Customer c ON i.CustomerId = c.CustomerId
JOIN 
    Track t ON il.TrackId = t.TrackId
JOIN 
    Album a ON t.AlbumId = a.AlbumId
JOIN 
    Artist ar ON a.ArtistId = ar.ArtistId;

-- ==========================================
-- 2. Top-Selling Products Table
-- ==========================================
CREATE TABLE IF NOT EXISTS TopProducts AS
SELECT 
    t.TrackId,
    t.Name AS ProductName,
    a.Title AS AlbumTitle,
    ar.Name AS ArtistName,
    SUM(il.Quantity) AS TotalQuantitySold,
    SUM(il.Quantity * il.UnitPrice) AS TotalRevenue
FROM 
    InvoiceLine il
JOIN 
    Track t ON il.TrackId = t.TrackId
JOIN 
    Album a ON t.AlbumId = a.AlbumId
JOIN 
    Artist ar ON a.ArtistId = ar.ArtistId
GROUP BY 
    t.TrackId, t.Name, a.Title, ar.Name
ORDER BY 
    TotalRevenue DESC;

-- ==========================================
-- 3. Revenue Per Region Table
-- ==========================================
CREATE TABLE IF NOT EXISTS RevenuePerRegion AS
SELECT 
    c.Country,
    SUM(il.Quantity * il.UnitPrice) AS TotalRevenue
FROM 
    Customer c
JOIN 
    Invoice i ON c.CustomerId = i.CustomerId
JOIN 
    InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY 
    c.Country
ORDER BY 
    TotalRevenue DESC;

-- ==========================================
-- 4. Monthly Performance Table
-- ==========================================
CREATE TABLE IF NOT EXISTS MonthlyPerformance AS
SELECT 
    DATE_FORMAT(i.InvoiceDate, '%Y-%m') AS Month,
    SUM(il.Quantity * il.UnitPrice) AS MonthlyRevenue
FROM 
    Invoice i
JOIN 
    InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY 
    Month
ORDER BY 
    Month;

-- ==========================================
-- 5. Product Rankings Table (Global Revenue)
-- ==========================================
CREATE TABLE IF NOT EXISTS ProductRankings AS
SELECT 
    ProductName,
    AlbumTitle,
    ArtistName,
    TotalRevenue,
    RANK() OVER (ORDER BY TotalRevenue DESC) AS RevenueRank
FROM (
    SELECT 
        t.Name AS ProductName,
        a.Title AS AlbumTitle,
        ar.Name AS ArtistName,
        SUM(il.Quantity * il.UnitPrice) AS TotalRevenue
    FROM 
        InvoiceLine il
    JOIN 
        Track t ON il.TrackId = t.TrackId
    JOIN 
        Album a ON t.AlbumId = a.AlbumId
    JOIN 
        Artist ar ON a.ArtistId = ar.ArtistId
    GROUP BY 
        t.TrackId, t.Name, a.Title, ar.Name
) AS ProductRevenue
ORDER BY RevenueRank;

-- ==========================================
-- 6. Product Rankings Per Country Table
-- ==========================================
CREATE TABLE IF NOT EXISTS ProductRankingsPerCountry AS
SELECT 
    ProductName,
    AlbumTitle,
    ArtistName,
    Country,
    Revenue,
    CountryRank
FROM (
    SELECT 
        t.Name AS ProductName,
        a.Title AS AlbumTitle,
        ar.Name AS ArtistName,
        c.Country,
        SUM(il.Quantity * il.UnitPrice) AS Revenue,
        RANK() OVER (PARTITION BY c.Country ORDER BY SUM(il.Quantity * il.UnitPrice) DESC) AS CountryRank
    FROM 
        InvoiceLine il
    JOIN 
        Invoice i ON il.InvoiceId = i.InvoiceId
    JOIN 
        Customer c ON i.CustomerId = c.CustomerId
    JOIN 
        Track t ON il.TrackId = t.TrackId
    JOIN 
        Album a ON t.AlbumId = a.AlbumId
    JOIN 
        Artist ar ON a.ArtistId = ar.ArtistId
    GROUP BY 
        t.TrackId, t.Name, a.Title, ar.Name, c.Country
) AS RankedProducts
ORDER BY Country, CountryRank;
