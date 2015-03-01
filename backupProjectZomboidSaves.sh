#!/bin/bash

echo "Backup started..."

if [ -d /Users/vault/Zomboid_backup/ ]
  then
    echo "Removing old backup..."
    rm -r /Users/vault/Zomboid_backup	
  else
    echo "No old backup found!"
fi

echo "Copying new save game..."
cp -r /Users/vault/Zomboid /Users/vault/Zomboid_backup
echo "Done."

exit 0
