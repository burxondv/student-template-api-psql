POSTGRES_HOST=localhost
POSTGRES_PORT=5432
POSTGRES_USER=postgres
POSTGRES_PASSWORD=12345
POSTGRES_DATABASE=student

-include .env

DB_URL=postgresql://postgres:12345@localhost:5432/student?sslmode=disable

swag-init:
	swag init -g api/api.go -o api/docs

start:
	go run main.go

migrateup:
	migrate -path migrations -database "$(DB_URL)" -verbose up

migratedown:
	migrate -path migrations -database "$(DB_URL)" -verbose down

.PHONY: start migrateup migratedown