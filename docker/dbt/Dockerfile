FROM python:3.11-slim

RUN apt update && apt install -y curl unzip

WORKDIR /app

# install DuckDB CLI
RUN curl -LO https://github.com/duckdb/duckdb/releases/download/v0.8.0/duckdb_cli-linux-amd64.zip \
  && unzip duckdb_cli-linux-amd64.zip \
  && cp duckdb /usr/local/bin/duckdb

# install dbt requirements
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /app/dbt

COPY dbt .
COPY superset/dataset.zip .

CMD ["bash"]
