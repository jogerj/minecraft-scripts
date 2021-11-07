# minecraft-scripts
Useful minecraft scripts for hosting with Paper server



## start.sh
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
This python script automatically fetches the latest build from [papermc.io](https://papermc.io).

Put in same directory as minecraft and run `./updater.py` or with your python3 interpreter. 
Use in conjunction with start.sh. 
**DO NOT AUTOMATE THE UPDATER**.
Always call updater manually in case update failed.