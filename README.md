# mahartma's dotfiles

My dotfiles are heavily inspired by (or rather forked from ) muesli's dotfiles: https://github.com/muesli/dotfiles

## Platform Support

Run `setup.sh` to bootstrap an install:

```
./setup.sh
```

## Bootstrap an ArchLinux Install

### Install Drivers

For Intel i5/i7 based machines simply run:

```
./packages/arch/drivers/intel.sh
```

If you want to control Razer RGB devices, run:

```
./packages/arch/drivers/razer.sh
```

### First Steps

Add users to required groups: https://wiki.archlinux.org/index.php/users_and_groups#Group_list

Enable microcode updates: https://wiki.archlinux.org/index.php/microcode

Install systemd-boot pacman hook: https://wiki.archlinux.org/index.php/systemd-boot#Automatically

Enable SDDM: `systemctl enable sddm`

### Configuration


#### Adjust System Limits

Edit `/etc/systemd/system.conf.d/limits.conf`

```
[Manager]
DefaultLimitNOFILE=32768
DefaultTasksMax=32768
```

#### Suspend issues

Should you suffer from suspend issues (like the system resuming from sleep
immediately), this is most likely caused by the USB chipset acting up. To
prevent that, create a new systemd unit `/etc/systemd/system/disable-usb-wakeup.service`:

```
[Unit]
Description=Disable USB wakeup triggers in /proc/acpi/wakeup

[Service]
Type=oneshot
ExecStart=/bin/sh -c "echo XHC > /proc/acpi/wakeup"
ExecStop=/bin/sh -c "echo XHC > /proc/acpi/wakeup"
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
```

Enable & start the new unit now:

```
systemctl enable disable-usb-wakeup
systemctl start disable-usb-wakeup
```

#### System Tweaks

Enable smartd: https://wiki.archlinux.org/index.php/S.M.A.R.T.

Limit journal size: https://wiki.archlinux.org/index.php/Systemd#Journal_size_limit

Configure Avahi/mDNS: https://wiki.archlinux.org/index.php/avahi

Install TLP: https://wiki.archlinux.org/index.php/TLP

Enable zram: https://wiki.archlinux.org/index.php/Improving_performance#Zram_or_zswap

## Configuration for Unix Platforms

### GPG

#### Preferred Key

Edit `~/.gnupg/gpg.conf`

```
default-key 03F4BA3E
```