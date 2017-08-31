FROM neo4j:3.1.4
RUN apk add --update zip unzip && rm -rf /var/cache/apk/*

RUN curl -s -L -o /var/lib/neo4j/plugins/neo4j-spatial-server-plugin.jar https://github.com/neo4j-contrib/spatial/files/1227950/neo4j-spatial-0.24-neo4j-3.1.4-server-plugin.zip

EXPOSE 7474
EXPOSE 7687
CMD ["neo4j"]
