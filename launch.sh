#!/bin/sh
echo "$0" "$@"
progdir="$(dirname "$0")"
cd "$progdir" || exit 1
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$progdir"
echo 1 >/tmp/stay_awake
trap "rm -f /tmp/stay_awake" EXIT INT TERM HUP QUIT
RES_PATH="$progdir/res"

dufs_on() {
    cd /mnt/SDCARD/ || exit
    rm "$progdir/dufs.logs" || true
    ("$progdir/bin/dufs" --allow-all --bind 0.0.0.0 --port 80 --log-file "$progdir/dufs.logs" &) &
    wait_for_dufs 10
}

dufs_off() {
    killall dufs
}

wait_for_dufs() {
    max_counter=$1
    counter=0

    while ! pgrep dufs >/dev/null 2>&1; do
        counter=$((counter + 1))
        if [ "$counter" -gt "$max_counter" ]; then
            return 1
        fi
        sleep 1
    done
}

{
    echo "Toggling dufs..."
    if pgrep dufs; then
        show.elf "$RES_PATH/disable.png" 2
        echo "Stopping dufs..."
        dufs_off
    else
        show.elf "$RES_PATH/enable.png" 2
        echo "Starting dufs..."
        dufs_on

        if ! wait_for_dufs 1; then
            show.elf "$RES_PATH/failed.png" 2
            echo "Failed to start dufs!"
            return 1
        fi
    fi

    echo "Done toggling dufs!"
    show.elf "$RES_PATH/done.png" 2
} &> ./log.txt
