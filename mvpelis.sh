#!/bin/bash

# Define los directorios de trabajo
torrent_dir="./Torrents"
peliculas_dir="./Movies"

echo "start"
# Itera a través de los archivos en el directorio de torrents
shopt -s nullglob
for file in "$torrent_dir"/* "$torrent_dir"/*/*; do

    # Verifica si el archivo es una carpeta y como se llama
    if [[ -d "$file" ]] && ([[ "$(basename "$file")" = "torrentscompl" ]] || [[ "$(basename "$file")" = "incomplete" ]]); then
        echo "ignore"
        echo $file
        continue
    fi

    # Verifica si el archivo es un archivo de video y no está en una carpeta de torrents completos o incompletos
    if [[ "$file" == *.mp4 ]] || [[ "$file" == *.mkv ]] || [[ "$file" == *.avi ]] && [[ "$(dirname "$file")" != *torrentscompl* ]] && [[ "$(dirname "$file")" != *incomplete* ]]; then
        # El archivo es un archivo de video
        # Obtén el nombre del directorio actual
        dir_name=$(dirname "$file")
        echo $dir_name
        # Mueve el archivo de video al directorio de películas
        mv "$file" "$peliculas_dir/"

        echo "moved"
        # Verifica si el nombre del directorio padre es Torrents antes de eliminar el directorio y su contenido residual
        if [[ "$(basename "$(dirname "$file")")" != "Torrents" ]]; then
        rm -rf "$(dirname "$file")"
        echo "deleted"
        fi

    fi
    
done
