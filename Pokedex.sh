#!/bin/bash
# Es neceario tener instalado jq
# sudo apt-get install jq

echo "============================================="
echo "--------P O K E D E X   E N   B A S H--------"
echo "============================================="
aux=0
function consultar() {
    read -p "Ingrese nombre del pokemon: " pokemon
    curl -s https://pokeapi.co/api/v2/pokemon/$pokemon | jq '.id' | { read -r id; echo "ID: $id"; }
    curl -s https://pokeapi.co/api/v2/pokemon/$pokemon | jq '.name' | { read -r nombre; echo "NOMBRE : $nombre"; }
    curl -s https://pokeapi.co/api/v2/pokemon/$pokemon | jq '.types[0].type.name' | { read -r tipo; echo "TIPO : $tipo"; }
    echo "----------------------------------------------"
    echo ""
}
while true; do
    consultar
    read -p "¿Desea consultar otro pokemon? (s/n): " continuar
    echo ""
    echo""
    if [[ $continuar != "s" ]]; then
        break
    fi
done