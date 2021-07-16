TAG neo4japoc/4.2.8-enterprise
FROM neo4j:4.2.8-enterprise
RUN wget https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/4.2.0.5/apoc-4.2.0.5-all.jar -O /tmp/apoc.jar
RUN cp /tmp/apoc.jar /plugins/
RUN wget https://storage.googleapis.com/simba-bq-release/jdbc/SimbaJDBCDriverforGoogleBigQuery42_1.2.18.1022.zip -O /tmp/bigquery.zip
RUN unzip /tmp/bigquery.zip
RUN cp /tmp/SimbaJDBCDriverforGoogleBigQuery42_1.2.18.1022/* /plugins/.
