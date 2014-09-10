# Use all F1, F2, etc. keys as standard function keys
osascript << EOF
--Check if GUI Scripting is Enabled
tell application "System Events"
    if not UI elements enabled then
        set UI elements enabled to true
    end if
end tell

--Enable/Disable "Use all F1, F2, etc. keys as standard function keys" option in Keyboard & Mouse Preference pane and close System Preferences
tell application "System Events"
    tell application "System Preferences"
        reveal anchor "keyboardTab" of pane "com.apple.preference.keyboard"
    end tell
    click checkbox 1 of tab group 1 of window 1 of application process "System Preferences"
end tell
if application "System Preferences" is running then
    tell application "System Preferences" to quit
end if
EOF

# Use Caps Lock as Control
osascript << EOF
tell application "System Events"
    tell application "System Preferences"
        reveal anchor "keyboardTab" of pane "com.apple.preference.keyboard"
    end tell

    -- [STEP 2] set cl_key to the second dropdown of mod_keys
    tell window 1 of application process "System Preferences"
        click button "Modifier Keys…" of tab group 1

        tell sheet 1
            tell pop up button "Caps Lock (⇪) Key:"
                click
                delay 0.2
                click menu item "⌃ Control" of menu 1
                delay 0.2
            end tell
            click button "OK"
        end tell
    end tell
end tell

-- This is just to make sure it works, but may be unneccessary
if application "System Preferences" is running then
    tell application "System Preferences" to quit
end if
EOF
