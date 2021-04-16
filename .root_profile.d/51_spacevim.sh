

if [ ! -d "/opt/.SpaceVim" ];then
  mkdir /opt/.SpaceVim
  curl -sLf https://spacevim.org/install.sh | bash
fi

if [ ! -d "/opt/.config/.SpaceVim.d" ]; then
  mkdir -p /opt/.config/.SpaceVim.d
fi

if [ ! -f "/opt/.config/.SpaceVim.d/init.toml" ]; then
  touch /opt/.config/.SpaceVim.d/init.toml

echo '
# This is a basic configuration example for SpaceVim

# All SpaceVim options are below [options] snippet
[options]
    # set spacevim theme. by default colorscheme layer is not loaded,
    # if you want to use more colorscheme, please load the colorscheme
    # layer, the value of this option is a string.
    colorscheme = "gruvbox"
    colorscheme_bg = "dark"
    # Disable guicolors in basic mode, many terminal do not support 24bit
    # true colors, the type of the value is boolean, true or false.
    enable_guicolors = true
    # Disable statusline separator, if you want to use other value, please
    # install nerd fonts
    statusline_separator = "nil"
    statusline_separator = "bar"
    buffer_index_type = 4
    # Display file type icon on the tabline, If you do not have nerd fonts
    # installed, please change the value to false
    enable_tabline_filetype_icon = true
    # Display current mode text on statusline, by default It is disabled,
    # only color will be changed when switch modes.
    enable_statusline_mode = false

# Enable autocomplete layer
[[layers]]
    name = "autocomplete"
    auto-completion-return-key-behavior = "complete"
    auto-completion-tab-key-behavior = "cycle"

[[layers]]
    name = "shell"
    default_position = "top"
    default_height = 30

# This is an example for adding custom plugins lilydjwg/colorizer
[[custom_plugins]]
    name = "lilydjwg/colorizer"
    merged = false
' > /opt/.config/.SpaceVim.d/init.toml

fi
