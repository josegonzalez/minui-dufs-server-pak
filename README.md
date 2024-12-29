# trimui-brick-toggle-http-server.pak

A TrimUI Brick app wrapping the dufs, an http file server.

## Requirements

- Rust (for building)

## Building

```shell
make build
```

## Installation

> [!IMPORTANT]
> The dufs binary **must** first be built for the TrimUI Brick.

1. Mount your TrimUI Brick SD card.
2. Create a folder in your SD card with the full-path of `/Tools/tg3040/Toggle HTTP Server.pak`.
3. Copy `launch.sh`, `bin` and `res` to that SD card folder, ensuring it is still executable.
4. Unmount your SD Card and insert it into your TrimUI Brick.

## Usage

This pak will start/stop the `dufs` server, which will run until either it is toggled off or the device is terminated.
