# minui-dufs-server.pak

A MinUI app wrapping [`dufs`](https://github.com/sigoden/dufs/), an http file server.

## Requirements

This pak is designed and tested on the following MinUI Platforms and devices:

- `tg5040`: Trimui Brick (formerly `tg3040`), Trimui Smart Pro
- `rg35xxplus`: RG-35XX Plus, RG-34XX, RG-35XX H, RG-35XX SP

Use the correct platform for your device.

## Installation

1. Mount your MinUI SD card.
2. Download the latest release from Github. It will be named `HTTP.Server.pak.zip`.
3. Copy the zip file to `/Tools/$PLATFORM/HTTP Server.pak.zip`. Please ensure the new zip file name is `HTTP Server.pak.zip`, without a dot (`.`) between the words `HTTP` and `Server`.
4. Extract the zip in place, then delete the zip file.
5. Confirm that there is a `/Tools/$PLATFORM/HTTP Server.pak/launch.sh` file on your SD card.
6. Unmount your SD Card and insert it into your MinUI device.

## Usage

> [!IMPORTANT]
> If the zip file was not extracted correctly, the pak may show up under `Tools > HTTP`. Rename the folder to `HTTP Server.pak` to fix this.

Browse to `Tools > HTTP Server` and press `A` to enter the Pak.

### Debug Logging

To enable debug logging, create a file named `debug` in the pak folder. Logs will be written to the `$SDCARD_PATH/.userdata/$PLATFORM/logs/` folder.

### Configuration

#### port

The server runs on port `80`. To utilize a different port, create a file named `port` in the pak folder with the port number you wish to run on.
