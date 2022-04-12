#!/bin/bash
message="Welcome"
[ ! -z "$message" ] && curl -X POST -H 'Content-type: application/json' --data "{\"text\": \"${message}\"}"  https://hooks.slack.com/services/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
