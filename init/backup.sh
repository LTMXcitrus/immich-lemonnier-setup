#!/bin/bash

# Constantes
DOSSIER_SOURCE="/home/debian/immich-app/library/"
MOT_DE_PASSE="CoucouLeBackup"
ARCHIVE="backup_immich.zip"
ARCHIVE_PATH="/tmp/$ARCHIVE"
REMOTE_DIR="gbucket:immich-backup-bucket"

echo "Backuping..."
echo "Zipping $DOSSIER_SOURCE to $ARCHIVE_PATH"

# Vérifie si le dossier existe
if [ ! -d $DOSSIER_SOURCE ]; then
  echo "Erreur : dossier introuvable."
  exit 1
fi

# Compression avec mot de passe
zip -r -P "$MOT_DE_PASSE" "$ARCHIVE_PATH" "$DOSSIER_SOURCE"

# Upload vers Google Drive
rclone --gcs-bucket-policy-only --ignore-times copy "$ARCHIVE_PATH" "$REMOTE_DIR" --progress

# Nettoyage
rm "$ARCHIVE_PATH"
