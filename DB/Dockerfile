FROM ubuntu
RUN apt-get update
RUN apt-get install -y sqlite3 libsqlite3-dev
RUN mkdir /db
WORKDIR /db
ENTRYPOINT ["sqlite3"]
CMD ["test.db"]
