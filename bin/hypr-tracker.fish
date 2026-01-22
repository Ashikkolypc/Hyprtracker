#!/usr/bin/env fish

set LOG "$HOME/.local/share/screentime.log"
mkdir -p (dirname "$LOG")

while true
    set APP (hyprctl activewindow -j 2>/dev/null | jq -r '.class // "idle"')
    echo (date +%s),$APP >> "$LOG"
    sleep 5
end
