Config
{ font = "xft:ProggyTiny:pixelsize=12"
  , fgColor = "#888888"
    , bgColor = "#2d2d2d"
    , position = TopSize L 100 16
    , commands = [ Run StdinReader
    , Run Date "<fc=#bbbbbb>%A %d, <fc=#ffffff>%H:%M</fc></fc>" "date" 30
    , Run MultiCpu ["-S", "on", "-t", "<total>"] 30
    , Run Memory ["-S", "on", "-t", "<usedratio>"] 30
    , Run DynNetwork ["-t", "<rx> / <tx>Kb/s"] 30
    , Run Battery ["-S", "on", "-t", "<left>"] 30
    , Run Com ".getvolume.sh" [] "vol" 10
    ]
    , template = "  %StdinReader% }{ <fc=#888888><fc=#6b2c74><icon=.xmonad/icons/down.xbm/></fc><fc=#88591b><icon=.xmonad/icons/up.xbm/></fc>  %dynnetwork%  <fc=#2c4b50><icon=.xmonad/icons/cpu.xbm/></fc> %multicpu%   <fc=#366136><icon=.xmonad/icons/mem.xbm/></fc> %memory%</fc>   <fc=#7c3131><icon=.xmonad/icons/battery.xbm/></fc> %battery% %vol%      %date%  "
}
