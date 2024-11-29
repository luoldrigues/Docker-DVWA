#!/bin/bash
## Descomente as linhas abaixo para apagar containers antigos se der algum problema
# echo "Apagando Containers Antigos"
# docker compose -f docker-compose.yaml down -v
# wait
echo "Building app"
docker compose -f docker-compose.yaml build
wait
echo "Stopping App"
docker compose -f docker-compose.yaml down
wait
echo "Starting App"
docker compose -f docker-compose.yaml up -d
