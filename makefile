
info:	
	@echo "\033[1mAll command makefile:\033[0m"
	@echo
	@echo "\033[32mmake mysql-up\033[0m      start mysql"
	@echo "\033[32mmake mysql-stop\033[0m    stop mysql"
	@echo
	@echo "\033[32mmake mailpit-up\033[0m    start mailpit"
	@echo "\033[32mmake mailpit-stop\033[0m  stop mailpit"
	@echo
	@echo "\033[32mmake ls\033[0m            see all running"
	@echo

mysql-up:
	sudo docker compose -f mysql-docker-compose.yml up -d
mysql-stop:	
	sudo docker compose -f mysql-docker-compose.yml stop
mailpit-up:
	sudo docker compose -f mailpit-docker-compose.yml up -d
mailpit-stop:
	sudo docker compose -f mailpit-docker-compose.yml stop
ls:
	sudo docker compose ls
