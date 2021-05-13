echo "Delete kafka-streams-monitoring-sink connector"
curl -s -XDELETE "http://localhost:28083/connectors/kafka-streams-monitoring-sink"
echo "Create kafka-streams-monitoring-sink connector"
curl -X POST -d @kafka-streams-monitoring-sink.json --header "content-Type:application/json" http://localhost:28083/connectors
echo "Sleep 5 seconds"
sleep 5
curl -s localhost:28083/connectors/kafka-streams-monitoring-sink/status | jq .
