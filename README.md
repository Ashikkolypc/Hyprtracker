# Hyprtracker

A minimal, lightweight screen time tracker for Hyprland on Linux using Fish shell.

## Features

- 🐟 Written in Fish shell
- 🪶 Minimal and lightweight
- 📊 Simple CLI interface
- 🔒 Privacy-focused (data stored locally)
- ⚡ Works natively with Hyprland/Wayland

## Prerequisites

- Hyprland
- Fish shell
- `jq` (JSON processor)
- `hyprctl` (comes with Hyprland)

## Installation
```fish
# Clone the repository
git clone https://github.com/nagabudhamaitreya1-prog/hyprtracker.git
cd hyprtracker

# Run the installer
./install.fish
```

## Usage

View today's screen time:
```fish
screentime
```

Output example:
```
Today's Screen Time:

 firefox-nightly 2h 34m
 foot 1h 12m
 kitty 0h 45m
```

## How It Works

- Polls active window every 5 seconds using `hyprctl`
- Logs application usage to `~/.local/share/screentime.log`
- Aggregates and displays daily statistics

## Data Location

All data is stored locally at:
```
~/.local/share/screentime.log
```

## Uninstall
```fish
rm ~/.local/bin/hypr-tracker.fish
rm ~/.local/bin/screentime
rm ~/.local/share/screentime.log
```

Remove the following line from `~/.config/hypr/hyprland.conf`:
```
exec-once = ~/.local/bin/hypr-tracker.fish
```

## License

MIT

## Contributing

Pull requests welcome!
