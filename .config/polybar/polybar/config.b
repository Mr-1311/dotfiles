[bar/top]
monitor = eDP-1
width = 100%
height = 19
;override-redirect = true

background = #2d3436
foreground = #aaaaaa

line-color = ${bar/bottom.background}
line-size = 16

spacing = 2
padding-right = 3
module-margin = 1

font-0 = NotoSans-Regular:size=11;2
font-1 = MaterialIcons:size=11;2
font-2 = Termsynu:size=8:antialias=false;-2
font-3 = FontAwesome:size=11;2

border-bottom-size = 1
border-bottom-color = #2980b9

modules-left =  close maximize minify cpu sep memory sep mpd
modules-center = ewmh
modules-right = volume sep backlight sep battery sep xkeyboard sep date 

tray-position = right
tray-padding = 2

[bar/bottom]
monitor = eDP-1
bottom = true
width = 18%
height = 25

override-redirect = true

;background = ${bar/top.background}
background = #2f343f
foreground = ${bar/top.foreground}

line-color = ${bar/top.background}
line-size = 2

spacing = 3
padding-right = 4
module-margin-left = 0
module-margin-right = 6

font-0 = NotoSans-Regular:size=11;0
font-1 = unifont:size=10;-3
font-2 = FontAwesome:size=10;-2
font-3 = NotoSans-Regular:size=10;-1
font-4 = MaterialIcons:size=10;-1
font-5 = Termsynu:size=10:antialias=false;0

modules-left = cpuBot memoryBot

[module/backlight]
type = internal/xbacklight
;format = <ramp> <bar>

format = <ramp> <label>
label = %{F#ffffff}%percentage%%

ramp-0 = 
ramp-1 = 
ramp-2 = 

[module/battery]
type = internal/battery
full-at = 98

format-charging = <animation-charging> %{F#ffffff}<label-charging>
format-discharging = <ramp-capacity> %{F#ffffff}<label-discharging>
format-full = %{F#3498db}<ramp-capacity> %{F#3498db}<label-full>

ramp-capacity-0 = 
ramp-capacity-0-foreground = #f53c3c
ramp-capacity-1 = 
ramp-capacity-1-foreground = #ffa900
ramp-capacity-2 = 
ramp-capacity-3 = 
ramp-capacity-4 = 

bar-capacity-width = 10
bar-capacity-format = %{+u}%{+o}%fill%%empty%%{-u}%{-o}
bar-capacity-fill = █
bar-capacity-fill-foreground = #ddffffff
bar-capacity-fill-font = 3
bar-capacity-empty = █
bar-capacity-empty-font = 3
bar-capacity-empty-foreground = #44ffffff

animation-charging-0 = 
animation-charging-1 = 
animation-charging-2 = 
animation-charging-3 = 
animation-charging-4 = 
animation-charging-framerate = 750

[module/cpu]
type = internal/cpu
interval = 2
format = <label>
; label = CPU
label = CPU %{F#ffffff}%percentage%%

[module/date]
type = internal/date
date =    %%{F#fff}%Y-%m-%d%%{F-}  %%{F#fff}%H:%M%%{F-}
date-alt = %%{F#fff}%A, %d %B %Y  %%{F#fff}%H:%M%%{F#666}:%%{F#fba922}%S%%{F-}

[module/memory]
type = internal/memory
;format = <label> <bar-used>
; label = RAM
format = <label> 
label = RAM %{F#ffffff}%percentage_used%%

bar-used-width = 10
bar-used-foreground-0 = #aaff77
bar-used-foreground-1 = #aaff77
bar-used-foreground-2 = #fba922
bar-used-foreground-3 = #ff5555
bar-used-indicator = |
bar-used-indicator-font = 6
bar-used-indicator-foreground = #ff
bar-used-fill = ─
bar-used-fill-font = 6
bar-used-empty = ─
bar-used-empty-font = 6
bar-used-empty-foreground = #444444

[module/volume]
type = internal/volume
speaker-mixer = Speaker
headphone-mixer = Headphone
headphone-id = 9

format-volume = <ramp-volume> %{F#ffffff}<label-volume>
label-muted =   muted
label-muted-foreground = #66

ramp-volume-0 = 
ramp-volume-1 = 
ramp-volume-2 = 
ramp-volume-3 = 

[module/clock]
type = internal/date
interval = 2
date = %%{F#999}%Y-%m-%d%%{F-}  %%{F#fff}%H:%M%%{F-}

[module/xkeyboard]
type = internal/xkeyboard

format = <label-layout>

label-layout =  %{F#fff}%layout% 

[module/ewmh]
type = internal/xworkspaces

; Only show workspaces defined on the same output as the bar
;
; Useful if you want to show monitor specific workspaces
; on different bars
;
; Default: false
pin-workspaces = true

; Create click handler used to focus desktop
; Default: true
enable-click = true

; Create scroll handlers used to cycle desktops
; Default: true
enable-scroll = false

; icon-[0-9]+ = <desktop-name>;<icon>
; NOTE: The desktop name needs to match the name configured by the WM
; You can get a list of the defined desktops using:
; $ xprop -root _NET_DESKTOP_NAMES
;icon-0 = desktop 1;
;icon-1 = desktop 2;
;icon-2 = desktop 3;
;icon-3 = desktop 4;
icon-default = 

; Available tags:
;   <label-monitor>
;   <label-state> - gets replaced with <label-(active|urgent|occupied|empty)>
; Default: <label-state>
format = <label-state>

; Available tokens:
;   %name%
; Default: %name%
label-monitor = %name%

; Available tokens:
;   %name%
;   %icon%
;   %index%
; Default: %icon%  %name%
label-active = %icon%
label-active-padding = 1
label-active-foreground = #ffffff
;label-active-background = #3f3f3f
;label-active-underline = #fba922

; Available tokens:
;   %name%
;   %icon%
;   %index%
; Default: %icon%  %name%
label-occupied = %icon%
;label-occupied-padding = 7
label-occupied-underline = #555555

; Available tokens:
;   %name%
;   %icon%
;   %index%
; Default: %icon%  %name%
label-urgent = %icon%
;label-urgent-padding = 7
label-urgent-foreground = #000000
label-urgent-background = #bd2c40
label-urgent-underline = #9b0a20

; Available tokens:
;   %name%
;   %icon%
;   %index%
; Default: %icon%  %name%
label-empty = %icon%
label-empty-padding = 1
label-empty-foreground = #55

[module/close]
type = custom/script
exec = echo ""
click-left = ~/.config/polybar/close.sh
;click-right = 
click-middle = poweroff
format-padding = 1
format-foreground = #c0392b


[module/maximize]
type = custom/script
exec = echo ""
click-left = ~/.config/polybar/maximize.sh
;click-right = 
click-middle = reboot
format-padding = 1
format-foreground = #27ae60

[module/minify]
type = custom/script
exec = echo ""
click-left =  ~/.config/polybar/minify.sh
;click-right = 
click-middle = betterlockscreen -s
format-padding = 1
format-foreground = #f39c12

[module/sep]
type = custom/script
exec = echo "/"


[module/mpd]
type = internal/mpd
format-online = <icon-prev> <toggle> <icon-next> <label-song>

label-song = %title%

icon-prev = 
;icon-stop = 
icon-play = 
icon-pause = 
icon-next = 

label-song-maxlen = 35
label-song-ellipsis = true

; vim:ft=dosini
;-----------------------BOT-----------------------------

[module/cpuBot]
type = internal/cpu
interval = 2
format = <label>
;label = CPU
label = CPU %{F#fba922}%percentage%%



[module/memoryBot]
type = internal/memory
format = <label> <bar-used>
label = RAM %{F#fba922}%percentage_used%%
;format = <label> 
;label = RAM %{F#fba922}%gb_used% / %gb_free% : %percentage_used%%

bar-used-width = 13
bar-used-foreground-0 = #aaff77
bar-used-foreground-1 = #aaff77
bar-used-foreground-2 = #fba922
bar-used-foreground-3 = #ff5555
bar-used-indicator = |
bar-used-indicator-font = 6
bar-used-indicator-foreground = #ff
bar-used-fill = ─
bar-used-fill-font = 6
bar-used-empty = ─
bar-used-empty-font = 6
bar-used-empty-foreground = #666666
