# Usage
Check your usb device list:
`ls /dev/tty* | grep -E "USB|ACM"`
Run container:
`docker run --privileged=true --device=/dev/ttyACM0 -ti mapsme/ci-appium /bin/bash`
