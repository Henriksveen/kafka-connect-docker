echo "Delete elasticsearch-sink connector"
curl -s -XDELETE "http://localhost:28083/connectors/elasticsearch-sink"
echo "Create elasticsearch-sink connector"
curl -X POST -d @monitoring-events-sink.json --header "content-Type:application/json" http://localhost:28083/connectors
echo "Sleep 5 seconds"
sleep 5
curl -s localhost:28083/connectors/elasticsearch-sink/status | jq .
