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
   	  `alias python='usr/local/bin/<your-python-version>`

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

## Packages
Add or subtracks packages you would like to have automatically installed
in the `freebsd.packages` file.

---

# Notes
- `pciconf` for INTERNAL hardware on your computer that could connect to a via 
   USB, ETHER, WIFI, ETC.
- `usbconfig` for EXTERNAL hardware that could be connected to your computer via 
   USB, IDK, ETC.


## Before You Configure `/boot/loader.conf`
Before you add a kernel module in your loader.conf file, ask 2 questions:
1. Is the module already loaded (i.e., is the module built into the kernel you're
   using?): `kldstat | grep <your-module/driver>`. This will reduce the amount
   of time throwing tomatoes at the wall.
2. Does it need to be loaded that early? or Can it wait until `sysrc.conf` is
   loaded? If the answer to these questions are no/yes respectively, then you 
   can just add it to your `sysrc.conf` file with 
   `sysrc kld_list+="<your-kernel-module>"`.

## Kernel Modification
### The "MINIMAL" Kernel
**FILE**: `/usr/src/sys/amd64/conf/MINIMAL`  
As per the comment in the header, "Minimal" is defined as "GENERIC, minus all 
functionality that can be replaced by loading kernel" 
