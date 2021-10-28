create:
	docker-compose up --no-start

prepare:
	docker-compose start db
	sleep 15
	docker-compose run sysbench-prepare

run:
	docker-compose run sysbench-run