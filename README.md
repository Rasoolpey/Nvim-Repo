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




## linking PDF files to markdown veiwer the `iamcco/markdown-preview.nvim` plugin.
in the `route.js` you need to add these few lines to make sure that it can find the linked pdf files correctly. the `route.js` file is located in the `~/.local/share/nvim/lazy/markdown-preview.nvim/app` directory.
```javascript
// Preamble   
const fs = require('fs');
const path = require('path');
const logger = require('./lib/util/logger')('app/routes');

const routes = [];

// Simplified handler for serving any file
const use = (route) => {
  routes.unshift((req, res, next) => () => route(req, res, next));
};


// down in the bottom of the file 
// Serve files dynamically
use((req, res, next) => {
  const baseDirectory = process.env.MKDP_BASE_DIRECTORY || path.resolve(__dirname, '../../');
  const requestedPath = path.join(baseDirectory, req.asPath);

  if (fs.existsSync(requestedPath) && !fs.statSync(requestedPath).isDirectory()) {
    const ext = path.extname(requestedPath).toLowerCase();

    // Set content-type dynamically
    const contentTypes = {
      '.pdf': 'application/pdf',
      '.md': 'text/markdown',
    };
    res.setHeader('content-type', contentTypes[ext] || 'application/octet-stream');

    return fs.createReadStream(requestedPath).pipe(res);
  }

  next(); // Continue if no file is found
});

// 404 handler
use((req, res) => {
  res.statusCode = 404;
  res.end(`404: File Not Found at ${req.asPath}`);
});

module.exports = (req, res, next) => {
  return routes.reduce((next, route) => route(req, res, next), next)();
};
```
## Image Importing key bindings:
`<leader>ip` is to import one picture 
`<leader>i11p` is to import image to a 1x1 grid
`<leader>i12p` is to import image to a 1x2 grid
`<leader>i13p` is to import image to a 1x3 grid
`<leader>i21` is to import image to a 2x1 grid
`<leader>i22` is to import image to a 2x2 grid
`<leader>i23` is to import image to a 2x3 grid
`<leader>i31` is to import image to a 3x1 grid
`<leader>i32` is to import image to a 3x2 grid
`<leader>i33` is to import image to a 3x3 grid

* > [!Note] it's recommended to add ![[image|size]] right after the </div> to make sure that it's obsidian compatible. 
