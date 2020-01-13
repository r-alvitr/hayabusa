#!/usr/bin/env bash

if [[ -z ${1} ]]; then
    LIMIT=100
else
    LIMIT=${1}
fi

declare TIME=0

for ((i=0; i<LIMIT; i++)); do
    TIME=$(echo "scale=7; ${TIME} + $(curl -kL 'localhost:8080' -o /dev/null -w "%{time_total}" 2> /dev/null && echo '')" | bc)
done

echo "Sum: ${TIME}"
echo "Avg(100): $(echo "scale=7; ${TIME} / ${LIMIT}" | bc)"
