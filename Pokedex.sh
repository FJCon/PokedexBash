#!/bin/bash
# Es neceario tener instalado jq
# sudo apt-get install jq

echo "============================================="
echo "--------P O K E D E X   E N   B A S H--------"
echo "============================================="
read -p "Ingrese nombre del pokemon: " pokemon
curl -s https://pokeapi.co/api/v2/pokemon/$pokemon | jq '.id' { read -r $id }
echo "ID: $id"
curl -s https://pokeapi.co/api/v2/pokemon/$pokemon | jq '.name' { read -r $nombre }
echo "NOMBRE : $nombre"
curl -s https://pokeapi.co/api/v2/pokemon/charmander | jq '.types[0].type.name' { read -r $tipo } 
echo "TIPO : $tipo"
