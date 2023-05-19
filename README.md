# Hazesoft-T3

Writing a backup.sh file that takes directory as input.

```

#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Error: Only one argument (path to directory) is allowed."
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
       
   ```
## Making the file executable

```
chmod +x backup.sh
```

## Testing the script

I'm going to backup this folder.

![image](https://github.com/Pranaenae/Hazesoft-T3/assets/80820244/a5d56b1d-f8f0-4a7e-95c1-e8241f9a888c)

In this folder, there is no backup folder so our script is going to make us one when we execute the shell script.

![image](https://github.com/Pranaenae/Hazesoft-T3/assets/80820244/70d423d9-4b11-41df-9dba-44991220e940)

Checking the backup folder and viewing the files inside the tar.

![image](https://github.com/Pranaenae/Hazesoft-T3/assets/80820244/c0ee3699-1574-42e3-a77c-c9b4b7d1a135)

## When passing invalid directories.

![image](https://github.com/Pranaenae/Hazesoft-T3/assets/80820244/c0f66f5b-0412-4504-9bb3-307e192e04f8)

## Passing wrong no of arguments.

![image](https://github.com/Pranaenae/Hazesoft-T3/assets/80820244/e5ee100b-a6d3-4a17-9def-0917cc5ba7e6)


