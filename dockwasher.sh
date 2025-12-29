#!/bin/bash

echo "WARNING: This will delete ALL Docker data!"
read -p "Are you sure? (y/N): " confirm

if [[ "$confirm" != "y" ]]; then
  echo "Aborted."
  exit 1
fi

echo "Stopping containers..."
docker stop $(docker ps -aq) 2>/dev/null

echo "Removing containers..."
docker rm $(docker ps -aq) 2>/dev/null

echo "Removing images..."
docker rmi -f $(docker images -q) 2>/dev/null

echo "Removing volumes..."
docker volume rm $(docker volume ls -q) 2>/dev/null

echo "Removing networks..."
docker network rm $(docker network ls -q | grep -v bridge | grep -v host | grep -v none) 2>/dev/null

echo "System prune..."
docker system prune -a --volumes -f

echo "All Docker resources cleaned up."