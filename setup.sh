#!/bin/bash
set -e

mkdir -p data

echo "Downloading .pbf files..."
# wget -q -nc -O data/brazil.pbf https://download.geofabrik.de/south-america/brazil-latest.osm.pbf || true
wget -nc -O data/chile.pbf https://download.geofabrik.de/south-america/chile-latest.osm.pbf || true
wget -nc -O data/portugal.pbf https://download.geofabrik.de/europe/portugal-latest.osm.pbf || true
wget -nc -O data/gcc.pbf https://download.geofabrik.de/asia/gcc-states-latest.osm.pbf || true

docker compose up -d