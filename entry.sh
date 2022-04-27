#!/bin/sh

/app/shipper --http-listen ":8081" --graphql-mode Playground --clickhouse-host=$CLICKHOUSE_HOST --clickhouse-debug --clickhouse-database-pattern $CLICKHOUSE_DB_PATTERN --clickhouse-table-pattern $CLICKHOUSE_TABLE_PATTERN
