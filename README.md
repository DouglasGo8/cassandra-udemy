

# Links

<https://gokhanatil.com/2018/02/build-a-cassandra-cluster-on-docker.html />
<https://github.com/apache/camel/tree/master/examples/camel-example-cdi-cassandraql />
<https://github.com/spring-projects/spring-data-cassandra/blob/master/src/main/asciidoc/reference/cassandra.adoc />
<https://github.com/mohdnadeemakhtar/Spring-Batch-with-Cassandra />
<https://docs.spring.io/spring-boot/docs/current/reference/html/common-application-properties.html />




# Docker Commands

docker run --name CassandraMaster -p 9042:9042 -e CASSANDRA_CLUSTER_NAME=MasterCluster -e CASSANDRA_ENDPOINT_SNITCH=GossipingPropertyFileSnitch -e CASSANDRA_DC=datacenter1 -d cassandra
