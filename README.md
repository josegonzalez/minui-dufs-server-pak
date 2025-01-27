# trimui-brick-dufs-server.pak

A TrimUI Brick app wrapping [`dufs`](https://github.com/sigoden/dufs/), an http file server.

## Requirements

- Docker (for building)
- Rust (for building)

## Building

```shell
make release
```

## Installation

1. Mount your TrimUI Brick SD card.
2. Download the latest release from Github. It will be named `HTTP.Server.pak.zip`.
3. Copy the zip file to `/Tools/tg5040/HTTP Server.pak.zip`. Please ensure the new zip file name is `HTTP Server.pak.zip`, without a dot (`.`) between the words `HTTP` and `Server`.
4. Extract the zip in place, then delete the zip file.
5. Confirm that there is a `/Tools/tg5040/HTTP Server.pak/launch.sh` file on your SD card.
6. Unmount your SD Card and insert it into your TrimUI Brick.

> [!NOTE]
> The device directory changed from `/Tools/tg3040` to `/Tools/tg5040` in `MinUI-20250126-0` - released 2025-01-26. If you are using an older version of MinUI, use `/Tools/tg3040` instead.

## Usage

> [!IMPORTANT]
> If the zip file was not extracted correctly, the pak may show up under `Tools > HTTP`. Rename the folder to `HTTP Server.pak` to fix this.

Browse to `Tools > HTTP Server` and press `A` to turn on the HTTP Server.

### daemon-mode

By default, `dufs` runs as a foreground process, terminating on app exit. To run `dufs` in daemon mode, create a file named `daemon-mode` in the pak folder. This will turn the app into a toggle for `dufs`.
