#!/bin/bash
nombres=("Erick" "Daniel" "Samuel" "Alejandro" "Jaime" "Ale")
numeros=(1 2 3 4 5 6)
asignados=()
echo "## $(date)"
for nombre in "${nombres[@]}"; do
  while true; do
    indice=$((RANDOM % ${#numeros[@]}))
    if [[ ! " ${asignados[@]} " =~ " $indice " ]]; then
      asignados+=($indice)
      break
    fi
  done
  numero=${numeros[$indice]}
  echo "- $nombre($numero)"
done
