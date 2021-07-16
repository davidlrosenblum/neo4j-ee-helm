FROM neo4j:4.2.8-enterprise
RUN apt update \
	&& apt install -y unzip
RUN wget https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/4.2.0.5/apoc-4.2.0.5-all.jar -O /tmp/apoc.jar \
	&&  cp /tmp/apoc.jar /var/lib/neo4j/plugins/
RUN wget https://storage.googleapis.com/simba-bq-release/jdbc/SimbaJDBCDriverforGoogleBigQuery42_1.2.18.1022.zip -O /tmp/bigquery.zip \
	&&  mkdir /tmp/bigquery \
	&&  unzip /tmp/bigquery.zip -d /tmp/bigquery  \
	&&  ls -altr /tmp/bigquery \
	&&  cp /tmp/bigquery/* /var/lib/neo4j/plugins/.
