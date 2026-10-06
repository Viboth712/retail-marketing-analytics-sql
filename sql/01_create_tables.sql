-- Retail Marketing Analytics Database
-- Step 1: create the 12 tables
-- Author: Nouviboth Ra
-- Sample data only: created for a retail case study, not real company data.

-- USER_TYPE
-- Classifies users into Premium, Existing, or New segments
CREATE TABLE USER_TYPE (
    UType_ID    INT          PRIMARY KEY,
    Type_Name   VARCHAR(100) NOT NULL,
    Description TEXT
);

-- USER
-- Registered customers or website visitors
CREATE TABLE USER (
    UID            INT          PRIMARY KEY,
    First_Name     VARCHAR(100) NOT NULL,
    Last_Name      VARCHAR(100) NOT NULL,
    User_Email     VARCHAR(255) UNIQUE NOT NULL,
    Gender         VARCHAR(20),
    Street_Address VARCHAR(255),
    Suburb         VARCHAR(100),
    Post_Code      VARCHAR(10),
    SignUp_Date    DATE,
    UType_ID       INT          NOT NULL,
    FOREIGN KEY (UType_ID) REFERENCES USER_TYPE(UType_ID)
);

-- CAMPAIGN
-- Marketing campaigns run across social media platforms
CREATE TABLE CAMPAIGN (
    Campaign_ID   INT           PRIMARY KEY,
    Campaign_Name VARCHAR(255)  NOT NULL,
    Start_Date    DATE,
    End_Date      DATE,
    Budget        DECIMAL(12,2),
    Objective     TEXT
);

-- ADVERTISEMENT
-- Individual ads published under a campaign on a platform
CREATE TABLE ADVERTISEMENT (
    Ads_ID         INT          PRIMARY KEY,
    Campaign_ID    INT          NOT NULL,
    Ads_Name       VARCHAR(255),
    Ads_Format     VARCHAR(100),
    Content_Type   VARCHAR(100),
    Call_To_Action VARCHAR(255),
    Post_Date      DATE,
    Platform_Name  VARCHAR(100),
    Platform_ID    INT,
    FOREIGN KEY (Campaign_ID) REFERENCES CAMPAIGN(Campaign_ID)
);

-- PRODUCT_CATEGORY
-- Normalised product category lookup table
CREATE TABLE PRODUCT_CATEGORY (
    Category_ID   INT          PRIMARY KEY,
    Category_Name VARCHAR(100) NOT NULL,
    Description   TEXT
);

-- PRODUCT
-- Products listed on the retailer's website
-- Category normalised via FK to PRODUCT_CATEGORY
CREATE TABLE PRODUCT (
    SKU          VARCHAR(100) PRIMARY KEY,
    Product_Name VARCHAR(255) NOT NULL,
    Brand        VARCHAR(100),
    Listed_Price DECIMAL(10,2),
    Category_ID  INT          NOT NULL,
    FOREIGN KEY (Category_ID) REFERENCES PRODUCT_CATEGORY(Category_ID)
);

-- USER_ORDER
-- Purchase transactions placed by users
-- Order_Total retained as pre-calculated aggregate for query performance
CREATE TABLE USER_ORDER (
    Order_ID     INT          PRIMARY KEY,
    UID          INT          NOT NULL,
    Order_Date   DATE,
    Order_Status VARCHAR(50),
    Order_Total  DECIMAL(10,2),
    FOREIGN KEY (UID) REFERENCES USER(UID)
);

-- ORDER_PRODUCT
-- Associative Entity: resolves M:M between USER_ORDER and PRODUCT
CREATE TABLE ORDER_PRODUCT (
    Order_ID         INT          NOT NULL,
    SKU              VARCHAR(100) NOT NULL,
    Quantity         INT          NOT NULL,
    Unit_Price       DECIMAL(10,2),
    Discount_Applied DECIMAL(10,2),
    PRIMARY KEY (Order_ID, SKU),
    FOREIGN KEY (Order_ID) REFERENCES USER_ORDER(Order_ID),
    FOREIGN KEY (SKU)      REFERENCES PRODUCT(SKU)
);

-- PAYMENT
-- Payment transactions linked to orders
-- Supports multiple payments per order (e.g. Afterpay instalments)
-- Total_Amount = the amount paid in each individual transaction
CREATE TABLE PAYMENT (
    Payment_ID        INT          PRIMARY KEY,
    Order_ID          INT          NOT NULL,
    Payment_Method    VARCHAR(100),
    Total_Amount      DECIMAL(10,2),
    Payment_Date_Time DATETIME,
    FOREIGN KEY (Order_ID) REFERENCES USER_ORDER(Order_ID)
);

-- USER_ADVERTISEMENT
-- Associative Entity: resolves M:M between USER and ADVERTISEMENT
-- Records and stores interaction type (Click or View) and timestamp
-- Models ad attribution — which ad interactions resulted in orders
CREATE TABLE USER_ADVERTISEMENT (
    Interaction_ID   INT          PRIMARY KEY,
    UID              INT          NOT NULL,
    Ads_ID           INT          NOT NULL,
    Interaction_Time DATETIME,
    Interaction_Type VARCHAR(100),
    FOREIGN KEY (UID)    REFERENCES USER(UID),
    FOREIGN KEY (Ads_ID) REFERENCES ADVERTISEMENT(Ads_ID)
);

-- ADVERTISEMENT_PRODUCT
-- Associative Entity: resolves M:M between ADVERTISEMENT and PRODUCT
-- Tracks which products are featured in each advertisement
CREATE TABLE ADVERTISEMENT_PRODUCT (
    Ads_ID INT          NOT NULL,
    SKU    VARCHAR(100) NOT NULL,
    PRIMARY KEY (Ads_ID, SKU),
    FOREIGN KEY (Ads_ID) REFERENCES ADVERTISEMENT(Ads_ID),
    FOREIGN KEY (SKU)    REFERENCES PRODUCT(SKU)
);

-- CAMPAIGN_ANALYTICS
-- Analytical snapshot table storing pre-aggregated metrics per ad per campaign
-- Separates reporting data from operational data for fast CMO dashboard queries
CREATE TABLE CAMPAIGN_ANALYTICS (
    Analytics_ID        INT            PRIMARY KEY,
    Campaign_ID         INT            NOT NULL,
    Ads_ID              INT            NOT NULL,
    Report_Date         DATE           NOT NULL,
    Total_Impressions   INT            DEFAULT 0,
    Total_Views         INT            DEFAULT 0,
    Total_Clicks        INT            DEFAULT 0,
    CTR_Percent         DECIMAL(5,2)   DEFAULT 0.00,
    Total_Conversions   INT            DEFAULT 0,
    Conversion_Rate     DECIMAL(5,2)   DEFAULT 0.00,
    Total_Revenue       DECIMAL(12,2)  DEFAULT 0.00,
    Ad_Spend            DECIMAL(12,2)  DEFAULT 0.00,
    Cost_Per_Click      DECIMAL(10,2)  DEFAULT 0.00,
    Return_On_Ad_Spend  DECIMAL(10,2)  DEFAULT 0.00,
    FOREIGN KEY (Campaign_ID) REFERENCES CAMPAIGN(Campaign_ID),
    FOREIGN KEY (Ads_ID)      REFERENCES ADVERTISEMENT(Ads_ID)
);
