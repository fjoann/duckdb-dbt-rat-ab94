# DuckDB / dbt 🐀

A demo for an analytics environment with DuckDB, dbt and Superset. Build a centralized data model on your local machine, then use SQL to analyze the data stored in Azure object storage, without running any compute in the cloud.

## Requirements

- Docker

## How to use

Start the containers for dbt and Superset:

```
docker compose up
```

Run the dbt model:

```
./scripts/run-dbt
```

Initialize Superset:

```
./scripts/init-superset
```

Log in to Superset running on `localhost:8080` with username `admin` and password `admin`.

Create a database connection in Superset with the SQLAlchemy URI to the DuckDB database:

```
duckdb:///dbt/demo.duckdb
```

Open the SQL Lab in Superset to query the data.
