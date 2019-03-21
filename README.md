# Overview
### build the container

```
docker build -t mssql-server .
```

Then, you need to run the container:

```
docker run -p 1433:1433 --name 3ds2-issuer-services -d mssql-server
```

To connect to the sql server

```
docker exec -it 3ds2-issuer-services /bin/bash
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P 3DS2Issuer
```

To stop the server 

```
docker stop 3ds2-issuer-services
```

To connect remotely, install [mssql-cli](https://github.com/dbcli/mssql-cli/), then:

```
mssql-cli -S localhost -d IssuerServices -U sa -P 3DS2Issuer
```
