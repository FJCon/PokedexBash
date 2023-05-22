echo "============================================="
echo "--------P O K E D E X   E N   B A S H--------"
echo "============================================="
read -p "Ingrese nombre del pokemon: " pokemon
curl -r https://pokeapi.co/api/v2/pokemon/$pokemon | jq ''

