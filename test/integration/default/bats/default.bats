#!/usr/bin/env bats
 
@test "Validate status code for kafka exporter" {
  run curl -s -o /dev/null -w "%{http_code}" localhost:9308/metrics
  [[ $output = "200" ]]
}