# Usage
Check your usb device list:
```bash
ls /dev/tty* | grep -E "USB|ACM"
```
Run container:
```bash
docker run --privileged=true --device=/dev/ttyACM0 -ti mapsme/ci-appium /bin/bash
```
