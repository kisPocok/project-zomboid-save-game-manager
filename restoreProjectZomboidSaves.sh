#!/bin/bash

echo "Restore started..."

if [ -d /Users/vault/Zomboid_backup/ ]
  then
    echo "Backup found!"
  else
    echo "No old backup found!"
    exit 0
fi

echo "Cleanup..."
rm -r /Users/vault/Zomboid_Original

echo "Backing up latest save..."
cp -r /Users/vault/Zomboid /Users/vault/Zomboid_Original

echo "Restoring save game..."
cp -r /Users/vault/Zomboid_backup /Users/vault/Zomboid
echo "Done."

exit 0
