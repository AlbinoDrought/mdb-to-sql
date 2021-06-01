.PHONY: container
container: Dockerfile
	docker build -t albinodrought/mdb-to-sql .
