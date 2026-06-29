APP=mi-web

build:
	docker build -t $(APP):latest .

deploy:
	docker stack deploy -c stack.yml miweb

remove:
	docker stack rm miweb

ps:
	docker service ls