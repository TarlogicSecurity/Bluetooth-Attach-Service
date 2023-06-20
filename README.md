# Bluetooth Attach Service

This package installs the necessary files to automatically spawn a btattach process in the presence of known UART bluetooth adapters.

The udev rules file is in charge of detecting the known hardware and to spawn a systemd service passing on the device name. The btattach process is not started from udev as udev will kill the process after a short amount of time.

The systemd service receives an udev signal and waits for the device to be ready. Once that conditions are met, it starts btattach.


## Installing

A Makefile is provided. Just navigate to the project directory and install with the following command:

```
sudo make install
```
