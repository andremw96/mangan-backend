runpostgres:
	docker run --name postgres16 -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres:16.1-alpine3.19

createdb:
	docker exec -it postgres16 createdb --username=root --owner=root mangan

dropdb:
	docker exec -it postgres16 dropdb mangan

migrateup:
	migrate -path dbmigration -database "postgresql://root:secret@localhost:5432/mangan?sslmode=disable" -verbose up

migratedown:
	migrate -path dbmigration -database "postgresql://root:secret@localhost:5432/mangan?sslmode=disable" -verbose down

.PHONY: runpostgres createdb dropdb migrateup migratedown