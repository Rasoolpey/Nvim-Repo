This Nvim customization is based on LazyVim. \
it includes plugins for Latex and Obsidian and github copilot.\
document viewer for latex files is Zathura. \

## Zathura setting
in the directory of `~/.config/zathura/zathurarc` add the following lines:
```
set notification-error-bg       "rgba(50,48,47,1)"     # bg
set notification-error-fg       "rgba(251,73,52,1)"    # bright:red
set notification-warning-bg     "rgba(50,48,47,1)"     # bg
set notification-warning-fg     "rgba(250,189,47,1)"   # bright:yellow
set notification-bg             "rgba(50,48,47,1)"     # bg
set notification-fg             "rgba(184,187,38,1)"   # bright:green

set completion-bg               "rgba(80,73,69,1)"     # bg2
set completion-fg               "rgba(235,219,178,1)"  # fg
set completion-group-bg         "rgba(60,56,54,1)"     # bg1
set completion-group-fg         "rgba(146,131,116,1)"  # gray
set completion-highlight-bg     "rgba(131,165,152,1)"  # bright:blue
set completion-highlight-fg     "rgba(80,73,69,1)"     # bg2

# Define the color in index mode
set index-bg                    "rgba(80,73,69,1)"     # bg2
set index-fg                    "rgba(235,219,178,1)"  # fg
set index-active-bg             "rgba(131,165,152,1)"  # bright:blue
set index-active-fg             "rgba(80,73,69,1)"     # bg2

set inputbar-bg                 "rgba(50,48,47,1)"     # bg
set inputbar-fg                 "rgba(235,219,178,1)"  # fg

set statusbar-bg                "rgba(80,73,69,1)"     # bg2
set statusbar-fg                "rgba(235,219,178,1)"  # fg

set highlight-color             "rgba(250,189,47,0.5)" # bright:yellow
set highlight-active-color      "rgba(254,128,25,0.5)" # bright:orange

set default-bg                  "rgba(50,48,47,1)"     # bg
set default-fg                  "rgba(235,219,178,1)"  # fg
set render-loading              true
set render-loading-bg           "rgba(50,48,47,1)"     # bg
set render-loading-fg           "rgba(235,219,178,1)"  # fg

# Recolor book content's color
set recolor-lightcolor          "rgba(50,48,47,1)"     # bg
set recolor-darkcolor           "rgba(235,219,178,1)"  # fg
set recolor                     "true"
set recolor-keephue             "true"                 # keep original color
```

More information can be found in the [eastack/zathura-gruvbox](https://github.com/eastack/zathura-gruvbox) repository.
```

