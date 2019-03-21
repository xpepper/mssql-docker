CREATE DATABASE IssuerServices;
GO

USE IssuerServices;
GO

CREATE TABLE authentications (id INTEGER IDENTITY, authenticationId VARCHAR(50) UNIQUE, userAccountId VARCHAR(50), status VARCHAR(50), challengeType VARCHAR(50), acsTransactionId VARCHAR(50));
GO

