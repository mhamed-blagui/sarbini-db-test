CREATE SEQUENCE USER_SEQ;
CREATE TABLE SAR_USER(
	ID NUMBER PRIMARY KEY,
	USERNAME VARCHAR,
	PASSWORD VARCHAR,
	FIRST_NAME VARCHAR,
	LAST_NAME VARCHAR,
	EMAIl VARCHAR,
	ACTIVATED BOOLEAN
);
CREATE TABLE SAR_AUTHORITY (
	NAME VARCHAR PRIMARY KEY
);
CREATE TABLE SAR_USER_AUTHORITY (
	USER_ID NUMBER,
	AUTHORITY_NAME VARCHAR
);
CREATE TABLE SAR_OPERATION_HISTORY (
	ID NUMBER PRIMARY KEY,
	NAME VARCHAR,
	STATUS VARCHAR,
	CREATION_DATE TIMESTAMP,
	DESCRIPTION VARCHAR
);
CREATE TABLE SAR_ORDER (
	ID NUMBER PRIMARY KEY,
	CURRENT_STATE VARCHAR,
	PAYED BOOLEAN,
	DELIVERED BOOLEAN,
	CUSTOMER NUMBER,
	PROVIDER NUMBER,
	DELIVER NUMBER,
	CREATION_DATE TIMESTAMP
);
CREATE TABLE SAR_ORDER_HISTORY (
	ID NUMBER PRIMARY KEY,
	ORDER_ID NUMBER,
	STATE VARCHAR,
	DESCRIPTION VARCHAR,
	CREATION_DATE TIMESTAMP
);
CREATE TABLE SAR_PRODUCT (
	ID NUMBER PRIMARY KEY,
	PROVIDER NUMBER,
	DESCRIPTION VARCHAR,
	PRICE DECIMAL
);
CREATE TABLE SAR_ORDER_PRODUCT(
	ORDER_ID NUMBER,
	PRODUCT_ID NUMBER
);
CREATE USER SAR_APP IDENTIFIED BY SAR_APP;
GRANT SELECT,UPDATE,DELETE,INSERT ON SAR_USER TO SAR_APP;
GRANT SELECT,UPDATE,DELETE,INSERT ON SAR_AUTHORITY TO SAR_APP;
GRANT SELECT,UPDATE,DELETE,INSERT ON SAR_OPERATION_HISTORY TO SAR_APP;
GRANT SELECT,UPDATE,DELETE,INSERT ON SAR_ORDER TO SAR_APP;
GRANT SELECT,UPDATE,DELETE,INSERT ON SAR_ORDER_HISTORY TO SAR_APP;
GRANT SELECT,UPDATE,DELETE,INSERT ON SAR_PRODUCT TO SAR_APP;
GRANT SELECT,UPDATE,DELETE,INSERT ON SAR_ORDER_PRODUCT TO SAR_APP;
