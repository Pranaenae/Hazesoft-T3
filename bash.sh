#!/bin/bash

if [ $# -ne 1 ]; then
        echo "Error: Only one argument ( path to directory) is allowed."
        exit 1
fi

create_backup() {

        directory="$1"
        backup_directory="$2"
        timestamp=$(date +"%Y%m%d%H%M%S")
        backup_filename="backup_$timestamp.tar.gz"
        backup_path="$backup_directory/$backup_filename"

        tar -czf "$backup_path" "$directory"

        if [ $? -eq 0 ]; then
                echo "Backup created successfully: $backup_path"
        else
                echo "Backup failed."
        fi
}

        backup_directory="./backup"
        if [ ! -d "$backup_directory" ]; then
                mkdir backup
        fi

        create_backup "$1" "$backup_directory"
