# Sysbench MYSQL benchmarking in Docker

## Checkout
```
git submodule init
git submodule update
```

## Usage
This will build the Sysbench image and prepare containers.
```
make create
```

This will start the DB wait for it become ready, then run Sysbench prepape to create tables and seed data.
```
make prepare
```

This will run the actual benchmark suite. The benchmark time is set to 90 sec after that it will print the report.
```
make run
```