#!/usr/bin/env fish

echo "Installing Hyprtracker..."

# Create directories
mkdir -p ~/.local/bin
mkdir -p ~/.local/share

# Get the directory where the script is located
set SCRIPT_DIR (dirname (status -f))

# Copy files
cp "$SCRIPT_DIR/bin/hypr-tracker.fish" ~/.local/bin/
cp "$SCRIPT_DIR/bin/screentime" ~/.local/bin/

# Make executable
chmod +x ~/.local/bin/hypr-tracker.fish
chmod +x ~/.local/bin/screentime

# Check if already in hyprland.conf
if not grep -q "hypr-tracker.fish" ~/.config/hypr/hyprland.conf 2>/dev/null
    echo "" >> ~/.config/hypr/hyprland.conf
    echo "# Hyprtracker" >> ~/.config/hypr/hyprland.conf
    echo "exec-once = ~/.local/bin/hypr-tracker.fish" >> ~/.config/hypr/hyprland.conf
    echo "✓ Added to hyprland.conf"
else
    echo "✓ Already in hyprland.conf"
end

echo ""
echo "Installation complete!"
echo "Restart Hyprland or run: nohup ~/.local/bin/hypr-tracker.fish >/dev/null 2>&1 &"
echo "Then use: screentime"
