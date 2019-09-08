

# Links

<https://gokhanatil.com/2018/02/build-a-cassandra-cluster-on-docker.html />
<https://github.com/apache/camel/tree/master/examples/camel-example-cdi-cassandraql />
<https://github.com/spring-projects/spring-data-cassandra/blob/master/src/main/asciidoc/reference/cassandra.adoc />
<https://github.com/mohdnadeemakhtar/Spring-Batch-with-Cassandra />
<https://docs.spring.io/spring-boot/docs/current/reference/html/common-application-properties.html />




# Docker Commands

docker run --name CassandraMaster -p 9042:9042 -e CASSANDRA_CLUSTER_NAME=MasterCluster -e CASSANDRA_ENDPOINT_SNITCH=GossipingPropertyFileSnitch -e CASSANDRA_DC=datacenter1 -d cassandra


# Hardware Requiriments

Minimun - 8GB non production in 4 cores
Minimum - 32GB production in 8 cores

More Memory better Cassadra`s read peromance is



# Type Storage can greatly affect performance

Shared storage significantly effect Negatively the Cassandra's perfornace, SSDs are preferred

Recommended amount of data per node varies, but better option is 500GB 1TB

WP-DataStax-Enterprise-Reference-Architecture.pdf