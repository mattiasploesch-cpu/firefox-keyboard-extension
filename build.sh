#!/bin/bash

# Name der finalen .xpi-Datei
OUTPUT_NAME="keyboard_shortcuts.xpi"

# Liste der benötigten Dateien für die Erweiterung
FILES="manifest.json content.js background.js"

echo "Packe Firefox-Erweiterung..."

# Prüfen, ob alle Quelldateien existieren
for file in $FILES; do
    if [ ! -f "$file" ]; then
        echo "Fehler: Die Datei '$file' wurde nicht gefunden!"
        exit 1
    fi
done

# Alte .xpi-Datei löschen, falls sie existiert
if [ -f "$OUTPUT_NAME" ]; then
    rm "$OUTPUT_NAME"
fi

# Zip-Archiv erstellen
zip "$OUTPUT_NAME" $FILES > /dev/null

if [ $? -eq 0 ]; then
    echo "Erfolgreich erstellt: $OUTPUT_NAME"
else
    echo "Fehler beim Erstellen der .xpi-Datei!"
    exit 1
fi
