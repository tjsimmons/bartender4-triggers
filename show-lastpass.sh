#!/bin/zsh
osascript << 'FIN'
tell application "System Events"
	repeat with theProcess in processes
		if not background only of theProcess then
			tell theProcess
				set isVisible to frontmost
				set processName to name
			end tell
			
			if processName is "Safari" then
				if isVisible then
					return true
				else
					return false
				end if
			end if
		end if
	end repeat
end tell
FIN
