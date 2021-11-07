# minecraft-scripts
Useful minecraft scripts for hosting with Paper server



## start.sh
### Setup
Make sure `screen` is installed (e.g. on Ubuntu `sudo apt-get install screen`, see [guide](https://linuxize.com/post/how-to-use-linux-screen/) for others)

1. `screen -S "minecraft"`
2. `screen -ls` to list all screens
3. Change `MC` and `MC_UPDATE` variables when appropriate (`paper.jar`, `server.jar`, `spigot.jar`, etc.)
4. (Optional) if you want to update your server client, just save as filename determined by `MC_UPDATE` variable and call `restart` in console; or stop the server and then run `./start.sh`

Ctrl+A then D to detach from screen

`screen -x` or `screen -r <screen_id>` to bring back console

### Tuning java args (Advanced)
Consult [guide on Aikar's flags](https://mcflags.emc.gs/).

## updater.py
This python script automatically fetches the latest build of [Paper](https://papermc.io/downloads). **DO NOT AUTOMATE THE UPDATER!** Don't make the updater replace your jar files directly, it is a very bad practice! Only run this script when you want to update. Always have a backup of your previous jar file.

Put in same directory as minecraft and run `./updater.py` or with your python3 interpreter. Change the version number in the `VERSION` variable to your desire. This updater also supports [Waterfall](https://papermc.io/downloads#Waterfall), just change the `PROJECT` variable.
Can be used in conjunction with start.sh. 

Tested on Windows (Python 3.9) and RHEL 7 (Python 3.6)

## backup.sh
This script allows you to backup your minecraft installation. It will delete backups older than 1 week. To use, you will need to install [mcrcon](https://github.com/Tiiffi/mcrcon).

### Configuration
1. In your `server.properties` file make sure rcon is enabled
```
enable-rcon=true
rcon.port=25575
rcon.password=YOUR_PASSWORD_HERE
```
2. Change the variables in `backup.sh` to your configuration. If you installed mcrcon, run `whereis mcrcon` to find your `MCRCON_PATH`, otherwise if you downloaded pre-compiled binaries you need to specify its path.
3. (Optional) To schedule a daily backup, run `crontab -e` and add `@daily /path/to/backup.sh > /dev/null 2>&1`. If you want more frequent backups, see [crontab-generator](https://crontab-generator.org/) for custom options


Credits: [katznboyz1](https://gist.github.com/katznboyz1/a83a303f1016e317a1cf2fedc8b5a2a6)
