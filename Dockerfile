FROM mcr.microsoft.com/mssql/server:2017-latest

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Bundle app source
COPY . /usr/src/app

# Grant permissions for the import-data script to be executable
RUN chmod +x /usr/src/app/import-data.sh

ENV ACCEPT_EULA Y
ENV MSSQL_SA_PASSWORD 3DS2Issuer
ENV MSSQL_PID developer

HEALTHCHECK --interval=10s  \
  CMD /bin/bash ./entrypoint.sh
