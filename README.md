# Full Bitcoin node wrapped with bitcore and docker

## Prerequisite
- Docker
- Docker Compose

## How to run in production
```
# build bitcore(livenet)
$ docker-compose up --build -d

# build bitcore(testnet)
$ docker-compose -f docker-compose.testnet.yml up --build -d

# build bitcore(regtest)
$ docker-compose -f docker-compose.regtest.yml up --build -d

# open browser
$ open http://[YOUR SERVER IP]/insight
```
