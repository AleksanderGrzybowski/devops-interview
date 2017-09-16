#! /bin/sh
set -e

MARKER_FILE=/var/lib/database/DATABASE_ALREADY_CREATED

echo "Checking if database should be created..."

if [ -f "${MARKER_FILE}" ]; then
   echo "Marker file found, doing nothing."
else
   echo "Marker file not found, initializing database..."
   ./console.sh database:create
   touch "${MARKER_FILE}"
   echo "Database initialized and marker file created."
fi

cd app
exec npm start
