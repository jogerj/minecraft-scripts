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
This python script automatically fetches the latest build of [Paper](https://papermc.io/downloads). **DO NOT AUTOMATE THE UPDATER!** Don't make the updater replace your jar files directly, it is a very bad practice! Always have a backup of your previous jar file.

Put in same directory as minecraft and run `./updater.py` or with your python3 interpreter. Change the version number in the `VERSION` variable to your desire. This updater also supports [Waterfall](https://papermc.io/downloads#Waterfall), just change the `PROJECT` variable.
Can be used in conjunction with start.sh. 

