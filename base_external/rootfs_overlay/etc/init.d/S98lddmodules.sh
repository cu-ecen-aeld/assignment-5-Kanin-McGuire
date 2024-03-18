#!/bin/sh

case "$1" in
    start)
        echo "Load module and scull"
        /usr/bin/aesdchar_load
        /usr/bin/module_load faulty
        /usr/bin/scull_load
        modprobe hello
        ;;
    stop)
        echo "Unload module and scull"
        /usr/bin/module_unload
        /usr/bin/scull_unload
        rmmod hello
        /usr/bin/aesdchar_unload
        ;;
    *)
        echo "Usage: $0 {start|stop}"
    exit 1
esac

exit 0