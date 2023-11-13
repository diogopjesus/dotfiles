#!/bin/bash

set -e # Exit immediately if a command exits with a non-zero status

#########################
# input-sources settings
#########################

# List of XKB options
gsettings set org.gnome.desktop.input-sources xkb-options "['altwin:swap_lalt_lwin', 'ctrl:swapcaps']"

#####################
# interface settings
#####################

gsettings set org.gnome.desktop.interface enable-hot-corners false # Disable hot corners
gsettings set org.gnome.desktop.interface show-battery-percentage true # Show battery percentage


####################
# location settings
####################

gsettings set org.gnome.system.location enabled false # Disable geoloation services


##################
# mutter settings
##################

gsettings set org.gnome.mutter dynamic-workspaces false # Workspaces are managed dinamically
gsettings set org.gnome.mutter edge-tiling true # Enable edge tiling when dropping windows on screen deges


#######################
# peripherals settings
#######################

# Mouse
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true

# touchpad
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
gsettings set org.gnome.desktop.peripherals.touchpad two-finger-scrolling-enabled true


###################
# session settings
###################

gsettings set org.gnome.desktop.session idle-delay 900 # Time before session is considered idle


#################
# wm preferences
#################

# Action on title bar actions
gsettings set org.gnome.desktop.wm.preferences action-double-click-titlebar "toggle-maximize"
gsettings set org.gnome.desktop.wm.preferences action-middle-click-titlebar "none"
gsettings set org.gnome.desktop.wm.preferences action-right-click-titlebar "menu"

gsettings set org.gnome.desktop.wm.preferences audible-bell true # System bell is audible

gsettings set org.gnome.desktop.wm.preferences auto-raise false # Automatically raises the focused window
gsettings set org.gnome.desktop.wm.preferences auto-raise-delay 500 # Delay in milliseconds for the auto raise option

gsettings set org.gnome.desktop.wm.preferences button-layout "appmenu:close" # Arrangement of buttons on the tittlebar

gsettings set org.gnome.desktop.wm.preferences disable-workarounds false # Disable misfeatures that are required by old or broken applications

gsettings set org.gnome.desktop.wm.preferences focus-mode  "click" # Window focus mode
gsettings set org.gnome.desktop.wm.preferences focus-new-windows "smart" # Control how new windows get focus

gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier "<Super>" # Modifier to use for modified window click actions

gsettings set org.gnome.desktop.wm.preferences num-workspaces "9" # Number of workspaces

gsettings set org.gnome.desktop.wm.preferences raise-on-click true # Whether windows should be raised when their client area is clicked

gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true # Whether to resize with the right button

gsettings set org.gnome.desktop.wm.preferences theme "Adwaita" # Current theme

gsettings set org.gnome.desktop.wm.preferences titlebar-font "Cantarell Bold 11" # Window title font
gsettings set org.gnome.desktop.wm.preferences titlebar-uses-system-font true # Use standard system font in window titles

gsettings set org.gnome.desktop.wm.preferences visual-bell false # Enable Visual Bell
gsettings set org.gnome.desktop.wm.preferences visual-bell-type "fullscreen-flash" # Visual Bell type

gsettings set org.gnome.desktop.wm.preferences workspace-names "[]" # The names of the workspaces


#####################
# mutter keybindings
#####################

gsettings set org.gnome.mutter.keybindings rotate-monitor "['XF86RotateWindows']" # Rotates the built-in monitor configuration
gsettings set org.gnome.mutter.keybindings switch-monitor "['<Super>p', 'XF86Display']" # Switch monitor configurations

gsettings set org.gnome.mutter.keybindings toggle-tiled-left "['<Super>U']" # View split on left
gsettings set org.gnome.mutter.keybindings toggle-tiled-right "['<Super>I']" # View split on right


####################
# shell keybindings
####################

gsettings set org.gnome.shell.keybindings focus-active-notification "['<Super>n']" # Keybinding to focus the active notification

gsettings set org.gnome.shell.keybindings open-application-menu "['<Super>F10']" # Keybinding to open the application menu

gsettings set org.gnome.shell.keybindings screenshot "['<Shift>Print']" # Take a screenshot
gsettings set org.gnome.shell.keybindings screenshot-window "['<Alt>Print']" # Take a screenshot of a window
gsettings set org.gnome.shell.keybindings show-screenshot-ui "['Print']" # Take a screenshot interactively

gsettings set org.gnome.shell.keybindings show-screen-recording-ui "['<Ctrl><Shift><Alt>R']" # Record a screencast interactively

# Shift between overview states
gsettings set org.gnome.shell.keybindings shift-overview-down "['<Super><Alt>Down']"
gsettings set org.gnome.shell.keybindings shift-overview-up "['<Super><Alt>Up']"

# Switch to application
gsettings set org.gnome.shell.keybindings switch-to-application-1 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-2 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-3 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-4 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-5 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-6 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-7 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-8 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-9 "[]"

gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>a']" # open the "Show Applications" view
gsettings set org.gnome.shell.keybindings toggle-message-tray "['<Super>v']" # Toggle the visibility of the notification list
gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>s']" # Open the overview


######################
# wayland keybindings
######################

gsettings set org.gnome.mutter.wayland.keybindings restore-shortcuts "['<Super><Shift>Escape']" # Re-enable shortcuts

# Switch to VT
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-1 "['<Primary><Alt>F1']"
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-2 "['<Primary><Alt>F2']"
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-3 "['<Primary><Alt>F3']"
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-4 "['<Primary><Alt>F4']"
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-5 "['<Primary><Alt>F5']"
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-6 "['<Primary><Alt>F6']"
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-7 "['<Primary><Alt>F7']"
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-8 "['<Primary><Alt>F8']"
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-9 "['<Primary><Alt>F9']"
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-10 "['<Primary><Alt>F10']"
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-11 "['<Primary><Alt>F11']"
gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-12 "['<Primary><Alt>F12']"


#################
# wm keybindings
#################

# Clear pre-defined shortcuts
# schema="org.gnome.desktop.wm.keybindings"
# for key in $(gsettings list-keys $schema)
# do
#     if [[ $(gsettings range $schema $key) == "type as" ]]; then
#         gsettings set $schema $key "@as []"
#     fi
# done

gsettings set org.gnome.desktop.wm.keybindings activate-window-menu "['<Alt>space']" # Activate menu window

gsettings set org.gnome.desktop.wm.keybindings always-on-top "[]" # Toggle window to be always on top

gsettings set org.gnome.desktop.wm.keybindings begin-move "[]" # Move window
gsettings set org.gnome.desktop.wm.keybindings begin-resize "[]" # Resize window

gsettings set org.gnome.desktop.wm.keybindings close "['<Super><Shift>W']" # Close window

gsettings set org.gnome.desktop.wm.keybindings cycle-group "[]" # Switch windows of an app directly
gsettings set org.gnome.desktop.wm.keybindings cycle-group-backward "[]" # Reverse switch windows of an app directly
gsettings set org.gnome.desktop.wm.keybindings cycle-panels "[]" # Switch system controls directly
gsettings set org.gnome.desktop.wm.keybindings cycle-panels-backward "[]" # Reverse switch system controls directly
gsettings set org.gnome.desktop.wm.keybindings cycle-windows "[]" # Switch windows directly
gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "[]" # Reverse switch windows directly

gsettings set org.gnome.desktop.wm.keybindings lower "[]" # Lower window below other windows

gsettings set org.gnome.desktop.wm.keybindings maximize "[]" # Maximize window
gsettings set org.gnome.desktop.wm.keybindings maximize-horizontally "[]" # Maximize window horizontally
gsettings set org.gnome.desktop.wm.keybindings maximize-vertically "[]" # Maximize window vertically

gsettings set org.gnome.desktop.wm.keybindings minimize "[]" # Minimize window

gsettings set org.gnome.desktop.wm.keybindings move-to-center "[]" # Move window to center of screen
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-ne "[]" # Move window to top right corner
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-nw "[]" # Move window to top left corner
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-se "[]" # Move window to bottom right corner
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-sw "[]" # Move window to bottom left corner
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-down "[]" # Move window to the next monitor below
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-left "[]" # Move window to the next monitor on the left
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-right "[]" # Move window to the next monitor on the right
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-up "[]" # Move window to the next monitor above
gsettings set org.gnome.desktop.wm.keybindings move-to-side-e "[]" # Move window to right side of screen
gsettings set org.gnome.desktop.wm.keybindings move-to-side-n "[]" # Move window to top edge of screen
gsettings set org.gnome.desktop.wm.keybindings move-to-side-s "[]" # Move window to bottom edge of screen
gsettings set org.gnome.desktop.wm.keybindings move-to-side-w "[]" # Move window to left side of screen

# Move window to workspace
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Super><Shift>1']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Super><Shift>2']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Super><Shift>3']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Super><Shift>4']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 "['<Super><Shift>5']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 "['<Super><Shift>6']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7 "['<Super><Shift>7']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8 "['<Super><Shift>8']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9 "['<Super><Shift>9']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-11 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-12 "[]"

gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Super><Shift>J']" # Move window one workspace down
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-last "[]" # Move window to last workspace
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "['<Super><Shift>H']" # Move window one workspace to the left
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Super><Shift>L']" # Move window one workspace to the right
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['<Super><Shift>K']" # Move window one workspace up

gsettings set org.gnome.desktop.wm.keybindings panel-run-dialog "[]" #Show the run command prompt

gsettings set org.gnome.desktop.wm.keybindings raise "[]" # Raise window above other windows
gsettings set org.gnome.desktop.wm.keybindings raise-or-lower "[]" # Raise window if covered, otherwise lower it

gsettings set org.gnome.desktop.wm.keybindings show-desktop "[]" # Hide all normal windows

gsettings set org.gnome.desktop.wm.keybindings switch-applications "['<Super>Tab']" # Switch applications
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "['<Super><Shift>Tab']" # Reverse switch applications
gsettings set org.gnome.desktop.wm.keybindings switch-group "['<Super>Above_Tab']" # Switch windows of an application
gsettings set org.gnome.desktop.wm.keybindings switch-group-backward "['<Super><Shift>Above_Tab']" # Reverse switch windows of an application
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "[]" # Switch input source
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "[]" # Switch input source backward
gsettings set org.gnome.desktop.wm.keybindings switch-panels "[]" # Switch system controls
gsettings set org.gnome.desktop.wm.keybindings switch-panels-backward "[]" # Reverse switch system controls

# Switch to workspace
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Super>1']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Super>2']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Super>3']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Super>4']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Super>5']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "['<Super>6']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 "['<Super>7']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 "['<Super>8']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 "['<Super>9']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 "['<Super>9']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-11 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-12 "[]"

gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Super>J']" # Switch to workspace below
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-last "[]" # Switch to last workspace
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Super>H']" # Switch to workspace left
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Super>L']" # Switch to workspace right
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Super>K']" # Switch to workspace above

gsettings set org.gnome.desktop.wm.keybindings switch-windows "[]" # Switch windows
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "[]" # Reverse switch windows

gsettings set org.gnome.desktop.wm.keybindings toggle-above "[]" # Toggle window always appearing on top
gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Super>F11']" # Toggle fullscreen mode
gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Super>M']" # Toggle maximization state
gsettings set org.gnome.desktop.wm.keybindings toggle-on-all-workspaces "[]" # Toggle window on all workspaces or one

gsettings set org.gnome.desktop.wm.keybindings unmaximize "[]" # Restore window


#############################
# settings-daemon media-keys
#############################

gsettings set org.gnome.settings-daemon.plugins.media-keys email "['<Super>E']" # Launch email client
gsettings set org.gnome.settings-daemon.plugins.media-keys help "['']" # Launch help browser
gsettings set org.gnome.settings-daemon.plugins.media-keys media "['']" # Launch media player
gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "['<Super>Escape']" # Lock Screen
gsettings set org.gnome.settings-daemon.plugins.media-keys www "['<Super>B']" # Launch web browser

### Add custom keybindings

# Custom keybindings path list
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/']"

# Open Terminal
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Super>Return'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'kitty'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Launch Terminal'

# Open VsCode (just a pratical example)
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding '<Super>F12'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command 'code'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name 'Launch VsCode'
