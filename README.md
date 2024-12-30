# trimui-brick-dufs-server.pak

A TrimUI Brick app wrapping [`dufs`](https://github.com/sigoden/dufs/), an http file server.

## Requirements

- Rust (for building)

## Building

```shell
make build
```

## Installation

> [!IMPORTANT]
> The dufs binary **must** first be built for the TrimUI Brick. See the "Building" section for more details.

1. Mount your TrimUI Brick SD card.
2. Create a folder in your SD card with the full-path of `/Tools/tg3040/Toggle Dufs Server.pak`.
3. Copy `launch.sh`, `bin` and `res` to that SD card folder, ensuring it is still executable.
4. Unmount your SD Card and insert it into your TrimUI Brick.

## Usage

### daemon-mode

By default, `dufs` runs as a foreground process, terminating on app exit. To run `dufs` in daemon mode, create a file named `daemon-mode` in the pak folder. This will turn the app into a toggle for `dufs`.
