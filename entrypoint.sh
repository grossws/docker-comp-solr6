#!/bin/sh

if [ "$1" = "solr" ] ; then
  chown -R solr:nobody /opt/solr
  exec gosu solr:nobody /opt/solr/bin/solr -f -h 0.0.0.0 -p 8983 -s /opt/solr ${SOLR_ARGS[@]}
fi

exec "$@"

