#run the setup script to create the DB and the schema in the DB
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P 3DS2Issuer -d master -i setup.sql

#import the data from the csv file
/opt/mssql-tools/bin/bcp IssuerServices.dbo.authentications in "/usr/src/app/authentications.csv" -c -t',' -S localhost -U sa -P 3DS2Issuer
