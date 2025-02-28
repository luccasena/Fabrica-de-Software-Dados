# Conteinerização com Docker:

### Requisitos:
- VS code com extensões: Docker (Microsoft); Database Cliente (Weijan Chen)
- Docker Desktop

### Comandos Docker:

1. Criando um Container que contenha uma imagem do MySQL
- No terminal digite: docker run -- name mysql_container -e MYSQL_ROOT_PASSWORD=1234 -p 3306:3306 -d mysql:5.7

run: cria o container
- --name: nomeia o container
- -e: Cria uma variável, nesse caso uma sena
- -p: configura a porta
- -d: Roda em Background

2. Comandos Básicos:
- docker stop "CONTAINER ID": Parar o container ativo
- docker start "CONTAINER ID": Inicia o container ativo
- docker ps -a: Mostra os container ativos e inativos
- docker rm "CONTAINER ID": Apaga container

3. Subindo uma imagem do DockerHub:
- docker tag [name][conta]/[repositorio]:[versão]
- docker login
- docker images 
- docker push [name][conta]/[repositorio]:[versão]
- docker pull [name][conta]/[repositorio]:[versão]

.