
do
  local cmds =
  {
	"setxkbmap -variant nodeadkeys",
  	"pgrep -u $USER -x nm-applet > /dev/null || (nm-applet &)",
    "xinput --set-prop \"pointer:ROCCAT ROCCAT Kone XTD\" \"libinput Accel Speed\" -0.94",
	"start-pulseaudio-x11"
  }

  for _,i in pairs(cmds) do
    awful.spawn.with_shell(i)
  end
end
