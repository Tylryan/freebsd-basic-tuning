# FreeBSD Basic Tuning
Eventually will be a script that gets you from bsdinstaller to 
being able to watch cat videos on the internet.

The main objectives are:
1. Minimalism (Few packages)
2. Low Memory Footprint (Low total memory usage)


The final result should be an operating system that runs a
window manager using less than 500 MB of ram and requires
less than 25 packages.

Should be a pretty good starting point for learning how to 
rice/tune the os.

**Non Goals**  
I do not plan on having this script rice i3 or any other
applications. Only the bare minimum modifications will be
made to these applications. This script will be used to
setup a minimal personal computing system.

# Prereqs
1) Clone the git repo.
	- Requires `git`
	- Requires internet access.

2) `Python3` as an executable. 
	- By default, FreeBSD creates a binary called Python3.XX. 
	  You'll need to run the following command:
   	  `ln -s /usr/local/bin/python3.11 /usr/local/bin/python3`

> If you would like to add more packages for the script to install,
> add them to the `extra-packages.txt` file.


## Skriptlins
The commands found in the [skriptlins](./skriptlins) directory are
a few useful commands I've come accross and have given more 
descripive names to.

For example:
- `volume-up`       : to turn the volume up.
- `wifi-setup`      : to setup a new wifi connection.
- `set-audio-output`: changes the current audio output (from speaker
  to headphones for example)
