#!/bin/sh

/app/shipper --http-listen ":8081" --graphql-mode Playground --clickhouse-host=$CLICKHOUSE_HOST --clickhouse-user $CLICKHOUSE_USER --clickhouse-password="$CLICKHOUSE_PASSWORD" --clickhouse-debug --clickhouse-database-pattern $CLICKHOUSE_DB_PATTERN --clickhouse-table-pattern $CLICKHOUSE_TABLE_PATTERN
