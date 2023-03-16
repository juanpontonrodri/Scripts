#!/bin/bash

# Define los directorios de trabajo
torrent_dir="./Torrents"
incomplete_dir="./Torrents/incomplete"
torrentscompl_dir="./Torrents/torrentscompl"
cop1_dir="./Torrents/cop1"
cop2_dir="./Torrents/cop2"

rm -rf ./Torrents
# Crea las carpetas necesarias
mkdir -p "$torrent_dir"
mkdir -p "$incomplete_dir"
mkdir -p "$torrentscompl_dir"
mkdir -p "$cop1_dir"
mkdir -p "$cop2_dir"

# Crea los archivos dentro de las carpetas
touch "$incomplete_dir/incomplete.mkv"
touch "$torrentscompl_dir/torrentscompl.mkv"
touch "$cop1_dir/cop1.mkv"
touch "$cop1_dir/cop1.txt"
touch "$cop2_dir/cop2.mkv"
touch "$cop2_dir/mierda.mv"



# Crea los archivos en la carpeta principal de torrents
touch "$torrent_dir/cop50.mp4"
touch "$torrent_dir/cop51.mp4"
touch "$torrent_dir/cop52.avi"
touch "$torrent_dir/cop53.avi"
touch "$torrent_dir/cop54.avi"

# Imprime los resultados
echo "Estructura de carpetas creada:"
echo "$(tree "$torrent_dir")"
